page 50117 EVS_FinanceSchemeList
{
    PageType = List;
    //ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = EVS_ContractInfo;
    CardPageId = 50116;
    Caption = 'Finance Scheme';

    layout
    {
        area(Content)
        {
            repeater(Groupname)
            {
                Caption = 'Finance Scheme';

                field("Account code"; Rec."Customer No.")
                {
                    Caption = 'Account code';
                    ApplicationArea = All;
                }
                field("Approver code"; Rec."Approver code")
                {

                    Caption = 'Approver code';
                    ApplicationArea = All;
                }
                field("Finance scheme"; Rec."Finance scheme")
                {
                    Caption = 'Finance scheme';
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

    var
        myInt: Integer;
}