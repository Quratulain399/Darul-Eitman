pageextension 50001 CustomerMasterExtension extends "Customer Card"
{
    layout
    {
        addafter("Post Code")
        {
            field("Client District"; Rec."Client District")
            {
                Caption = 'District';
                ApplicationArea = All;
            }
            field(Client_PO_Box; Rec.Client_PO_Box)
            {
                Caption = 'PO Box No.';
                ApplicationArea = All;
            }
            field("Client Building No."; Rec."Client Building No.")
            {
                Caption = 'Building No. ';
                ApplicationArea = All;
            }
            field("Region Name"; Rec."Region Name")
            {
                Caption = 'Region Name';
                ApplicationArea = All;
            }
            field(Client_UnitNo; Rec.Client_UnitNo)
            {
                Caption = 'Unit No.';
                ApplicationArea = All;

            }
            field(Client_Zip2; Rec.Client_Zip2)
            {
                Caption = 'ZIP';
                ApplicationArea = All;

            }



        }
        addafter("Country/Region Code")
        {
            field("Country Name Arabic"; Rec."Country Name Arabic")
            {
                Caption = 'Country Arabic Name';
                ApplicationArea = All;
            }
        }
        addafter(City)
        {
            field(AddressCityName; Rec.AddressCityName)
            {
                Caption = 'Address City Name';
                ApplicationArea = All;

            }
        }
        addafter(Name)
        {
            field(Client_Iqama_ID; Rec.Client_Iqama_ID)
            {
                Caption = 'Iqama Id.';
                ApplicationArea = All;
            }
            field(App_Client_Work_Place; Rec.App_Client_Work_Place)
            {
                Caption = 'Work Place';
                ApplicationArea = All;
            }
            field(App_Client_Work_Department; Rec.App_Client_Work_Department)
            {
                Caption = 'Departmemt';
                ApplicationArea = All;
            }
            field(App_Client_Work_Phone; Rec.App_Client_Work_Phone)
            {
                Caption = 'Work Phone No.';
                ApplicationArea = All;
            }
            field(App_Client_Occupation; Rec.App_Client_Occupation)
            {
                Caption = 'Occupation';
                ApplicationArea = All;
            }
            field(App_Client_Employer; Rec.App_Client_Employer)
            {
                Caption = 'Employer';
                ApplicationArea = All;
            }
            field(App_Client_Employment_Date; Rec.App_Client_Employment_Date)
            {
                Caption = 'Employement Date';
                ApplicationArea = All;
            }
            field("Client_Birth_Date	"; Rec."Client_Birth_Date")
            {
                Caption = 'Birth Date';
                ApplicationArea = All;
            }
            field(Client_Sector_Name; Rec.Client_Sector_Name)
            {
                Caption = 'Sector';
                ApplicationArea = All;
            }
            field(Location_Name; Rec.Location_Name)
            {
                Caption = 'Location';
                ApplicationArea = All;
            }
            field(Marital_Status_Name; Rec.Marital_Status_Name)
            {
                Caption = 'Marital Status';
                ApplicationArea = All;
            }
            field(Client_Iqama_Exp_Date; Rec.Client_Iqama_Exp_Date)
            {
                Caption = 'Expiry Date';
                ApplicationArea = All;
            }
            field(Client_Salary; Rec.Client_Salary)
            {
                Caption = 'Salary';
                ApplicationArea = All;
            }
            field(Client_Other_Income; Rec.Client_Other_Income)
            {
                Caption = 'Other Income';
                ApplicationArea = All;
            }
            field(Client_Total_Deductions; Rec.Client_Total_Deductions)
            {
                Caption = 'Total deduction';
                ApplicationArea = All;
            }
            field(Client_Net_Salary; Rec.Client_Net_Salary)
            {
                Caption = 'Net Salary';
                ApplicationArea = All;
            }
            field(Client_Housing_Rent_Fee; Rec.Client_Housing_Rent_Fee)
            {
                Caption = 'Housing Rent Fee';
                ApplicationArea = All;
            }
            field(Client_Education_Other; Rec.Client_Education_Other)
            {
                Caption = 'Education Other';
                ApplicationArea = All;
            }
            field(Client_Direct_Manager; Rec.Client_Direct_Manager)
            {
                Caption = 'Direct Manager';
                ApplicationArea = All;
            }
            field(Client_Full_Name_AR; Rec.Client_Full_Name_AR)
            {
                Caption = 'Full Name Arabic';
                ApplicationArea = All;
            }
            field(Client_Work_Place; Rec.Client_Work_Place)
            {
                Caption = 'Work Place';
                ApplicationArea = All;
            }
            field(Client_Employer; Rec.Client_Employer)
            {
                Caption = 'Employer';
                ApplicationArea = All;
            }
            field(Year_Name; Rec.Year_Name)
            {
                Caption = 'Year Name';
                ApplicationArea = All;
            }
            field(beneficiary; Rec.beneficiary)
            {
                Caption = 'Benificary';
                ApplicationArea = All;
            }
            field(Client_SubSector_Name; Rec.Client_SubSector_Name)
            {
                Caption = 'Sub Sector Name';
                ApplicationArea = All;
            }
            field(BeneficiaryIqama; Rec.BeneficiaryIqama)
            {
                Caption = 'Benificary Iqama';
                ApplicationArea = All;
            }
            field(BeneficiaryMobile; Rec.BeneficiaryMobile)
            {
                Caption = 'Benificary Mobile';
                ApplicationArea = All;
            }
            field(Client_Occupation; Rec.Client_Occupation)
            {
                Caption = 'Occupation';
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        addafter("Direct Debit Mandates")
        {
            action("Vehicle Information")
            {
                ApplicationArea = all;
                Caption = 'Contract Information';
                RunObject = Page "EVS_ContractInfo";
                RunPageLink = "Customer No." = Field("No.");
                Image = ContactReference;
                //RunPageLink = "No." = FIELD("No.");
                ToolTip = 'View or Add Vehicle Information of Customers';
            }

        }
        // addbefore("Vehicle Information")
        // {
        //     action("Activate")
        //     {
        //         ApplicationArea = all;
        //         Caption = 'Activate';
        //         Image = New;
        //         ToolTip = 'Activate Customers to automatically create sales invoice';
        //         trigger OnAction()
        //         begin
        //             CreateSalesInvoiceHeader(Rec);
        //         end;
        //     }

        // }
    }

    //     procedure CreateSalesInvoiceHeader(CustomerRec: Record Customer)
    //     var
    //         SalesHeader: Record "Sales Header";
    //         SalesLine: Record "Sales Line";
    //         Vehicle: Record EVS_ContractInfo;
    //         Item: Record Item;
    //         SalesSetup: Record "Sales & Receivables Setup";
    //         NoSeriesMgt: Codeunit "NoSeriesManagement";
    //         NewInvoiceNo: Code[20];
    //         LineNo: Integer;
    //     begin
    //         SalesHeader.Init();
    //         SalesHeader."Document Type" := SalesHeader."Document Type"::Invoice;
    //         SalesHeader."Sell-to Customer No." := CustomerRec."No.";
    //         SalesHeader."Sell-to Customer Name" := CustomerRec.Name;
    //         SalesHeader."Sell-to Address" := CustomerRec.Address;
    //         SalesHeader."Sell-to City" := CustomerRec.City;
    //         SalesHeader."Sell-to Post Code" := CustomerRec."Post Code";
    //         SalesHeader."Sell-to Contact" := CustomerRec.Contact;
    //         SalesSetup.Get();
    //         if not SalesSetup.Get() then
    //             Error('Sales & Receivables Setup is not configured.');
    //         NewInvoiceNo := NoSeriesMgt.GetNextNo(SalesSetup."Invoice Nos.", Today(), true);
    //         SalesHeader."No." := NewInvoiceNo;
    //         SalesHeader.Insert(true);

    //         //salesLine
    //         Vehicle.Init();
    //         Vehicle.SetRange("Customer No.", CustomerRec."No.");
    //         if Vehicle.Find('-') then begin
    //             if Vehicle."App_Insurance_Fees" > 0 then begin
    //                 if Item.Get('70000') then begin
    //                     SalesLine.Init();
    //                     SalesLine."Document Type" := SalesLine."Document Type"::Invoice;
    //                     SalesLine."Document No." := SalesHeader."No.";
    //                     SalesLine."Line No." := LineNo;
    //                     SalesLine.Type := SalesLine.Type::Item;
    //                     SalesLine."No." := Item."No.";
    //                     SalesLine.Description := Item.Description;
    //                     SalesLine.Quantity := 1;
    //                     SalesLine."Unit Price" := Item."Unit Price";
    //                     SalesLine."Unit of Measure" := Item."Base Unit of Measure";
    //                     SalesLine.Insert(true);

    //                     LineNo := LineNo + 10000;
    //                 end;
    //             end;

    //             if Vehicle."App_Down_Payment" > 0 then begin
    //                 if Item.Get('766BC-C') then begin
    //                     SalesLine.Init();
    //                     SalesLine."Document Type" := SalesLine."Document Type"::Invoice;
    //                     SalesLine."Document No." := SalesHeader."No.";
    //                     SalesLine."Line No." := LineNo;
    //                     SalesLine.Type := SalesLine.Type::Item;
    //                     SalesLine."No." := Item."No.";
    //                     SalesLine.Description := Item.Description;
    //                     SalesLine.Quantity := 1;
    //                     SalesLine."Unit Price" := Item."Unit Price";
    //                     SalesLine."Unit of Measure" := Item."Base Unit of Measure";
    //                     SalesLine.Insert(true);
    //                 end
    //             end;
    //         end else begin
    //             Error('No vehicle record found for customer %1.', CustomerRec."No.");
    //         end;
    //         Message('Sales Invoice %1 has been created for customer %2.', SalesHeader."No.", CustomerRec."No.");
    //     end;
}