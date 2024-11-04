page 50009 EVS_CUST_FINANCEINSTALLMENTS
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EVS_Consumer_Finance;
    // CardPageId = 50008;
    Caption = 'Consumer Finance Installments';
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Account Code"; Rec."Account Code")
                {
                    Caption = 'Account';
                    ApplicationArea = All;

                }
                field("Contract No"; Rec."Contract No")
                {
                    Caption = 'Contract No';
                    ApplicationArea = All;

                }
                field(Sequence; Rec.Sequence)
                {
                    Caption = 'Sequence';
                    ApplicationArea = All;

                }
                field(Bank; Rec.Bank)
                {
                    Caption = 'Bank';
                    ApplicationArea = ALL;
                }
                field("Base Amount"; Rec."Base Amount")
                {
                    //Caption = 'BASVAL';
                    ApplicationArea = ALL;
                }
                field("Base Paid"; Rec."Base Paid")
                {
                    //Caption = 'BASEPAID';
                    ApplicationArea = ALL;
                }
                field("Currency Amount"; Rec."Currency Amount")
                {
                    Caption = 'Currency Amount';
                    ApplicationArea = ALL;
                }
                field("Currency Paid"; Rec."Currency Paid")
                {
                    Caption = 'Currency Paid';
                    ApplicationArea = ALL;
                }
                field("Deferred Earnings"; Rec."Deferred Earnings")
                {
                    Caption = 'Deferred Earnings';
                    ApplicationArea = ALL;
                }
                field("Due Date"; Rec."Due Date")
                {
                    Caption = 'Due Date';
                    ApplicationArea = ALL;
                }
                field("Dummy Values"; Rec."Dummy Values")
                {
                    //Caption = 'Ignore BY002200';
                    ApplicationArea = ALL;
                }
                field("Earn Date"; Rec."Earn Date")
                {
                    Caption = 'Earn Date';
                    ApplicationArea = ALL;
                }
                field("Earnings Taken"; Rec."Earnings Taken")
                {
                    Caption = 'Earnings Taken';
                    ApplicationArea = ALL;
                }
                field("Hold Date"; Rec."Hold Date")
                {
                    Caption = 'Hold Date';
                    ApplicationArea = ALL;
                }
                field("Hold User"; Rec."Hold User")
                {
                    Caption = 'Hold User';
                    ApplicationArea = ALL;
                }
                field("Paid Date"; Rec."Paid Date")
                {
                    Caption = 'Paid Date';
                    ApplicationArea = ALL;
                }
                field(Reference; Rec.Reference)
                {
                    Caption = 'Ref';
                    ApplicationArea = ALL;
                }
                field(Reference1; Rec.Reference1)
                {
                    Caption = 'Ref';
                    ApplicationArea = ALL;
                }
                field(Reference2; Rec.Reference2)
                {
                    Caption = 'Ref';
                    ApplicationArea = ALL;
                }

                field("Taken Date"; Rec."Taken Date")
                {
                    Caption = 'Taken Date';
                    ApplicationArea = ALL;

                }
                field("Transaction Magic"; Rec."Transaction Magic")
                {
                    //Caption = 'TXMAGIC';
                    ApplicationArea = ALL;
                }
                //15-August-2024
                field("Cash Receipt"; Rec."Cash Receipt")
                {
                    Caption = 'Cash Receipt';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}