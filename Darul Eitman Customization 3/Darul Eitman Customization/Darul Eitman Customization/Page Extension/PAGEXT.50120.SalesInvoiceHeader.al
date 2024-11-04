pageextension 50120 EVS_SalesInvoice extends "Sales Invoice"
{
    layout
    {
        addafter("CFDI Period")
        {
            field("VehicleNo"; Rec."VehicleNo")
            {
                Caption = 'Vehicle No.';
                ApplicationArea = All;
                Editable = false;
            }
            field("ContractNo"; Rec."ContractNo")
            {
                Caption = 'Contract No.';
                ApplicationArea = All;
                Editable = false;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}