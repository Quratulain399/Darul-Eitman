page 50121 EVS_Integration_Setup
{
    PageType = Card;
    ApplicationArea = All;
    Caption = 'EVS - Integration Setup';
    UsageCategory = Administration;
    SourceTable = EVS_Integration_Setup;
    Editable = true;

    layout
    {
        area(Content)
        {
            group("Sales Invoice Integration")
            {
                field(App_Insurance_Fees; Rec.App_Insurance_Fees)
                {
                    Editable = true;
                    ApplicationArea = All;
                    Caption = 'Insurance';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        tbl_Item: Record Item;
                        pag_item: page "Item List";
                    begin
                        tbl_Item.Init();
                        tbl_Item.Reset();
                        pag_item.SetRecord(tbl_Item);
                        pag_item.SetTableView(tbl_Item);
                        pag_item.LookupMode(true);
                        if pag_item.RunModal = Action::LookupOK then begin
                            pag_item.GetRecord(tbl_Item);
                            Rec."App_To_Finance" := tbl_Item."No.";
                        end;
                    end;
                }

                field(App_To_Finance; rec.App_To_Finance)
                {
                    Editable = true;
                    ApplicationArea = All;
                    Caption = 'Finance Charges';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        tbl_Item: Record Item;
                        pag_item: page "Item List";
                    begin
                        tbl_Item.Init();
                        tbl_Item.Reset();
                        pag_item.SetRecord(tbl_Item);
                        pag_item.SetTableView(tbl_Item);
                        pag_item.LookupMode(true);
                        if pag_item.RunModal = Action::LookupOK then begin
                            pag_item.GetRecord(tbl_Item);
                            Rec."App_To_Finance" := tbl_Item."No.";
                        end;
                    end;

                }
                field(App_Total_Liability; rec.App_Total_Liability)
                {
                    Editable = true;
                    ApplicationArea = All;
                    Caption = 'Vehicle Charge';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        tbl_Item: Record Item;
                        pag_item: page "Item List";
                    begin
                        tbl_Item.Init();
                        tbl_Item.Reset();
                        pag_item.SetRecord(tbl_Item);
                        pag_item.SetTableView(tbl_Item);
                        pag_item.LookupMode(true);
                        if pag_item.RunModal = Action::LookupOK then begin
                            pag_item.GetRecord(tbl_Item);
                            Rec."App_Total_Liability" := tbl_Item."No.";
                        end;
                    end;
                }
            }
        }
    }
}
