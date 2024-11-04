report 50100 ReleaseOrder
{
    // UsageCategory = ReportsAndAnalysis;
    // ApplicationArea = All;
    RDLCLayout = 'RDLC_Layouts/EVS_ReleaseOrder.rdl';
    Caption = 'Print Release Order';
    EnableExternalImages = true;

    dataset
    {
        dataitem(Header; Customer)
        {
            RequestFilterFields = "No.";

            column(CurrDate; CurrDate)
            {
            }
            column(CurrTime; CurrTime)
            {
            }

            column(Client_Birth_Date_; Header."Client_Birth_Date")
            {
            }
            column(City; Header."City")
            {
            }
            column(Client_Full_Name_AR; Header."Client_Full_Name_AR")
            {
            }
            column(Client_Iqama_ID; Header."Client_Iqama_ID")
            {
            }
            column(No_; Header."No.")
            {
            }
            column(Year_Name; Header."Year_Name")
            {
            }
            dataitem(line; EVS_ContractInfo)
            {
                DataItemLink = "Customer No." = field("No.");
                DataItemLinkReference = header;

                column(App_Car_Chassis; "App_Car_Chassis")
                {
                }
                column(App_Car_Body_Color; "App_Car_Body_Color")
                {
                }
                column(Car_Model_Name; "Car_Model_Name")
                {
                }
                column(Car_Brand_Name; "Car_Brand_Name")
                {
                }
                column(Agency_Name; "Agency_Name")
                {
                }
                column(App_Car_Value; "App_Car_Value")
                {
                }
                column(Customer_No_; "Customer No.")
                {
                }
                column(App_Date; App_Date)
                {
                }
            }
            trigger OnPreDataItem()
            var
                myInt: Integer;
                CurrentDate: Date;
            begin
                SetRange(header."No.", myInvoice);

            end;



        }



    }
    procedure SetParam(myInvoiceRec: Text)
    var
        myInt: Integer;
    begin
        myInvoice := myInvoiceRec;
    end;

    var
        myInt: Integer;
        myInvoice: Text;
        CurrDate: Date;
        CurrTime: Time;

    trigger OnPreReport()
    begin
        CurrDate := Today();
        CurrTime := System.Time;
    end;
}
