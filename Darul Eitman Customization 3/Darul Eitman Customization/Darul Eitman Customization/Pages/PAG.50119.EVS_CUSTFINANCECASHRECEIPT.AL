page 50119 EVS_CUSTFINANCECASHRECEIPT
{
    PageType = Worksheet;
    SourceTable = EVS_Consumer_Finance;
    //Editable = false;
    // CardPageId = 50008;
    Caption = 'Installments Details';
    SourceTableView = where("Fully Post" = const(false));
    layout
    {
        area(Content)
        {
            group(General)

            {
                field("Account Code"; Rec."Account Code")
                {
                    Caption = 'Account Code';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Document No."; Rec."Cash Reciept Document No")
                {
                    Caption = 'Document No.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Payment Amount"; Rec."Payment Amount")
                {
                    Caption = 'Payment Amount';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Payment Remaining Amount"; Rec."Payment Remaining Amount")
                {
                    Caption = 'Payment Remaining Amount';
                    ApplicationArea = All;
                    Editable = false;
                }


            }
            repeater(GroupName)
            {
                field(Sequence; Rec.Sequence)
                {
                    Caption = 'Sequence';
                    ApplicationArea = All;
                }
                field("Cash Receipt"; Rec."Cash Receipt")
                {
                    Caption = 'Cash Receipt';
                    ApplicationArea = All;
                }
                field("Base Amount"; Rec."Base Amount")
                {
                    Caption = 'Base Amount';
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    Caption = 'Due Date';
                    ApplicationArea = All;
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                    Caption = 'Amount Paid';
                    ApplicationArea = All;
                }
                field("Remaing Amount"; Rec."Remaining Amount")
                {
                    Caption = 'Remaining Amount';
                    ApplicationArea = All;
                }
                // field("Currency Paid"; Rec."Currency Paid")
                // {
                //     Caption = 'Currency Paid';
                //     ApplicationArea = All;
                // }
                field("Deferred Earnings"; rec."Deferred Earnings")
                {
                    Caption = 'Deferred Earnings';
                    ApplicationArea = All;
                }

                field("Earnings Taken"; Rec."Earnings Taken")
                {
                    Caption = 'Earnings Taken';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Status';
                    ApplicationArea = All;
                }
                // field("Allocated Amount"; Rec."Allocated Amount")
                // {
                //     Caption = 'Allocated Amount';
                //     ApplicationArea = All;
                // }
                // field(Hide; Rec.Hide)B
                // {
                //     // ApplicationArea = All;
                //     Caption = 'Post';
                // }
                // field(CheckBox; Rec.CheckBox)
                // {
                //     Caption = 'Check Box';
                //     //ApplicationArea = All;
                //     trigger OnValidate()
                //     var
                //         tbl_CustLedgerEntry: Record "Cust. Ledger Entry";
                //         tbl_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
                //         Remaining_Amount: Decimal;
                //         Paid_Percent: Decimal;
                //     begin
                //         if rec.CheckBox = true then begin
                //             Clear(Remaining_Amount);
                //             Clear(Paid_Percent);
                //             tbl_EVS_ConsumerFinance.init();
                //             tbl_EVS_ConsumerFinance.Reset();
                //             tbl_EVS_ConsumerFinance.SetRange("Cash Receipt", rec."Cash Reciept Document No");
                //             if tbl_EVS_ConsumerFinance.Find('-') then begin
                //                 tbl_CustLedgerEntry.init();
                //                 tbl_CustLedgerEntry.Reset();
                //                 tbl_CustLedgerEntry.SetRange("Document No.", rec."Cash Reciept Document No");
                //                 if tbl_CustLedgerEntry.Find('-') then begin
                //                     if tbl_CustLedgerEntry.Find('-') then begin
                //                         repeat begin
                //                             if rec."Base Amount" >= rec."Amount Paid" then begin
                //                                 rec."Amount Paid" := rec."Base Amount";
                //                                 rec.Status := rec.Status::X;
                //                                 rec."Earnings Taken" := rec."Deferred Earnings";
                //                                 rec."Cash Receipt" := "Cash Reciept Document No";
                //                                 rec."Remaining Amount" := rec."Base Amount" - rec."Amount Paid";
                //                                 tbl_CustLedgerEntry."Amount (LCY)" -= tbl_CustLedgerEntry."Amount (LCY)";
                //                             end;
                //                             if tbl_EVS_ConsumerFinance."Base Amount" < tbl_EVS_ConsumerFinance."Amount Paid" then begin
                //                                 rec."Remaining Amount" := Rec."Base Amount" - rec."Amount Paid";
                //                                 rec."Amount Paid" := 0;
                //                                 rec.Status := rec.Status::P;
                //                                 rec."Currency Paid" := 0;
                //                             end;
                //                         end until tbl_EVS_ConsumerFinance.Next() = 0;
                //                     end;
                //                 end;
                //             end
                //             else begin
                //                 Rec."Cash Receipt" := Rec."Cash Reciept Document No";
                //                 tbl_CustLedgerEntry.init();
                //                 tbl_CustLedgerEntry.Reset();
                //                 tbl_CustLedgerEntry.SetRange("Document No.", rec."Cash Reciept Document No");
                //                 if tbl_CustLedgerEntry.Find('-') then begin
                //                     tbl_CustLedgerEntry.CalcFields("Amount (LCY)");
                //                     if abs(tbl_CustLedgerEntry."Amount (LCY)") >= rec."Base Amount" then begin
                //                         rec."Amount Paid" := rec."Base Amount";
                //                         rec.Status := rec.Status::X;
                //                         rec."Earnings Taken" := rec."Deferred Earnings";
                //                         rec."Remaining Amount" := Rec."Base Amount" - rec."Amount Paid";
                //                     end
                //                     else begin
                //                         rec."Amount Paid" := tbl_CustLedgerEntry."Amount (LCY)";
                //                         rec.Status := rec.Status::P;
                //                         Paid_Percent := rec."Deferred Earnings" * 100 / rec."Base Amount";
                //                         rec."Earnings Taken" := Abs(tbl_CustLedgerEntry."Amount (LCY)") * Paid_Percent / 100;
                //                         rec."Remaining Amount" := Rec."Base Amount" - rec."Amount Paid";
                //                     end;
                //                 end;
                //             end;
                //             Rec.Modify();
                //         end else begin
                //             Rec."Cash Receipt" := '';
                //             Rec.Status := rec.Status::" ";
                //             rec."Earnings Taken" := 0;
                //             rec."Amount Paid" := 0;
                //             rec."Allocated Amount" := 0;
                //             rec."Remaining Amount" := rec."Base Amount";
                //             Rec.Modify();
                //         end;
                //     end;
                // }
            }

        }
    }
    actions
    {

        area(Processing)
        {
            action("Hold")
            {
                ApplicationArea = all;
                Caption = 'Hold';
                Image = SelectLineToApply;

                trigger OnAction()
                var
                    tbl_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
                    selected_sequence: text;
                    RecRef: RecordRef;
                    SelectionFilterManagement: Codeunit SelectionFilterManagement;
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    RecRef.GetTable(Rec);
                    selected_sequence := SelectionFilterManagement.GetSelectionFilter(RecRef, Rec.FieldNo(Sequence));
                    CurrPage.SetSelectionFilter(tbl_EVS_ConsumerFinance);
                    tbl_EVS_ConsumerFinance.Init();
                    tbl_EVS_ConsumerFinance.Reset();
                    tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Account Code", rec."Account Code");
                    tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Contract No", rec."Contract No");
                    tbl_EVS_ConsumerFinance.SetFilter(tbl_EVS_ConsumerFinance.Sequence, selected_sequence);
                    if tbl_EVS_ConsumerFinance.Find('-') then begin
                        repeat
                            if tbl_EVS_ConsumerFinance.Status = tbl_EVS_ConsumerFinance.Status::" " then begin
                                tbl_EVS_ConsumerFinance.Status := rec.Status::H;
                                tbl_EVS_ConsumerFinance.Modify();
                            end;
                        until tbl_EVS_ConsumerFinance.Next() = 0;
                        rec.Reset();
                        rec.SetRange("Fully Post", false);
                        rec.SetFilter("Account Code", tbl_EVS_ConsumerFinance."Account Code");
                    end;

                end;
            }
            action("Unhold")
            {
                ApplicationArea = all;
                Caption = 'Unhold';
                Image = SelectLineToApply;

                trigger OnAction()
                var
                    tbl_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
                    selected_sequence: text;
                    RecRef: RecordRef;
                    SelectionFilterManagement: Codeunit SelectionFilterManagement;
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    RecRef.GetTable(Rec);
                    selected_sequence := SelectionFilterManagement.GetSelectionFilter(RecRef, Rec.FieldNo(Sequence));
                    CurrPage.SetSelectionFilter(tbl_EVS_ConsumerFinance);
                    tbl_EVS_ConsumerFinance.Init();
                    tbl_EVS_ConsumerFinance.Reset();
                    tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Account Code", rec."Account Code");
                    tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Contract No", rec."Contract No");
                    tbl_EVS_ConsumerFinance.SetFilter(tbl_EVS_ConsumerFinance.Sequence, selected_sequence);
                    if tbl_EVS_ConsumerFinance.Find('-') then begin
                        repeat
                            if tbl_EVS_ConsumerFinance.Status = tbl_EVS_ConsumerFinance.Status::H then begin
                                tbl_EVS_ConsumerFinance.Status := rec.Status::" ";
                                tbl_EVS_ConsumerFinance.Modify();
                            end;
                        until tbl_EVS_ConsumerFinance.Next() = 0;
                        rec.Reset();
                        rec.SetRange("Fully Post", false);
                        rec.SetFilter("Account Code", tbl_EVS_ConsumerFinance."Account Code");
                    end;

                end;
            }




        }

    }

    var
        demo: Page "Posted Sales Invoice";
        demo1: page "Apply Customer Entries";
        CustLedgEntry: Record "Cust. Ledger Entry";
        localCustomer_No: code[20];
        Cust_EntryNo: Integer;
        Cust_DocNo: code[20];
        "Cash Reciept Document No": code[20];
        "Remaining Amount Payment": Decimal;

    trigger OnAfterGetCurrRecord()

    var
        tbl_GenJournalLine: Record "Gen. Journal Line";
    begin
        if rec."Cash Reciept Document No" = '' then begin
            rec."Cash Reciept Document No" := "Cash Reciept Document No";
            //rec."Remaining Amount Payment" := Abs("Remaining Amount Payment");
            Rec.Modify();
        end;


    end;

    // trigger OnAfterGetRecord()
    // var
    //     myInt: Integer;
    // begin
    //     if rec."Remaining Amount" = 0 then begin
    //         if rec."Amount Paid" <> rec."Base Amount" then begin
    //             rec."Remaining Amount" := rec."Base Amount" - rec."Amount Paid";
    //             rec.Modify();
    //         end;

    //     end;
    // end;

    trigger OnOpenPage()
    var
        myInt: Integer;

    begin
        rec.SetFilter(rec."Account Code", localCustomer_No);

    end;

    procedure GetCustNoFromSourcePage(Customer_No: Code[20]; CustEntryNo: Integer; DocumentNo: Code[20]; "Remaining Payment": Decimal)
    var


    begin

        localCustomer_No := Customer_No;
        Cust_EntryNo := CustEntryNo;
        Cust_DocNo := '';
        "Cash Reciept Document No" := DocumentNo;
        "Remaining Amount Payment" := "Remaining Payment";
    end;
}