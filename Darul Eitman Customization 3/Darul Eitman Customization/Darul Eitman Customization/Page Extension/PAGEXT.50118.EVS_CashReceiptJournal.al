
pageextension 50118 EVS_CashReceiptJournal extends "Cash Receipt Journal"
{
    layout
    {
        modify(Amount)
        {
            trigger OnAfterValidate()
            var
                Pag_CustFinanceReceipt: Page EVS_CUSTFINANCECASHRECEIPT;
                tbl_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
                UpdateRemainingAmntConsumerFinance: Record EVS_Consumer_Finance;
                tbl_Insert_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
                tbl_Update_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
                tbl_Update_RAmtApply_ConsumerFinance: Record EVS_Consumer_Finance;
                tbl_consumerFinance: Record EVS_Consumer_Finance;
                Paid_Percent: Decimal;
                tbl_Dupication_ConsumerFinance: Record EVS_Consumer_Finance;
                tbl_GenJournalLine: Record "Gen. Journal Line";
                counter: Integer;
            begin

                if (Rec."Document Type" = Rec."Document Type"::Payment) and (rec."Amount (LCY)" < 0)
                then begin
                    tbl_GenJournalLine.Init();
                    tbl_GenJournalLine.Reset();
                    tbl_GenJournalLine.Setrange(tbl_GenJournalLine."Document Type", "Gen. Journal Document Type"::Payment);
                    tbl_GenJournalLine.SetRange(tbl_GenJournalLine."Account No.", rec."Account No.");
                    if tbl_GenJournalLine.Find('-') then begin
                        counter := 0;
                        repeat begin
                            counter += 1;
                            if counter = 2 then begin
                                Message('Applies instalments window cannot open, Please post the previous transaction first.');
                                exit;
                            end;
                        end until tbl_GenJournalLine.Next() = 0;
                    end;
                    /// Remaining amount hamari field hey jo pehle 0 hogi to page agr pehle baar khul rha hey to remaining amount base amount chale jayege
                    UpdateRemainingAmountFirstTime();

                    tbl_consumerFinance.init();
                    tbl_consumerFinance.Reset();
                    tbl_consumerFinance.SetRange(tbl_consumerFinance."Account Code", rec."Account No.");
                    if tbl_consumerFinance.Find('-') then begin
                        tbl_consumerFinance.CalcSums("Payment Remaining Amount");
                        tbl_consumerFinance.ModifyAll("Payment Remaining Amount", abs(rec."Amount (LCY)"));
                        tbl_consumerFinance.ModifyAll("Cash Reciept Document No", rec."Document No.");
                        tbl_consumerFinance.ModifyAll("Payment Amount", abs(rec."Amount (LCY)"));
                    end;
                    tbl_Dupication_ConsumerFinance.Init();
                    tbl_Dupication_ConsumerFinance.Reset();
                    tbl_Dupication_ConsumerFinance.SetRange(tbl_Dupication_ConsumerFinance."Account Code", rec."Account No.");
                    tbl_Dupication_ConsumerFinance.SetRange("Fully Post", false);
                    tbl_Dupication_ConsumerFinance.SetFilter(tbl_Dupication_ConsumerFinance.Status, '<>%1', tbl_Dupication_ConsumerFinance.Status::H);
                    if tbl_Dupication_ConsumerFinance.Find('-') then begin
                        tbl_Dupication_ConsumerFinance.CalcSums("Allocated Amount");
                        if tbl_Dupication_ConsumerFinance."Allocated Amount" > 0 then begin
                            tbl_Update_EVS_ConsumerFinance.init();
                            tbl_Update_EVS_ConsumerFinance.Reset();
                            tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Account Code", tbl_Dupication_ConsumerFinance."Account Code");
                            tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Fully Post", false);
                            tbl_Update_EVS_ConsumerFinance.SetFilter(tbl_Update_EVS_ConsumerFinance.Status, '<>%1', tbl_Update_EVS_ConsumerFinance.Status::H);
                            tbl_Update_EVS_ConsumerFinance.SetFilter(tbl_Update_EVS_ConsumerFinance."Allocated Amount", '>%1', 0);
                            if tbl_Update_EVS_ConsumerFinance.Find('-') then begin
                                repeat begin
                                    tbl_Update_EVS_ConsumerFinance."Cash Receipt" := '';
                                    if tbl_Update_EVS_ConsumerFinance."Partially Post" = true then begin
                                        tbl_Update_EVS_ConsumerFinance.Status := tbl_Update_EVS_ConsumerFinance.Status::P;
                                    end else begin
                                        tbl_Update_EVS_ConsumerFinance.Status := tbl_Update_EVS_ConsumerFinance.Status::" ";
                                    end;
                                    tbl_Update_EVS_ConsumerFinance."Earnings Taken" := 0;
                                    tbl_Update_EVS_ConsumerFinance."Amount Paid" := 0;
                                    tbl_Update_EVS_ConsumerFinance."Remaining Amount" := tbl_Update_EVS_ConsumerFinance."Allocated Amount" + tbl_Update_EVS_ConsumerFinance."Remaining Amount";
                                    tbl_Update_EVS_ConsumerFinance."Allocated Amount" := 0;
                                    tbl_Update_EVS_ConsumerFinance.Modify();
                                end until tbl_Update_EVS_ConsumerFinance.Next() = 0;
                            end;
                            apply_payment();
                        end;
                        if tbl_Dupication_ConsumerFinance."Allocated Amount" = 0 then begin
                            apply_payment();
                        end;

                    end;

                    Pag_CustFinanceReceipt.GetCustNoFromSourcePage(Rec."Account No.", 0, Rec."Document No.", rec."Amount (LCY)");
                    Pag_CustFinanceReceipt.Run();
                end;
            end;
        }


    }
    actions
    {
        // Add changes to page actions 
        addlast("F&unctions")
        {
            action("Applies Installment")
            {
                Visible = true;
                ApplicationArea = All;
                Caption = 'Applies Installment';
                Image = Apply;
                ToolTip = 'Click to view installments for the customer.';
                trigger OnAction()
                var
                    Pg_AplliesInstallment: Page EVS_CUSTFINANCECASHRECEIPT;

                begin
                    Pg_AplliesInstallment.Editable(false);
                    //Pg_AplliesInstallment.RunModal();
                    if (Rec."Document Type" = Rec."Document Type"::Payment) and (rec."Account No." <> '') then begin
                        UpdateRemainingAmountFirstTime();
                        Pg_AplliesInstallment.GetCustNoFromSourcePage(Rec."Account No.", 0, Rec."Document No.", rec."Amount (LCY)");
                        Pg_AplliesInstallment.Run();
                    end;

                end;
            }
        }

    }

    local procedure UpdateRemainingAmountFirstTime()
    var
        myInt: Integer;
        UpdateRemainingAmntConsumerFinance: Record EVS_Consumer_Finance;
    begin
        UpdateRemainingAmntConsumerFinance.Init();
        UpdateRemainingAmntConsumerFinance.Reset();
        UpdateRemainingAmntConsumerFinance.SetRange(UpdateRemainingAmntConsumerFinance."Account Code", rec."Account No.");
        UpdateRemainingAmntConsumerFinance.SetRange(UpdateRemainingAmntConsumerFinance.Status, UpdateRemainingAmntConsumerFinance.Status::" ");
        UpdateRemainingAmntConsumerFinance.SetRange(UpdateRemainingAmntConsumerFinance."Remaining Amount", 0);
        if UpdateRemainingAmntConsumerFinance.Find('-') then begin
            repeat begin
                if UpdateRemainingAmntConsumerFinance."Remaining Amount" <> UpdateRemainingAmntConsumerFinance."Base Amount" then begin
                    UpdateRemainingAmntConsumerFinance."Remaining Amount" := UpdateRemainingAmntConsumerFinance."Base Amount";
                    UpdateRemainingAmntConsumerFinance.Modify();
                end;
            end until UpdateRemainingAmntConsumerFinance.next = 0;
        end;
    end;

    local procedure apply_payment()
    var
        Pag_CustFinanceReceipt: Page EVS_CUSTFINANCECASHRECEIPT;
        tbl_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
        tbl_Insert_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
        tbl_Update_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
        tbl_Update_RAmtApply_ConsumerFinance: Record EVS_Consumer_Finance;
        tbl_consumerFinance: Record EVS_Consumer_Finance;
        Paid_Percent: Decimal;
        tbl_Dupication_ConsumerFinance: Record EVS_Consumer_Finance;
    begin

        tbl_Insert_EVS_ConsumerFinance.init();
        tbl_Insert_EVS_ConsumerFinance.Reset();
        tbl_Insert_EVS_ConsumerFinance.SetRange(tbl_Insert_EVS_ConsumerFinance."Account Code", rec."Account No.");
        tbl_Insert_EVS_ConsumerFinance.Setrange(tbl_Insert_EVS_ConsumerFinance."Cash Receipt", '');
        tbl_Insert_EVS_ConsumerFinance.SetFilter(tbl_Insert_EVS_ConsumerFinance.Status, '<>%1', tbl_Insert_EVS_ConsumerFinance.Status::H);
        if tbl_Insert_EVS_ConsumerFinance.Find('-') then begin
            repeat begin
                Clear(Paid_Percent);
                if (tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount" > 0) and (tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount" >= tbl_Insert_EVS_ConsumerFinance."Remaining Amount") then begin
                    tbl_Update_EVS_ConsumerFinance.init();
                    tbl_Update_EVS_ConsumerFinance.Reset();
                    tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Account Code", tbl_Insert_EVS_ConsumerFinance."Account Code");
                    tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Contract No", tbl_Insert_EVS_ConsumerFinance."Contract No");
                    tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Sequence", tbl_Insert_EVS_ConsumerFinance."Sequence");
                    if tbl_Update_EVS_ConsumerFinance.Find('-') then begin
                        tbl_Update_EVS_ConsumerFinance."Allocated Amount" := tbl_Insert_EVS_ConsumerFinance."Remaining Amount";
                        tbl_Update_EVS_ConsumerFinance."Amount Paid" := tbl_Insert_EVS_ConsumerFinance."Base Amount";
                        tbl_Update_EVS_ConsumerFinance.Status := tbl_Insert_EVS_ConsumerFinance.Status::X;
                        tbl_Update_EVS_ConsumerFinance."Earnings Taken" := tbl_Insert_EVS_ConsumerFinance."Deferred Earnings";
                        tbl_Update_EVS_ConsumerFinance."Cash Receipt" := tbl_Insert_EVS_ConsumerFinance."Cash Reciept Document No";
                        tbl_Update_EVS_ConsumerFinance."Remaining Amount" := 0;
                        tbl_Update_EVS_ConsumerFinance.Modify();

                        tbl_Update_RAmtApply_ConsumerFinance.init();
                        tbl_Update_RAmtApply_ConsumerFinance.Reset();
                        tbl_Update_RAmtApply_ConsumerFinance.SetRange(tbl_Update_RAmtApply_ConsumerFinance."Account Code", tbl_Insert_EVS_ConsumerFinance."Account Code");
                        tbl_Update_RAmtApply_ConsumerFinance.SetRange(tbl_Update_RAmtApply_ConsumerFinance."Contract No", tbl_Insert_EVS_ConsumerFinance."Contract No");
                        if tbl_Update_RAmtApply_ConsumerFinance.Find('-') then begin
                            tbl_Update_RAmtApply_ConsumerFinance.ModifyAll("Payment Remaining Amount", tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount" - tbl_Insert_EVS_ConsumerFinance."Remaining Amount");
                        end
                    end
                end
                else if (tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount" < tbl_Insert_EVS_ConsumerFinance."Remaining Amount") and (tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount" > 0) then begin
                    tbl_Update_EVS_ConsumerFinance.init();
                    tbl_Update_EVS_ConsumerFinance.Reset();
                    tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Account Code", tbl_Insert_EVS_ConsumerFinance."Account Code");
                    tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Contract No", tbl_Insert_EVS_ConsumerFinance."Contract No");
                    tbl_Update_EVS_ConsumerFinance.SetRange(tbl_Update_EVS_ConsumerFinance."Sequence", tbl_Insert_EVS_ConsumerFinance."Sequence");
                    if tbl_Update_EVS_ConsumerFinance.Find('-') then begin
                        tbl_Update_EVS_ConsumerFinance."Allocated Amount" := tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount";
                        tbl_Update_EVS_ConsumerFinance.Status := tbl_Insert_EVS_ConsumerFinance.Status::P;
                        tbl_Update_EVS_ConsumerFinance."Remaining Amount" := tbl_Insert_EVS_ConsumerFinance."Remaining Amount" - tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount";
                        tbl_Update_EVS_ConsumerFinance."Cash Receipt" := '';
                        tbl_Update_EVS_ConsumerFinance."Earnings Taken" := 0;
                        tbl_Update_EVS_ConsumerFinance."Amount Paid" := tbl_Update_EVS_ConsumerFinance."Allocated Amount";
                        tbl_Update_EVS_ConsumerFinance.Modify();

                        tbl_Update_RAmtApply_ConsumerFinance.init();
                        tbl_Update_RAmtApply_ConsumerFinance.Reset();
                        tbl_Update_RAmtApply_ConsumerFinance.SetRange(tbl_Update_RAmtApply_ConsumerFinance."Account Code", tbl_Insert_EVS_ConsumerFinance."Account Code");
                        tbl_Update_RAmtApply_ConsumerFinance.SetRange(tbl_Update_RAmtApply_ConsumerFinance."Contract No", tbl_Insert_EVS_ConsumerFinance."Contract No");
                        if tbl_Update_RAmtApply_ConsumerFinance.Find('-') then begin
                            tbl_Update_RAmtApply_ConsumerFinance.ModifyAll("Payment Remaining Amount", 0);
                        end;
                        break
                    end
                end
                else if tbl_Insert_EVS_ConsumerFinance."Payment Remaining Amount" = 0 then begin
                    break
                end;
            end until tbl_Insert_EVS_ConsumerFinance.Next() = 0;
        end;
    end;




    var
        myInt: Integer;
}