page 50118 EVS_CUSTFINANCEINSLIST
{
    PageType = ListPart;
    //ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EVS_Consumer_Finance;
    // CardPageId = 50008;
    Caption = 'Installments Details';
    layout
    {
        area(Content)
        {
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
                    Style = Favorable;
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

                //added by hani
                field("Amount Paid"; Rec."Amount Paid")
                {
                    Caption = 'Amount Paid';
                    ApplicationArea = All;
                    Style = Favorable;
                }
                field("Paid Date"; Rec."Paid Date")
                {
                    Caption = 'Paid Date';
                    ApplicationArea = All;
                }
                field("Status"; Rec."Status")
                {
                    Caption = 'Status';
                    ApplicationArea = All;
                    ToolTip = '(Fully paid (X), Partial paid (P), Hold (H))';
                }
                field("Deferred Earnings"; Rec."Deferred Earnings")
                {
                    Caption = 'Deferred Earnings';
                    ApplicationArea = All;
                }
                field("Earnings Taken"; Rec."Earnings Taken")
                {
                    Caption = 'Earnings Taken';
                    ApplicationArea = All;
                    Style = Favorable;
                }
                field("Earn Date"; Rec."Earn Date")
                {
                    Caption = 'Earning Dates';
                    ApplicationArea = All;
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
    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin

    end;

    var
        demo: Page "Posted Sales Invoice";
}
