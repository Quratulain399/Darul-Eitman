page 50116 EVS_FinanceScheme
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = EVS_ContractInfo;
    Caption = 'Finance Scheme';
    Editable = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Finance Scheme';
                field("Account code"; Rec."Customer No.")
                {
                    Caption = 'Account code';
                    ApplicationArea = All;
                }
                field("Contract No"; Rec."ContractNo")
                {
                    Caption = 'Contract No';
                    ApplicationArea = All;
                }
                field("Finance scheme"; Rec."Finance scheme")
                {
                    Caption = 'Finance scheme';
                    ApplicationArea = All;
                }
                field(Flatrate; Rec.Flatrate)
                {
                    Caption = 'Flat Rate';
                    ApplicationArea = All;
                }
                field("NPV Rate"; Rec."NPV Rate")
                {
                    Caption = 'NPV Rate';
                    ApplicationArea = All;
                }
            }
            group("Summary Detail")
            {
                group(Deal)
                {
                    field("Down payment"; Rec."Down payment")
                    {
                        Caption = 'Down payment';
                        ApplicationArea = All;
                    }
                    field("Deal_Installments"; Rec."Deal_Installments")
                    {
                        Caption = 'Installments';
                        ApplicationArea = All;
                    }
                    field("Deal_Value"; Rec."Deal_Value")
                    {
                        Caption = 'Value';
                        ApplicationArea = All;
                    }
                    field(Deal_Earnings; Rec.Deal_Earnings)
                    {
                        Caption = 'Earnings';
                        ApplicationArea = All;
                        Tooltip = 'Sum of Deferred Earnings from all installments of the contract';
                    }
                }
                group(Outstanding)
                {
                    field("Outstanding_Installments"; Rec."Installments")
                    {
                        Caption = 'Installments';
                        ApplicationArea = All;
                    }
                    field("Outstanding_Value"; Rec."Outstanding_Value")
                    {
                        Caption = 'Value';
                        ApplicationArea = All;
                    }
                    field(Outstanding_Earnings; Rec.Outstanding_Earnings)
                    {
                        Caption = 'Earnings';
                        ApplicationArea = All;
                    }
                }
                group(Paid)
                {
                    field("Paid_Installments"; Rec."Paid_Installments")
                    {
                        Caption = 'Installments';
                        ApplicationArea = All;
                    }
                    field("Paid_Value"; Rec."Paid_Value")
                    {
                        Caption = 'Value';
                        ApplicationArea = All;
                        Style = Favorable;
                    }
                    field(Paid_Earnings; Rec.Paid_Earnings)
                    {
                        Caption = 'Earnings';
                        ApplicationArea = All;
                    }
                }
                group("Not Due")
                {
                    field("NotDue_Installments"; Rec."NotDue_Installments")
                    {
                        Caption = 'Installments';
                        ApplicationArea = All;
                    }
                    field("NotDue_Value"; Rec."NotDue_Value")
                    {
                        Caption = 'Value';
                        ApplicationArea = All;
                    }
                    field(NotDue_Earnings; Rec.NotDue_Earnings)
                    {
                        Caption = 'Earnings';
                        ApplicationArea = All;
                    }
                }
                group("Over Due")
                {
                    field("OverDue_Installments"; Rec."OverDue_Installments")
                    {
                        Caption = 'Installments';
                        ApplicationArea = All;
                    }
                    field("OverDue_Value"; Rec."OverDue_Value")
                    {
                        Caption = 'Value';
                        ApplicationArea = All;
                        Style = Unfavorable;
                    }
                    field(OverDue_Earnings; Rec.OverDue_Earnings)
                    {
                        Caption = 'Earnings';
                        ApplicationArea = All;
                    }
                }
            }
            group("Insurance Detail")
            {
                group("Insurance Premium")
                {
                    field("Insurance Year1"; Rec."Insurance Year1")
                    {
                        Caption = 'Insurance Year 1';
                        ApplicationArea = All;
                    }
                    field("Insurance Year2"; Rec."Insurance Year2")
                    {
                        Caption = 'Insurance Year 2';
                        ApplicationArea = All;
                    }
                    field("Insurance Year3"; Rec."Insurance Year3")
                    {
                        Caption = 'Insurance Year 3';
                        ApplicationArea = All;
                    }
                    field("Insurance Year4"; Rec."Insurance Year4")
                    {
                        Caption = 'Insurance Year 4';
                        ApplicationArea = All;
                    }
                    field("Insurance Year5"; Rec."Insurance Year5")
                    {
                        Caption = 'Insurance Year 5';
                        ApplicationArea = All;
                    }
                }
                group(Taken)
                {
                    field("Insurance taken Year1"; Rec."Insurance taken Year1")
                    {
                        Caption = 'Insurance Year 1';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year2"; Rec."Insurance taken Year2")
                    {
                        Caption = 'Insurance Year 2';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year3"; Rec."Insurance taken Year3")
                    {
                        Caption = 'Insurance Year 3';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year4"; Rec."Insurance taken Year4")
                    {
                        Caption = 'Insurance Year 4';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year5"; Rec."Insurance taken Year5")
                    {
                        Caption = 'Insurance Year 5';
                        ApplicationArea = All;
                    }
                }
            }
#pragma warning disable AL0269
            part(EVS_CUSTFINANCEINSLIST; "EVS_CUSTFINANCEINSLIST")
#pragma warning restore AL0269
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "Account Code" = FIELD("Customer No."), "Contract No" = field("VehicleNo");
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        tbl_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
        Values: Decimal;
        count_installments: Integer;
        Earning_calc: Decimal;
    begin
        tbl_EVS_ConsumerFinance.Init();
        tbl_EVS_ConsumerFinance.Reset();
        tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Account Code", rec."Customer No.");
        tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Contract No", rec."VehicleNo");
        //overdue 

        Clear(Earning_calc);
        Clear(count_installments);
        tbl_EVS_ConsumerFinance.Init();
        tbl_EVS_ConsumerFinance.Reset();
        tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Account Code", rec."Customer No.");
        tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Contract No", rec."VehicleNo");
        tbl_EVS_ConsumerFinance.SetFilter(tbl_EVS_ConsumerFinance."Due Date", '<%1', Today);
        tbl_EVS_ConsumerFinance.SetFilter(tbl_EVS_ConsumerFinance.Status, '<>%1', tbl_EVS_ConsumerFinance.Status::X);
        if tbl_EVS_ConsumerFinance.Find('-') then begin
            repeat begin
                if (tbl_EVS_ConsumerFinance."Amount Paid" > 0) and (tbl_EVS_ConsumerFinance."Base Amount" <> tbl_EVS_ConsumerFinance."Amount Paid") then begin
                    Earning_calc += tbl_EVS_ConsumerFinance."Earnings Taken";
                end;
                if tbl_EVS_ConsumerFinance."Base Amount" = tbl_EVS_ConsumerFinance."Amount Paid" then begin
                    Earning_calc += tbl_EVS_ConsumerFinance."Earnings Taken";
                end;

                if tbl_EVS_ConsumerFinance."Base Amount" <> tbl_EVS_ConsumerFinance."Amount Paid" then begin
                    count_installments := count_installments + 1;
                end
            end until tbl_EVS_ConsumerFinance.Next() = 0;
            if rec.OverDue_Installments <> count_installments then begin
                rec.OverDue_Installments := count_installments;
            end;
            tbl_EVS_ConsumerFinance.CalcSums("Base Amount");
            if rec.OverDue_Value <> tbl_EVS_ConsumerFinance."Base Amount" then begin
                rec.OverDue_Value := tbl_EVS_ConsumerFinance."Base Amount";
            end;
            tbl_EVS_ConsumerFinance.CalcSums("Deferred Earnings");
            if rec.OverDue_Earnings <> (tbl_EVS_ConsumerFinance."Deferred Earnings" - Earning_calc) then begin
                rec.OverDue_Earnings := tbl_EVS_ConsumerFinance."Deferred Earnings" - Earning_calc;
            end

        end;
        //NotDue 
        Clear(Earning_calc);
        Clear(count_installments);
        tbl_EVS_ConsumerFinance.Init();
        tbl_EVS_ConsumerFinance.Reset();
        tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Account Code", rec."Customer No.");
        tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Contract No", rec."VehicleNo");
        tbl_EVS_ConsumerFinance.SetFilter(tbl_EVS_ConsumerFinance."Due Date", '>%1', Today);
        if tbl_EVS_ConsumerFinance.Find('-') then begin
            repeat begin
                if (tbl_EVS_ConsumerFinance."Amount Paid" > 0) and (tbl_EVS_ConsumerFinance."Base Amount" <> tbl_EVS_ConsumerFinance."Amount Paid") then begin
                    Earning_calc += tbl_EVS_ConsumerFinance."Earnings Taken";
                end;
                if tbl_EVS_ConsumerFinance."Base Amount" = tbl_EVS_ConsumerFinance."Amount Paid" then begin
                    Earning_calc += tbl_EVS_ConsumerFinance."Earnings Taken";
                end;
                if tbl_EVS_ConsumerFinance."Base Amount" <> tbl_EVS_ConsumerFinance."Amount Paid" then begin
                    count_installments := count_installments + 1;
                end
            end until tbl_EVS_ConsumerFinance.Next() = 0;
            if rec.NotDue_Installments <> count_installments then begin
                rec.NotDue_Installments := count_installments;
            end;
            tbl_EVS_ConsumerFinance.CalcSums("Base Amount");
            if rec.NotDue_Value <> tbl_EVS_ConsumerFinance."Base Amount" then begin
                rec.NotDue_Value := tbl_EVS_ConsumerFinance."Base Amount";
            end;
            tbl_EVS_ConsumerFinance.CalcSums("Deferred Earnings");
            if rec.NotDue_Earnings <> (tbl_EVS_ConsumerFinance."Deferred Earnings" - Earning_calc) then begin
                rec.NotDue_Earnings := tbl_EVS_ConsumerFinance."Deferred Earnings" - Earning_calc;
            end

        end;

    end;

    var
        myInt: Integer;
}
