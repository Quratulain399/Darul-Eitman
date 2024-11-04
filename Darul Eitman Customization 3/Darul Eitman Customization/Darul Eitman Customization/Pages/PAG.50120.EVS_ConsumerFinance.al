page 50120 EVS_ConsumerFinance
{
    // PageType = list;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    // SourceTable = EVS_Consumer_Finance;
    Caption = 'Consumer Finance';
    PageType = API;
    APIPublisher = 'EVS';
    APIGroup = 'Extender';
    APIVersion = 'v2.0';
    EntityName = 'ConsumerFinance';
    EntitySetName = 'ConsumerFinance';
    SourceTable = EVS_Consumer_Finance;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Account_Code"; rec."Account Code")
                {
                    ApplicationArea = All;
                    Caption = 'Account Code';

                }
                field("Contract_No"; Rec."Contract No")
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
                field("Base_Amount"; Rec."Base Amount")
                {
                    ApplicationArea = ALL;
                }
                field("Base_Paid"; Rec."Base Paid")
                {
                    ApplicationArea = ALL;
                }
                field("Currency_Amount"; Rec."Currency Amount")
                {
                    Caption = 'Currency Amount';
                    ApplicationArea = ALL;
                }
                field("Currency_Paid"; Rec."Currency Paid")
                {
                    Caption = 'Currency Paid';
                    ApplicationArea = ALL;
                }
                field("Deferred_Earnings"; Rec."Deferred Earnings")
                {
                    Caption = 'Deferred Earnings';
                    ApplicationArea = ALL;
                }
                field("Due_Date"; Rec."Due Date")
                {
                    Caption = 'Due Date';
                    ApplicationArea = ALL;
                }
                field("Dummy_Values"; Rec."Dummy Values")
                {
                    ApplicationArea = ALL;
                }
                field("Earn_Date"; Rec."Earn Date")
                {
                    Caption = 'Earn Date';
                    ApplicationArea = ALL;
                }
                field("Earnings_Taken"; Rec."Earnings Taken")
                {
                    Caption = 'Earnings Taken';
                    ApplicationArea = ALL;
                }
                field("Hold_Date"; Rec."Hold Date")
                {
                    Caption = 'Hold Date';
                    ApplicationArea = ALL;
                }
                field("Hold_User"; Rec."Hold User")
                {
                    Caption = 'Hold User';
                    ApplicationArea = ALL;
                }
                field("Paid_Date"; Rec."Paid Date")
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

                field("Taken_Date"; Rec."Taken Date")
                {
                    Caption = 'Taken Date';
                    ApplicationArea = ALL;

                }
                field("Transaction_Magic"; Rec."Transaction Magic")
                {
                    ApplicationArea = ALL;
                }

            }
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

    var
        myInt: Integer;
}