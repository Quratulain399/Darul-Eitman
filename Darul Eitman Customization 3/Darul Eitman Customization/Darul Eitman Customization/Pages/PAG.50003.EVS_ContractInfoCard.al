page 50003 EVS_ContractInfoCard
{
    PageType = Card;
    SourceTable = EVS_ContractInfo;
    Caption = 'Create New Vehicle';
    layout
    {
        area(Content)
        {
            group("Refrences")
            {
                field("Customer No."; Rec."Customer No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("ContractNo"; Rec."ContractNo")
                {
                    Caption = 'Contract No.';
                    ApplicationArea = All;

                }
                field("VehicleNo"; Rec."VehicleNo")
                {
                    Caption = 'Vehicle No.';
                    ApplicationArea = All;

                }
                field("InvoiceNo"; Rec."InvoiceNo")
                {
                    Caption = 'Invoice No.';
                    ApplicationArea = All;
                    Editable = false;
                    trigger OnDrillDown()
                    var
                        tbl_salesInvoice: Record "Sales Header";
                        tbl_PostedSalesInvoice: Record "Sales Invoice Header";
                    begin
                        tbl_salesInvoice.Init();
                        tbl_salesInvoice.Reset();
                        tbl_salesInvoice.SetRange("No.", rec.InvoiceNo);
                        if tbl_salesInvoice.Find('-') then begin
                            PAGE.Run(PAGE::"Sales invoice", tbl_salesInvoice);
                        end
                        else begin
                            tbl_PostedSalesInvoice.Init();
                            tbl_PostedSalesInvoice.Reset();
                            tbl_PostedSalesInvoice.SetRange("Pre-Assigned No.", rec.InvoiceNo);
                            if tbl_PostedSalesInvoice.Find('-') then begin
                                PAGE.Run(PAGE::"Posted Sales Invoice", tbl_PostedSalesInvoice);
                            end

                        end;
                    end;
                }
                field("CreditMemoNo"; Rec."CreditMemoNo")
                {
                    Caption = 'Credit Memo No.';
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Application_ID; Rec.Application_ID)
                {
                    Caption = 'Application Id.';
                    ApplicationArea = All;
                }
                field(Application_Code; Rec.Application_Code)
                {
                    Caption = 'Application Code';
                    ApplicationArea = All;
                }
                field(User_Name; Rec.User_Name)
                {
                    Caption = 'User Name';
                    ApplicationArea = All;
                }
                field(PrintDate; Rec.PrintDate)
                {
                    Caption = 'Print Date';
                    ApplicationArea = All;
                }
                field(SubProduct_Type_ID; Rec.SubProduct_Type_ID)
                {
                    Caption = 'Sub Product Type Id.';
                    ApplicationArea = All;
                }
                field(SubProduct_Type_Name; Rec.SubProduct_Type_Name)
                {
                    Caption = 'Sub Product Type Name';
                    ApplicationArea = All;
                }

                field(UNNNo; Rec.UNNNo)
                {
                    Caption = 'UN No.';
                    ApplicationArea = All;
                }
                field(App_Date; Rec.App_Date)
                {
                    Caption = 'Date';
                    ApplicationArea = All;
                }
                // field(AppContractNo; Rec.AppContractNo)
                // {
                //     Caption = 'Contract No.';
                //     ApplicationArea = All;
                // }
                field(CodePrefix; Rec.CodePrefix)
                {
                    Caption = 'Code Prefix';
                    ApplicationArea = All;
                }
                field(CRNo; Rec.CRNo)
                {
                    Caption = 'CR No.';
                    ApplicationArea = All;
                }
                field(Client_SubSector_ID; Rec.Client_SubSector_ID)
                {
                    Caption = 'Sub Sector ID';
                    ApplicationArea = All;
                }
                field(Product_ID; Rec.Product_ID)
                {
                    Caption = 'Product Id.';
                    ApplicationArea = All;
                }
                field(Product_Type; Rec.Product_Name)
                {
                    Caption = 'Product Name';
                    ApplicationArea = All;
                }

            }
            group("Third Party Codes")
            {
                field(CountryISO3; Rec.CountryISO3)
                {
                    Caption = 'Country ISO.';
                    ApplicationArea = All;
                }
                field(Gender_Code; Rec.Gender_Code)
                {
                    Caption = 'Gender Code';
                    ApplicationArea = All;
                }
                field(Code_City; Rec.Code_City)
                {
                    Caption = 'City Code';
                    ApplicationArea = All;
                }
                field(Code_MaritalStatus; Rec.Code_MaritalStatus)
                {
                    Caption = 'Marital Status Code';
                    ApplicationArea = All;
                }
                field(Code_Id; Rec.Code_Id)
                {
                    Caption = 'Code ID.';
                    ApplicationArea = All;
                }
                field(Marital_code; Rec.Marital_code)
                {
                    Caption = 'Marital Code';
                    ApplicationArea = All;
                }
                field(City_Code; Rec.City_Code)
                {
                    Caption = 'City Code';
                    ApplicationArea = All;
                }
                field(Country_Code; Rec.Country_Code)
                {
                    Caption = 'Country Code';
                    ApplicationArea = All;
                }
                field(Car_Classification_code; Rec.Car_Classification_code)
                {
                    Caption = 'Car Classification Code';
                    ApplicationArea = All;
                }

            }
            group("Vehicle Information")
            {
                field(Car_Model_Name; Rec.Car_Model_Name)
                {
                    Caption = 'Car Model Name';
                    ApplicationArea = All;
                }
                field(App_Car_Chassis; Rec.App_Car_Chassis)
                {
                    Caption = 'Car Chasis';
                    ApplicationArea = All;
                }
                field(App_Car_Body_Color; Rec.App_Car_Body_Color)
                {

                    Caption = 'Car Body Color';
                    ApplicationArea = All;
                }
                field(Car_Brand_Name; Rec.Car_Brand_Name)
                {
                    Caption = 'Car Brand Name';
                    ApplicationArea = All;
                }
                field(Agency_Name; Rec.Agency_Name)
                {
                    Caption = 'Car Agency Name';
                    ApplicationArea = All;
                }
            }
            group("Finance Information")
            {
                field(App_Down_Payment; Rec.App_Down_Payment)
                {
                    Caption = 'Down Payment';
                    ApplicationArea = All;
                }
                field(App_Down_Payment_Prec; Rec.App_Down_Payment_Prec)
                {
                    Caption = 'Down Payment Pre';
                    ApplicationArea = All;
                }
                field(App_Total_Liability; Rec.App_Total_Liability)
                {
                    Caption = 'Total Liability';
                    ApplicationArea = All;
                }
                field(App_Balloon_Payment; Rec.App_Balloon_Payment)
                {
                    Caption = 'Ballon Payement';
                    ApplicationArea = All;
                }
                field(App_Balloon_Payment_Prec; Rec.App_Balloon_Payment_Prec)
                {
                    Caption = 'Ballon Payement Pre';
                    ApplicationArea = All;
                }
                field(App_Car_Value; Rec.App_Car_Value)
                {
                    Caption = 'Car Value';
                    ApplicationArea = All;
                }
                field(App_monthly_Installment; Rec.App_monthly_Installment)
                {
                    Caption = 'Monthly Installment';
                    ApplicationArea = All;
                }
                field(App_Actual_Installment_Months; Rec.App_Actual_Installment_Months)
                {
                    Caption = 'Actual Monthly Installment';
                    ApplicationArea = All;
                }
                field(App_Total_Installment_Months; Rec.App_Total_Installment_Months)
                {
                    Caption = 'Total Installments Months';
                    ApplicationArea = All;
                }
                field(APR; Rec.APR)
                {
                    Caption = 'APR';
                    ApplicationArea = All;
                }
                field(App_Insurance_Fees; Rec.App_Insurance_Fees)
                {
                    Caption = 'Insurance Fees';
                    ApplicationArea = All;
                }
                field(App_To_Finance; Rec.App_To_Finance)
                {
                    Caption = 'To Finance';
                    ApplicationArea = All;
                }
                field(App_Admin_Fees; Rec.App_Admin_Fees)
                {
                    Caption = 'Admin Fees';
                    ApplicationArea = All;
                }
                field(App_Interest_Rate; Rec.App_Interest_Rate)
                {
                    Caption = 'Interest Rate';
                    ApplicationArea = All;
                }
                field(InsuranceValueYear1; Rec.InsuranceValueYear1)
                {
                    Caption = 'Insurance Value Year 1';
                    ApplicationArea = All;
                }
            }
            group("Insurance Detail")
            {
                group("Insurance Premium")
                {
                    field("Insurance Year1"; Rec."Insurance Year1")
                    {
                        Caption = 'Insurance Year 1';
                        ApplicationArea = All;
                    }
                    field("Insurance Year2"; Rec."Insurance Year2")
                    {
                        Caption = 'Insurance Year 2';
                        ApplicationArea = All;
                    }
                    field("Insurance Year3"; Rec."Insurance Year3")
                    {
                        Caption = 'Insurance Year 3';
                        ApplicationArea = All;
                    }
                    field("Insurance Year4"; Rec."Insurance Year4")
                    {
                        Caption = 'Insurance Year 4';
                        ApplicationArea = All;
                    }
                    field("Insurance Year5"; Rec."Insurance Year5")
                    {
                        Caption = 'Insurance Year 5';
                        ApplicationArea = All;
                    }
                }
                group(Taken)
                {
                    field("Insurance taken Year1"; Rec."Insurance taken Year1")
                    {
                        Caption = 'Insurance Year 1';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year2"; Rec."Insurance taken Year2")
                    {
                        Caption = 'Insurance Year 2';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year3"; Rec."Insurance taken Year3")
                    {
                        Caption = 'Insurance Year 3';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year4"; Rec."Insurance taken Year4")
                    {
                        Caption = 'Insurance Year 4';
                        ApplicationArea = All;
                    }
                    field("Insurance taken Year5"; Rec."Insurance taken Year5")
                    {
                        Caption = 'Insurance Year 5';
                        ApplicationArea = All;
                    }
                }
            }
        }
        area(FactBoxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50001),
                              "No." = FIELD("VehicleNo");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(FinanceScheme)
            {
                ApplicationArea = all;
                Caption = 'Finance Scheme';
                RunObject = Page EVS_FinanceScheme;
                RunPageLink = "Customer No." = field("Customer No."), "ContractNo" = Field("ContractNo");
                Image = IssueFinanceCharge;
                ToolTip = 'View finance scheme of the related customer.';
            }
            action(PrintReleaseOrder)
            {
                ApplicationArea = All;
                Caption = 'Print Release Order';
                image = Print;

                trigger OnAction()
                var
                    myInt: Integer;

                begin
                    Clear(myReport);
                    myInvoice := Rec."Customer No.";
                    Commit();
                    // myReport.UseRequestPage(true);
                    myReport.SetParam(myInvoice);
                    myReport.Run();
                end;
            }
        }


    }

    var
        myInt: Integer;
        myReport: Report ReleaseOrder;
        myInvoice: Text;
}

