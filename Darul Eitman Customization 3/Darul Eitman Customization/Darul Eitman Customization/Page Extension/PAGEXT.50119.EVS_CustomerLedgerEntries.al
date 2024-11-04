pageextension 50119 EVS_CustLedgerEntries extends "Customer Ledger Entries"
{
    layout
    {
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
                ToolTip = 'Click to apply installments for the customer.';
                trigger OnAction()
                var
                    Pg_AplliesInstallment: Page EVS_CUSTFINANCECASHRECEIPT;
                begin
                    if Rec."Document Type" = Rec."Document Type"::Payment then begin
                        Pg_AplliesInstallment.GetCustNoFromSourcePage(Rec."Customer No.", Rec."Entry No.", Rec."Document No.", Rec."Amount (LCY)");
                        Pg_AplliesInstallment.Run();
                    end;

                end;
            }
        }
    }
    var
        myInt: Integer;
}