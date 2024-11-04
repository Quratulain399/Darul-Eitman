page 50011 EVS_FINANCE_SCHEDULE
{
    ApplicationArea = All;
    Caption = 'Financial Schedule Detail';
    PageType = list;
    SourceTable = EVS_ContractInfo;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';

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
                field("Approver code"; Rec."Approver code")
                {

                    Caption = 'Approver code';
                    ApplicationArea = All;
                }
                field("Baloon-Check"; Rec."Baloon-Check")
                {

                    Caption = 'Baloon-Check';
                    ApplicationArea = All;

                }
                field(Cashprice; Rec.Cashprice)
                {
                    Caption = 'Cash price';
                    ApplicationArea = All;

                }
                field(Collector; Rec.Collector)
                {
                    Caption = 'Collector';
                    ApplicationArea = All;

                }

                field("Credit rating"; Rec."Credit rating")
                {
                    Caption = 'Credit rating';
                    ApplicationArea = All;

                }
                field("Custody Branch"; Rec."Custody Branch")
                {
                    Caption = 'Custody Branch';
                    ApplicationArea = All;
                }
                field("Custody status"; Rec."Custody status")
                {
                    Caption = 'Custody status';
                    ApplicationArea = All;
                }
                field("Custody type"; Rec."Custody type")
                {
                    Caption = 'Custody type';
                    ApplicationArea = All;
                }
                field("Deal enddate"; Rec."Deal enddate")
                {
                    Caption = 'Deal End date';
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    Caption = 'Department';
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    Caption = 'Discount';
                    ApplicationArea = All;
                }
                field("Down payment"; Rec."Down payment")
                {
                    Caption = 'Down payment';
                    ApplicationArea = All;
                }
                field("Early settl. rebate"; Rec."Early settl. rebate")
                {
                    Caption = 'Early settl. Rebate';
                    ApplicationArea = All;
                }
                field("Finance Charges"; Rec."Finance Charges")
                {
                    Caption = 'Finance Charges';
                    ApplicationArea = All;
                }
                field("Finance scheme"; Rec."Finance scheme")
                {
                    Caption = 'Finance scheme';
                    ApplicationArea = All;
                }
                field("First guarantor"; Rec."First guarantor")
                {
                    Caption = 'First guarantor';
                    ApplicationArea = All;
                }
                field(Flatrate; Rec.Flatrate)
                {
                    Caption = 'Flat Rate';
                    ApplicationArea = All;
                }
                field("Gaurantor names_1"; Rec."Gaurantor names_1")
                {
                    Caption = 'Gaurantor Names 1';
                    ApplicationArea = All;
                }
                field("Gaurantor names_2"; Rec."Gaurantor names_2")
                {
                    Caption = 'Gaurantor Names_2';
                    ApplicationArea = All;

                }
                field("Gross Balance"; Rec."Gross Balance")
                {
                    Caption = 'Gross Balance';
                    ApplicationArea = All;
                }
                field(Insurance; Rec.Insurance)
                {
                    Caption = 'Insurance';
                    ApplicationArea = All;
                }
                field("Insurance Year1"; Rec."Insurance Year1")
                {
                    Caption = 'Insurance Year1';
                    ApplicationArea = All;
                }
                field("Insurance Year2"; Rec."Insurance Year2")
                {
                    Caption = 'Insurance Year2';
                    ApplicationArea = All;
                }
                field("Insurance Year3"; Rec."Insurance Year3")
                {
                    Caption = 'Insurance Year3';
                    ApplicationArea = All;
                }
                field("Insurance Year4"; Rec."Insurance Year4")
                {
                    Caption = 'Insurance Year4';
                    ApplicationArea = All;
                }
                field("Insurance Year5"; Rec."Insurance Year5")
                {
                    Caption = 'Insurance Year5';
                    ApplicationArea = All;
                }
                field("Insurance taken Year1"; Rec."Insurance taken Year1")
                {
                    Caption = 'Insurance taken Year1';
                    ApplicationArea = All;
                }
                field("Insurance taken Year2"; Rec."Insurance taken Year2")
                {
                    Caption = 'Insurance taken Year2';
                    ApplicationArea = All;
                }
                field("Insurance taken Year3"; Rec."Insurance taken Year3")
                {
                    Caption = 'Insurance taken Year3';
                    ApplicationArea = All;
                }
                field("Insurance taken Year4"; Rec."Insurance taken Year4")
                {
                    Caption = 'Insurance taken Year4';
                    ApplicationArea = All;
                }
                field("Insurance taken Year5"; Rec."Insurance taken Year5")
                {
                    Caption = 'Insurance taken Year5';
                    ApplicationArea = All;
                }
                field("Last payment amount"; Rec."Last payment amount")
                {
                    Caption = 'Last payment amount';
                    ApplicationArea = All;
                }
                field("Lease ins start date"; Rec."Lease ins start date")
                {
                    Caption = 'Lease ins start date';
                    ApplicationArea = All;
                }
                field("Legal executive"; Rec."Legal executive")
                {
                    Caption = 'Legal executive';
                    ApplicationArea = All;
                }
                field("Loss provision"; Rec."Loss provision")
                {
                    Caption = 'Loss provision';
                    ApplicationArea = All;
                }
                field("Misc charges"; Rec."Misc charges")
                {
                    Caption = 'Misc charges';
                    ApplicationArea = All;
                }
                field("NPV Rate"; Rec."NPV Rate")
                {
                    Caption = 'NPV Rate';
                    ApplicationArea = All;
                }
                field("Net Finance amount"; Rec."Net Finance amount")
                {
                    Caption = 'Net Finance amount';
                    ApplicationArea = All;
                }
                field("Outstanding Insuranc"; Rec."Outstanding Insuranc")
                {
                    Caption = 'Outstanding InsurancE';
                    ApplicationArea = All;
                }
                field("Outstanding interest"; Rec."Outstanding interest")
                {
                    Caption = 'Outstanding interest';
                    ApplicationArea = All;
                }
                field("Sales input document"; Rec."Sales input document")
                {
                    Caption = 'Sales input document';
                    ApplicationArea = All;
                }
                field("Second guarantor"; Rec."Second guarantor")
                {
                    Caption = 'Second guarantor';
                    ApplicationArea = All;

                }
                field(Status; Rec.Status)
                {
                    Caption = 'Status';
                    ApplicationArea = All;
                }
                field("Status change date"; Rec."Status change date")
                {
                    Caption = 'Status change date';
                    ApplicationArea = All;
                }
                field(Term; Rec.Term)
                {
                    Caption = 'Term';
                    ApplicationArea = All;
                }
                field("Trade In"; Rec."Trade In")
                {
                    Caption = 'Trade In';
                    ApplicationArea = All;
                }
                field("Transaction magic"; Rec."Transaction magic")
                {
                    Caption = 'Transaction magic';
                    ApplicationArea = All;

                }
                field("Worst credit rating"; Rec."Worst credit rating")
                {
                    Caption = 'Worst credit rating';
                    ApplicationArea = All;
                }
            }
        }
    }
}
