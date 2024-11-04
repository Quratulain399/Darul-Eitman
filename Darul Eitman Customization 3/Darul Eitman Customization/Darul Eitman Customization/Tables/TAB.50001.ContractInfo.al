table 50001 EVS_ContractInfo
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "VehicleNo"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Application_ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Application_Code; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; User_Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; PrintDate; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(7; SubProduct_Type_Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(8; SubProduct_Type_ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(9; UNNNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(10; App_Date; Datetime)
        {
            DataClassification = ToBeClassified;
        }
        field(11; AppContractNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(12; CodePrefix; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(13; CRNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(14; Client_SubSector_ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        // New Group
        field(15; CountryISO3; Code[3])
        {
            DataClassification = ToBeClassified;
        }
        field(16; Gender_Code; text[10])
        {
            // OptionMembers = Male,Female;
            DataClassification = ToBeClassified;
        }
        field(17; Code_City; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(18; Code_MaritalStatus; text[100])
        {
            //OptionMembers = Married,"Un-Married",Divorced,Single;
            DataClassification = ToBeClassified;
        }
        field(19; Code_Id; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(20; Marital_code; text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(21; City_Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(22; Country_Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(23; Car_Classification_code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        //New Group
        field(24; Car_Model_Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(25; App_Car_Chassis; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(26; App_Car_Body_Color; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(27; Car_Brand_Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(28; Agency_Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        //Finance
        field(29; App_Down_Payment; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(30; App_Down_Payment_Prec; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(31; App_Total_Liability; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(32; App_Balloon_Payment; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(33; App_Balloon_Payment_Prec; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(34; App_Car_Value; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(35; App_monthly_Installment; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(36; App_Actual_Installment_Months; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(37; App_Total_Installment_Months; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(38; APR; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(39; App_Insurance_Fees; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(40; App_To_Finance; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(41; App_Admin_Fees; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(42; App_Interest_Rate; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(43; InsuranceValueYear1; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(44; "Insurance Year2"; Decimal)
        {
            Caption = 'Insurance Year 2';
        }
        field(45; "Insurance Year3"; Decimal)
        {
            Caption = 'Insurance Year 3';
        }
        field(46; "Insurance Year4"; Decimal)
        {
            Caption = 'Insurance Year 4';
        }
        field(47; "Insurance Year5"; Decimal)
        {
            Caption = 'Insurance Year 5';
        }
        field(48; "Insurance taken Year1"; Decimal)
        {
            Caption = 'Insurance Taken Year 1';
        }
        field(49; "Insurance taken Year2"; Decimal)
        {
            Caption = 'Insurance Taken Year 2';
        }
        field(50; "Insurance taken Year3"; Decimal)
        {
            Caption = 'Insurance Taken Year 3';
        }
        field(51; "Insurance taken Year4"; Decimal)
        {
            Caption = 'Insurance Taken Year 4';
        }
        field(52; "Insurance taken Year5"; Decimal)
        {
            Caption = 'Insurance Taken Year 5';
        }
        field(53; "Insurance Year1"; Decimal)
        {
            Caption = 'Insurance Year 1';
        }
        field(55; "Transaction magic"; Integer)
        {
            Caption = 'Transaction magic';

        }
        // field(56; "Account code"; Code[50])
        // {
        //     Caption = 'Account code';
        // }
        field(57; Department; Code[50])
        {
            Caption = 'Department';
        }
        field(58; "Finance scheme"; Code[50])
        {
            Caption = 'Finance Scheme';
        }
        field(59; Flatrate; Decimal)
        {
            Caption = 'Flatrate';
        }
        field(60; Term; Integer)
        {
            Caption = 'Term';
        }
        field(61; "First guarantor"; Code[50])
        {
            Caption = 'First Guarantor';
        }
        field(62; "Second guarantor"; Code[50])
        {
            Caption = 'Second Guarantor';
        }
        field(63; "Gaurantor names_1"; Code[50])
        {
            Caption = 'Gaurantor Names 1';
        }
        field(64; "Gaurantor names_2"; Code[50])
        {
            Caption = 'Gaurantor Names 2';
        }
        field(65; "Sales input document"; Code[50])
        {
            Caption = 'Sales Input document';
        }
        field(66; Cashprice; Decimal)
        {
            Caption = 'Cash Price';
        }
        field(67; Discount; Decimal)
        {
            Caption = 'Discount';
        }
        field(68; "Down payment"; Decimal)
        {
            Caption = 'Down payment';
            Editable = false;
        }
        field(69; "Trade In"; Decimal)
        {
            Caption = 'Trade In';
        }
        field(70; "Misc charges"; Decimal)
        {
            Caption = 'Misc. charges';
        }
        field(71; "Net Finance amount"; Decimal)
        {
            Caption = 'Net Finance Amount';
        }
        field(72; "Finance Charges"; Decimal)
        {
            Caption = 'Finance Charges';
        }
        field(73; "Gross Balance"; Decimal)
        {
            Caption = 'Gross Balance';
        }
        field(74; "Baloon-Check"; Decimal)
        {
            Caption = 'Baloon-Check';
        }
        field(75; "Loss provision"; Decimal)
        {
            Caption = 'Loss provision';
        }
        field(76; Insurance; Decimal)
        {
            Caption = 'Insurance';
        }
        field(77; Status; Code[50])
        {
            Caption = 'Status';
        }
        field(78; "NPV Rate"; Decimal)
        {
            Caption = 'NPV Rate';
        }
        field(79; "Status change date"; Date)
        {
            Caption = 'Status change date';
        }
        field(80; "Credit rating"; Decimal)
        {
            Caption = 'Credit Rating';
        }
        field(81; "Worst credit rating"; Decimal)
        {
            Caption = 'Worst credit Rating';
        }
        field(82; "Custody Branch"; Code[25])
        {
            Caption = 'Custody Branch';
        }
        field(83; "Custody type"; Decimal)
        {
            Caption = 'Custody type';
        }
        field(84; "Custody status"; Code[25])
        {
            Caption = 'Custody status';
        }
        field(85; "Last payment amount"; Decimal)
        {
            Caption = 'Last payment amount';
        }
        field(86; "Deal enddate"; Date)
        {
            Caption = 'Deal End date';
        }
        field(97; "Lease ins start date"; Date)
        {
            Caption = 'Lease ins Start Date';
        }
        field(98; Collector; Text[200])
        {
            Caption = 'Collector';
        }
        field(99; "Legal executive"; Text[100])
        {
            Caption = 'Legal Executive';
        }
        field(100; "Approver code"; Code[50])
        {
            Caption = 'Approver code';
        }
        field(101; "Early settl. rebate"; Integer)
        {
            Caption = 'Early settl. rebate';
        }
        field(102; "Outstanding interest"; Decimal)
        {
            Caption = 'Outstanding interest';
        }
        field(103; "Outstanding Insuranc"; Decimal)
        {
            Caption = 'Outstanding Insurance';
        }
        // field(104; "Contract No"; Code[20])
        // {
        //     Caption = 'Contract No';
        // }
        //16-August-2024
        field(105; "Installments"; Integer)
        {
            //CalcFormula = Max("EVS_Consumer_Finance"."Sequence" where("Account Code" = filter('U0022571'), "Contract No" = filter('U0022571')));
            CalcFormula = count("EVS_Consumer_Finance" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo"), Status = filter(<> X)));
            Caption = 'Installments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; "Earnings"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo")));
            Caption = 'Total Earnings';
            Editable = false;
        }
        field(126; "Total Currency Amount"; Decimal)
        {
            CalcFormula = SUM("EVS_Consumer_Finance"."Currency Amount" where("Account Code" = field("Customer No.")));
            Caption = 'Total Currency Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "Total Currency Paid"; Decimal)
        {
            CalcFormula = SUM("EVS_Consumer_Finance"."Currency Paid" where("Account Code" = field("Customer No.")));
            Caption = 'Total Currency Paid';
            Editable = false;
            FieldClass = FlowField;
        }
        field(108; "Installments Paid"; Decimal)
        {
            //CalcFormula = SUM("DAE_Consumer_Finance"."Currency Paid" where("Account Code" = field("Account code")));
            Caption = 'Installments Paid';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(109; "Installments Overdue"; Decimal)
        {
            //CalcFormula = SUM("DAE_Consumer_Finance"."Currency Paid" where("Account Code" = field("Account code")));
            Caption = 'Installments Overdue';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(110; "Installments Not Due"; Decimal)
        {
            //CalcFormula = SUM("DAE_Consumer_Finance"."Currency Paid" where("Account Code" = field("Account code")));
            Caption = 'Installments Not Due';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(111; "Value"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo"), Status = filter(<> X)));
            Caption = 'Value';
            Editable = false;
        }
        //16-August-2024

        //added by hani
        field(112; "Outstanding_Earnings"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo"), Status = filter(<> X)));
            Caption = 'Value';
            Editable = false;
        }
        field(113; "Outstanding_Value"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo"), Status = filter(<> X)));
            Caption = 'Value';
            Editable = false;
        }
        field(114; "Paid_Value"; Decimal)
        {
            CalcFormula = Sum(EVS_Consumer_Finance."Amount Paid" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo"), Status = CONST(X)));
            FieldClass = FlowField;
            Caption = 'Value';
            Editable = false;
        }
        field(115; "Paid_Earnings"; Decimal)
        {
            CalcFormula = SUM("EVS_Consumer_Finance"."Earnings Taken" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo"), Status = CONST(X)));
            Caption = 'Total Earnings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(116; "Paid_Installments"; Integer)
        {
            CalcFormula = count(EVS_Consumer_Finance where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo"), Status = CONST(X)));
            Caption = 'Installments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(117; "NotDue_Installments"; Integer)
        {
            //CalcFormula = Max("EVS_Consumer_Finance"."Sequence" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
            Caption = 'Installments';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(118; "NotDue_Value"; Decimal)
        {
            // CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
            Caption = 'Value';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(119; "NotDue_Earnings"; Decimal)
        {
            // CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
            Caption = 'Total Earnings';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(120; "OverDue_Installments"; Integer)
        {
            //CalcFormula = Max("EVS_Consumer_Finance"."Sequence" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));  
            Caption = 'Overdue Installments';
            Editable = false;
            //FieldClass = FlowField;
        }



        field(121; "OverDue_Value"; Decimal)
        {
            // CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
            Caption = 'Value';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(122; "OverDue_Earnings"; Decimal)
        {
            //CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
            Caption = 'Total Earnings';
            Editable = false;
            // FieldClass = FlowField;
        }
        field(123; "Deal_Installments"; Integer)
        {
            CalcFormula = count(EVS_Consumer_Finance where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo")));
            Caption = 'Installments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(124; "Deal_Value"; Decimal)
        {
            CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo")));
            Caption = 'Value';
            Editable = false;
            FieldClass = FlowField;
        }
        field(125; "Deal_Earnings"; Decimal)
        {
            CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Customer No."), "Contract No" = field("VehicleNo")));
            Caption = 'Total Earnings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(127; Product_Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(128; Product_ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(129; ContractNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(130; VehicleStatus; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "New","Active","Close","Cancel";
        }
        field(131; InvoiceNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(132; CreditMemoNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(Key1; "Customer No.", "ContractNo", VehicleNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}