page 50002 EVS_ContractInfo
{
    PageType = list;
    //ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = EVS_ContractInfo;
    CardPageId = 50003;
    Caption = 'Vehicles';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater("")
            {
                field("Customer No."; Rec."Customer No.")
                {
                    Visible = false;
                    NotBlank = true;
                    Caption = 'Customer ID';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("ContractNo"; Rec."ContractNo")
                {
                    Caption = 'Contract No';
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field("VehicleNo"; Rec."VehicleNo")
                {
                    Caption = 'Vehicle No';
                    ApplicationArea = All;
                    NotBlank = true;
                }
                field("VehicleStatus"; Rec."VehicleStatus")
                {
                    Caption = 'Status';
                    ApplicationArea = All;
                }
                field(Application_ID; Rec.Application_ID)
                {
                    Caption = 'Application Id';
                    ApplicationArea = All;
                }
                field(Application_Code; Rec.Application_Code)
                {
                    Caption = 'Application Code';
                    ApplicationArea = All;
                }
                field(InvoiceNo; Rec.InvoiceNo)
                {
                    Caption = 'Invoice No.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("CreditMemoNo"; Rec."CreditMemoNo")
                {
                    Caption = 'Credit Memo No.';
                    ApplicationArea = All;
                    Editable = false;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("New")
            {
                ApplicationArea = all;
                Caption = 'New';
                Image = New;
                ToolTip = 'New Vehicle information';
                trigger OnAction()
                var
                    tbl_EVS_VehicleInfo: Record EVS_ContractInfo;
                    RecRef: RecordRef;
                    SelectionFilterManagement: Codeunit SelectionFilterManagement;

                begin
                    if not Confirm('Do you really want to change the status to "New" for the selected vehicles?', false) then
                        exit;
                    CurrPage.SetSelectionFilter(tbl_EVS_VehicleInfo);
                    if tbl_EVS_VehicleInfo.FindSet() then begin
                        repeat
                            tbl_EVS_VehicleInfo.VehicleStatus := tbl_EVS_VehicleInfo.VehicleStatus::New;
                            tbl_EVS_VehicleInfo.InvoiceNo := '';
                            tbl_EVS_VehicleInfo.Modify();
                        until tbl_EVS_VehicleInfo.Next() = 0;
                        Message('Status for the selected vehicles have been newed.');
                    end;
                end;
            }
            // action("Cancel")
            // {
            //     ApplicationArea = all;
            //     Caption = 'Cancel';
            //     Image = New;
            //     ToolTip = 'Cancel Vehicle information';
            //     trigger OnAction()
            //     var
            //         InvoiceDeleted: Boolean;
            //         PostedSalesHeader: Record "Sales Invoice Header";
            //         SalesHeaderCancel: Record "Sales Header";
            //         asd: page "Sales Order List";
            //         CorrectPostedSalesInvoice: Codeunit "Correct Posted Sales Invoice";
            //         IsHandled: Boolean;
            //         CreditMemoHeader: Record "Sales Cr.Memo Header";
            //     begin
            //         if not Confirm('Do you really want to change the status to "Cancel" for the selected vehicles?', false) then
            //             exit;
            //         CurrPage.SetSelectionFilter(tbl_EVS_VehicleInfo);
            //         InvoiceDeleted := false;

            //         if tbl_EVS_VehicleInfo.FindSet() then begin
            //             repeat begin
            //                 SalesHeaderCancel.Init();
            //                 SalesHeaderCancel.Reset();
            //                 SalesHeaderCancel.SetRange(SalesHeaderCancel."No.", tbl_EVS_VehicleInfo.InvoiceNo);
            //                 if SalesHeaderCancel.Find('-') then begin
            //                     if tbl_EVS_VehicleInfo.InvoiceNo <> '' then begin
            //                         if SalesHeader.Get(SalesHeader."Document Type"::Invoice, tbl_EVS_VehicleInfo.InvoiceNo) then begin
            //                             SalesHeader.Delete(true);
            //                             tbl_EVS_VehicleInfo.InvoiceNo := '';
            //                             InvoiceDeleted := true;
            //                         end;
            //                         tbl_EVS_VehicleInfo.VehicleStatus := tbl_EVS_VehicleInfo.VehicleStatus::Cancel;
            //                         tbl_EVS_VehicleInfo.InvoiceNo := '';
            //                         tbl_EVS_VehicleInfo.Modify();
            //                     end;
            //                 end
            //                 else begin
            //                     IsHandled := false;
            //                     PostedSalesHeader.Init();
            //                     PostedSalesHeader.Reset();
            //                     PostedSalesHeader.SetRange(PostedSalesHeader."Pre-Assigned No.", SalesHeader."No.");
            //                     if PostedSalesHeader.find('-') then begin
            //                         OnBeforeCreateCreditMemoOnAction(PostedSalesHeader, IsHandled);
            //                         if IsHandled then
            //                             exit;

            //                         if CorrectPostedSalesInvoice.CreateCreditMemoCopyDocument(PostedSalesHeader, SalesHeader) then begin
            //                             PAGE.Run(PAGE::"Sales Credit Memo", SalesHeader);
            //                             //CurrPage.Close();
            //                             tbl_EVS_VehicleInfo.VehicleStatus := tbl_EVS_VehicleInfo.VehicleStatus::Cancel;
            //                             tbl_EVS_VehicleInfo.InvoiceNo := '';
            //                             CreditMemoHeader.Init();
            //                             CreditMemoHeader.Reset();
            //                             CreditMemoHeader.SetRange(CreditMemoHeader."No.", PostedSalesHeader."Applies-to Doc. No.");
            //                             if CreditMemoHeader.Find('-') then begin
            //                                 tbl_EVS_VehicleInfo.CreditMemoNo := CreditMemoHeader."No.";
            //                             end;
            //                             tbl_EVS_VehicleInfo.Modify();

            //                         end;

            //                     end;

            //                 end;
            //             end until tbl_EVS_VehicleInfo.Next() = 0;
            //             if InvoiceDeleted = true then begin
            //                 Message('Status for the selected invoices have been cancelled');
            //             end
            //         end;
            //     end;
            // }
            action("Cancel")
            {
                ApplicationArea = all;
                Caption = 'Cancel';
                Image = New;
                ToolTip = 'Cancel Vehicle information';
                trigger OnAction()
                var
                    InvoiceDeleted: Boolean;
                    PostedSalesHeader: Record "Sales Invoice Header";
                    SalesHeaderCancel: Record "Sales Header";
                    CorrectPostedSalesInvoice: Codeunit "Correct Posted Sales Invoice";
                    IsHandled: Boolean;
                    CreditMemoHeader: Record "Sales Cr.Memo Header";
                begin
                    if not Confirm('Do you really want to change the status to "Cancel" for the selected vehicles?', false) then
                        exit;
                    CurrPage.SetSelectionFilter(tbl_EVS_VehicleInfo);
                    InvoiceDeleted := false;
                    if tbl_EVS_VehicleInfo.FindSet() then begin
                        repeat
                        begin
                            SalesHeaderCancel.Init();
                            SalesHeaderCancel.Reset();
                            SalesHeaderCancel.SetRange(SalesHeaderCancel."No.", tbl_EVS_VehicleInfo.InvoiceNo);

                            if SalesHeaderCancel.Find('-') then begin
                                if tbl_EVS_VehicleInfo.InvoiceNo <> '' then begin
                                    if SalesHeader.Get(SalesHeader."Document Type"::Invoice, tbl_EVS_VehicleInfo.InvoiceNo) then begin
                                        SalesHeader.Delete(true);
                                        tbl_EVS_VehicleInfo.InvoiceNo := '';
                                        InvoiceDeleted := true;
                                    end;
                                    tbl_EVS_VehicleInfo.VehicleStatus := tbl_EVS_VehicleInfo.VehicleStatus::Cancel;
                                    tbl_EVS_VehicleInfo.InvoiceNo := '';
                                    tbl_EVS_VehicleInfo.Modify();
                                end;
                            end else begin
                                IsHandled := false;
                                PostedSalesHeader.Init();
                                PostedSalesHeader.Reset();
                                PostedSalesHeader.SetRange(PostedSalesHeader."Pre-Assigned No.", SalesHeader."No.");

                                if PostedSalesHeader.find('-') then begin
                                    OnBeforeCreateCreditMemoOnAction(PostedSalesHeader, IsHandled);
                                    if IsHandled then
                                        exit;
                                    if CorrectPostedSalesInvoice.CreateCreditMemoCopyDocument(PostedSalesHeader, SalesHeader) then begin
                                        PAGE.Run(PAGE::"Sales Credit Memo", SalesHeader);
                                        tbl_EVS_VehicleInfo.VehicleStatus := tbl_EVS_VehicleInfo.VehicleStatus::Cancel;
                                        tbl_EVS_VehicleInfo.CreditMemoNo := SalesHeader."No.";
                                        tbl_EVS_VehicleInfo.Modify();
                                        // CreditMemoHeader.Init();
                                        // CreditMemoHeader.Reset();
                                        // CreditMemoHeader.SetRange(CreditMemoHeader."Applies-to Doc. No.", PostedSalesHeader."No.");
                                        // CreditMemoHeader.SetRange(CreditMemoHeader."Applies-to Doc. Type", CreditMemoHeader."Applies-to Doc. Type"::Invoice);
                                        // if CreditMemoHeader.Find('-') then begin
                                        //     tbl_EVS_VehicleInfo.CreditMemoNo := CreditMemoHeader."No.";
                                        // end;

                                    end;
                                end;
                            end;
                        end;
                        until tbl_EVS_VehicleInfo.Next() = 0;
                        if InvoiceDeleted = true then begin
                            Message('Status for the selected vehicles have been cancelled');
                        end;
                    end;
                end;
            }


            action("Close")
            {
                ApplicationArea = all;
                Caption = 'Close';
                Image = New;
                ToolTip = 'Close Vehicle information';
                trigger OnAction()
                var
                    tbl_EVS_VehicleInfo: Record EVS_ContractInfo;
                    RecRef: RecordRef;
                    SelectionFilterManagement: Codeunit SelectionFilterManagement;
                begin
                    if not Confirm('Do you really want to change the status to "Close" for the selected vehicles?', false) then
                        exit;
                    CurrPage.SetSelectionFilter(tbl_EVS_VehicleInfo);
                    if tbl_EVS_VehicleInfo.FindSet() then begin
                        tbl_EVS_VehicleInfo.Reset();
                        repeat
                            tbl_EVS_VehicleInfo.VehicleStatus := tbl_EVS_VehicleInfo.VehicleStatus::Close;
                            tbl_EVS_VehicleInfo.Modify();
                        until tbl_EVS_VehicleInfo.Next() = 0;

                        Message('Status for the selected vehicles have been closed.');
                    end

                end;
            }

            action("Active")
            {
                ApplicationArea = all;
                Caption = 'Activate';
                Image = New;
                ToolTip = 'Activate Customers to automatically create sales invoices for selected lines';
                trigger OnAction()
                var

                begin
                    if not Confirm('Do you really want to change the status to "Activate" for the selected vehicles?', false) then
                        exit;
                    if not SalesSetup.Get() then
                        Error('Sales & Receivables Setup is not configured.');
                    CurrPage.SetSelectionFilter(tbl_EVS_VehicleInfo);
                    InvoiceCreated := false;
                    if tbl_EVS_VehicleInfo.FindSet() then
                        repeat
                            if (tbl_EVS_VehicleInfo.VehicleStatus = tbl_EVS_VehicleInfo.VehicleStatus::New) and (tbl_EVS_VehicleInfo.InvoiceNo = '') then begin
                                tbl_customer.Reset();
                                tbl_customer.SetRange(tbl_customer."No.", tbl_EVS_VehicleInfo."Customer No.");

                                if tbl_customer.FindFirst() then begin
                                    SalesHeader.Init();
                                    SalesHeader.Validate("Document Type", SalesHeader."Document Type"::Invoice);
                                    NewInvoiceNo := NoSeriesMgt.GetNextNo(SalesSetup."Invoice Nos.", Today(), true);
                                    SalesHeader."No." := NewInvoiceNo;
                                    SalesHeader.Insert(true);
                                    SalesHeader.Validate("Sell-to Customer No.", tbl_customer."No.");
                                    SalesHeader.Validate("Sell-to Customer Name", tbl_customer."Name");
                                    SalesHeader.Validate("Sell-to Address", tbl_customer.Address);
                                    SalesHeader.Validate("Sell-to City", tbl_customer.City);
                                    SalesHeader.Validate("Sell-to Post Code", tbl_customer."Post Code");
                                    SalesHeader.Validate("Sell-to Contact", tbl_customer.Contact);
                                    //SalesHeader."No." := NewInvoiceNo;
                                    SalesHeader.VehicleNo := tbl_EVS_VehicleInfo.VehicleNo;
                                    SalesHeader.ContractNo := tbl_EVS_VehicleInfo.ContractNo;
                                    SalesHeader.Modify(true);
                                    LineNo := 10000;

                                    if tbl_EVS_VehicleInfo.App_Insurance_Fees > 0 then begin
                                        tbl_IntegrationSetup.Init();
                                        tbl_IntegrationSetup.Reset();
                                        if tbl_IntegrationSetup.FindFirst() and (tbl_IntegrationSetup.App_Insurance_Fees <> '') then begin
                                            SalesLine.Init();
                                            SalesLine.Validate("Document Type", SalesHeader."Document Type");
                                            SalesLine.Validate("Document No.", SalesHeader."No.");
                                            SalesLine.Validate("Line No.", LineNo);
                                            SalesLine.Insert(true);
                                            SalesLine.Validate("Type", SalesLine."Type"::Item);
                                            SalesLine.Validate("No.", tbl_IntegrationSetup.App_Insurance_Fees);
                                            SalesLine.Validate(Quantity, 1);
                                            SalesLine."Unit Price" := tbl_EVS_VehicleInfo.App_Insurance_Fees;
                                            SalesLine.Modify(true);
                                            LineNo += 10000;
                                        end
                                        else
                                            Error('Insurance item not set in the integration setup table.');
                                    end;
                                    if tbl_EVS_VehicleInfo.App_To_Finance > 0 then begin
                                        tbl_IntegrationSetup.Init();
                                        tbl_IntegrationSetup.Reset();
                                        if tbl_IntegrationSetup.FindFirst() and (tbl_IntegrationSetup.App_To_Finance <> '') then begin
                                            SalesLine.Init();
                                            SalesLine.Validate("Document Type", SalesHeader."Document Type");
                                            SalesLine.Validate("Document No.", SalesHeader."No.");
                                            SalesLine.Validate("Line No.", LineNo);
                                            SalesLine.Insert(true);
                                            SalesLine.Validate("Type", SalesLine."Type"::Item);
                                            SalesLine.Validate("No.", tbl_IntegrationSetup.App_To_Finance);
                                            SalesLine.Validate(Quantity, 1);
                                            SalesLine."Unit Price" := tbl_EVS_VehicleInfo.App_To_Finance;
                                            SalesLine.modify(true);
                                            LineNo += 10000;
                                        end else
                                            Error('Finance item not set in the integration setup table.');
                                    end;
                                    if tbl_EVS_VehicleInfo.App_Total_Liability > 0 then begin
                                        tbl_IntegrationSetup.Init();
                                        tbl_IntegrationSetup.Reset();
                                        if tbl_IntegrationSetup.FindFirst() and (tbl_IntegrationSetup.App_Total_Liability <> '') then begin
                                            SalesLine.Init();
                                            SalesLine.Validate("Document Type", SalesHeader."Document Type");
                                            SalesLine.Validate("Document No.", SalesHeader."No.");
                                            SalesLine.Validate("Line No.", LineNo);
                                            SalesLine.Insert(true);
                                            SalesLine.Validate("Type", SalesLine."Type"::Item);
                                            SalesLine.Validate("No.", tbl_IntegrationSetup.App_Total_Liability);
                                            SalesLine.Validate(Quantity, 1);
                                            SalesLine."Unit Price" := tbl_EVS_VehicleInfo.App_Total_Liability;
                                            SalesLine.modify(true);
                                            LineNo += 10000;
                                        end else
                                            Error('Liability item not set in the integration setup table.');
                                    end;
                                    tbl_EVS_VehicleInfo.InvoiceNo := SalesHeader."No.";
                                    tbl_EVS_VehicleInfo.VehicleStatus := tbl_EVS_VehicleInfo.VehicleStatus::Active;
                                    tbl_EVS_VehicleInfo.Modify();
                                    InvoiceCreated := true;

                                end;
                            end

                        until tbl_EVS_VehicleInfo.Next() = 0;
                    if InvoiceCreated = true then begin
                        Message('Status for the selected vehicles have been activated');
                    end else begin
                        Message('Cannot create a sales invoice because the status is not new.');
                    end


                end;
            }

        }
    }

    // procedure UnitPrice(ItemNo: Code[20]): Decimal
    // var
    //     ItemRec: Record Item;
    //     tbl_IntegrationSetup: Record EVS_Integration_Setup;
    // begin
    //     ItemRec.Init();
    //     ItemRec.Reset();
    //     ItemRec.SetRange(ItemRec."No.", ItemNo);
    //     if ItemRec.find('-') then begin
    //         exit(ItemRec."Unit Price")
    //     end;
    // end;

    // procedure Description(ItemNo: Code[20]): text
    // var
    //     ItemRec: Record Item;
    //     tbl_IntegrationSetup: Record EVS_Integration_Setup;
    // begin
    //     ItemRec.Init();
    //     ItemRec.Reset();
    //     ItemRec.SetRange(ItemRec."No.", ItemNo);
    //     if ItemRec.find('-') then begin
    //         exit(ItemRec.Description)
    //     end;
    // end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCreateCreditMemoOnAction(var SalesInvoiceHeader: Record "Sales Invoice Header"; var IsHandled: Boolean)
    begin
    end;

    var

        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        tbl_customer: Record Customer;
        tbl_IntegrationSetup: Record EVS_Integration_Setup;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit "NoSeriesManagement";
        NewInvoiceNo: Code[20];
        RecRef: RecordRef;
        SelectionFilterManagement: Codeunit SelectionFilterManagement;
        LineNo: Integer;
        tbl_EVS_VehicleInfo: Record EVS_ContractInfo;
        InvoiceCreated: Boolean;

}