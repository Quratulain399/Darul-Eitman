// table 50010 EVS_FinanceSchdeule
// {
//     Caption = 'EVS_FinanceSchdeule';
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "Transaction magic"; Integer)
//         {
//             Caption = 'Transaction magic';

//         }
//         field(2; "Account code"; Code[50])
//         {
//             Caption = 'Account code';
//         }
//         field(3; Department; Code[50])
//         {
//             Caption = 'Department';
//         }
//         field(4; "Finance scheme"; Code[50])
//         {
//             Caption = 'Finance Scheme';
//         }
//         field(5; Flatrate; Decimal)
//         {
//             Caption = 'Flatrate';
//         }
//         field(6; Term; Integer)
//         {
//             Caption = 'Term';
//         }
//         field(7; "First guarantor"; Code[50])
//         {
//             Caption = 'First Guarantor';
//         }
//         field(8; "Second guarantor"; Code[50])
//         {
//             Caption = 'Second Guarantor';
//         }
//         field(9; "Gaurantor names_1"; Code[50])
//         {
//             Caption = 'Gaurantor Names 1';
//         }
//         field(10; "Gaurantor names_2"; Code[50])
//         {
//             Caption = 'Gaurantor Names 2';
//         }
//         field(11; "Sales input document"; Code[50])
//         {
//             Caption = 'Sales Input document';
//         }
//         field(12; Cashprice; Decimal)
//         {
//             Caption = 'Cash Price';
//         }
//         field(13; Discount; Decimal)
//         {
//             Caption = 'Discount';
//         }
//         field(14; "Down payment"; Decimal)
//         {
//             Caption = 'Down payment';
//             Editable = false;
//         }
//         field(15; "Trade In"; Decimal)
//         {
//             Caption = 'Trade In';
//         }
//         field(16; "Misc charges"; Decimal)
//         {
//             Caption = 'Misc. charges';
//         }
//         field(17; "Net Finance amount"; Decimal)
//         {
//             Caption = 'Net Finance Amount';
//         }
//         field(18; "Finance Charges"; Decimal)
//         {
//             Caption = 'Finance Charges';
//         }
//         field(19; "Gross Balance"; Decimal)
//         {
//             Caption = 'Gross Balance';
//         }
//         field(20; "Baloon-Check"; Decimal)
//         {
//             Caption = 'Baloon-Check';
//         }
//         field(21; "Loss provision"; Decimal)
//         {
//             Caption = 'Loss provision';
//         }
//         field(22; Insurance; Decimal)
//         {
//             Caption = 'Insurance';
//         }
//         field(23; Status; Code[50])
//         {
//             Caption = 'Status';
//         }
//         field(24; "NPV Rate"; Decimal)
//         {
//             Caption = 'NPV Rate';
//         }
//         field(25; "Status change date"; Date)
//         {
//             Caption = 'Status change date';
//         }
//         field(26; "Credit rating"; Decimal)
//         {
//             Caption = 'Credit Rating';
//         }
//         field(27; "Worst credit rating"; Decimal)
//         {
//             Caption = 'Worst credit Rating';
//         }
//         field(28; "Custody Branch"; Code[25])
//         {
//             Caption = 'Custody Branch';
//         }
//         field(29; "Custody type"; Decimal)
//         {
//             Caption = 'Custody type';
//         }
//         field(30; "Custody status"; Code[25])
//         {
//             Caption = 'Custody status';
//         }
//         field(31; "Last payment amount"; Decimal)
//         {
//             Caption = 'Last payment amount';
//         }
//         field(32; "Deal enddate"; Date)
//         {
//             Caption = 'Deal End date';
//         }
//         field(33; "Insurance Year1"; Decimal)
//         {
//             Caption = 'Insurance Year 1';
//         }
//         field(34; "Insurance Year2"; Decimal)
//         {
//             Caption = 'Insurance Year 2';
//         }
//         field(35; "Insurance Year3"; Decimal)
//         {
//             Caption = 'Insurance Year 3';
//         }
//         field(36; "Insurance Year4"; Decimal)
//         {
//             Caption = 'Insurance Year 4';
//         }
//         field(37; "Insurance Year5"; Decimal)
//         {
//             Caption = 'Insurance Year 5';
//         }
//         field(38; "Insurance taken Year1"; Decimal)
//         {
//             Caption = 'Insurance Taken Year 1';
//         }
//         field(39; "Insurance taken Year2"; Decimal)
//         {
//             Caption = 'Insurance Taken Year 2';
//         }
//         field(40; "Insurance taken Year3"; Decimal)
//         {
//             Caption = 'Insurance Taken Year 3';
//         }
//         field(41; "Insurance taken Year4"; Decimal)
//         {
//             Caption = 'Insurance Taken Year 4';
//         }
//         field(42; "Insurance taken Year5"; Decimal)
//         {
//             Caption = 'Insurance Taken Year 5';
//         }
//         field(43; "Lease ins start date"; Date)
//         {
//             Caption = 'Lease ins Start Date';
//         }
//         field(44; Collector; Text[200])
//         {
//             Caption = 'Collector';
//         }
//         field(45; "Legal executive"; Text[100])
//         {
//             Caption = 'Legal Executive';
//         }
//         field(46; "Approver code"; Code[50])
//         {
//             Caption = 'Approver code';
//         }
//         field(47; "Early settl. rebate"; Integer)
//         {
//             Caption = 'Early settl. rebate';
//         }
//         field(48; "Outstanding interest"; Decimal)
//         {
//             Caption = 'Outstanding interest';
//         }
//         field(49; "Outstanding Insuranc"; Decimal)
//         {
//             Caption = 'Outstanding Insurance';
//         }
//         field(50; "Contract No"; Code[20])
//         {
//             Caption = 'Contract No';
//         }
//         //16-August-2024
//         field(51; "Installments"; Integer)
//         {
//             //CalcFormula = Max("EVS_Consumer_Finance"."Sequence" where("Account Code" = filter('U0022571'), "Contract No" = filter('U0022571')));
//             CalcFormula = count("EVS_Consumer_Finance" where("Account Code" = field("Account code"), "Contract No" = field("Contract No"), Status = filter(<> X)));
//             Caption = 'Installments';
//             Editable = false;
//             FieldClass = FlowField;
//         }
//         field(52; "Earnings"; Decimal)
//         {
//             FieldClass = FlowField;
//             CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Total Earnings';
//             Editable = false;
//         }
//         field(53; "Total Currency Amount"; Decimal)
//         {
//             CalcFormula = SUM("EVS_Consumer_Finance"."Currency Amount" where("Account Code" = field("Account code")));
//             Caption = 'Total Currency Amount';
//             Editable = false;
//             FieldClass = FlowField;
//         }
//         field(54; "Total Currency Paid"; Decimal)
//         {
//             CalcFormula = SUM("EVS_Consumer_Finance"."Currency Paid" where("Account Code" = field("Account code")));
//             Caption = 'Total Currency Paid';
//             Editable = false;
//             FieldClass = FlowField;
//         }
//         field(55; "Installments Paid"; Decimal)
//         {
//             //CalcFormula = SUM("DAE_Consumer_Finance"."Currency Paid" where("Account Code" = field("Account code")));
//             Caption = 'Installments Paid';
//             Editable = false;
//             //FieldClass = FlowField;
//         }
//         field(56; "Installments Overdue"; Decimal)
//         {
//             //CalcFormula = SUM("DAE_Consumer_Finance"."Currency Paid" where("Account Code" = field("Account code")));
//             Caption = 'Installments Overdue';
//             Editable = false;
//             //FieldClass = FlowField;
//         }
//         field(57; "Installments Not Due"; Decimal)
//         {
//             //CalcFormula = SUM("DAE_Consumer_Finance"."Currency Paid" where("Account Code" = field("Account code")));
//             Caption = 'Installments Not Due';
//             Editable = false;
//             //FieldClass = FlowField;
//         }
//         field(58; "Value"; Decimal)
//         {
//             FieldClass = FlowField;
//             CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Account code"), "Contract No" = field("Contract No"), Status = filter(<> X)));
//             Caption = 'Value';
//             Editable = false;
//         }
//         //16-August-2024

//         //added by hani
//         field(59; "Outstanding_Earnings"; Decimal)
//         {
//             FieldClass = FlowField;
//             CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Account code"), "Contract No" = field("Contract No"), Status = filter(<> X)));
//             Caption = 'Value';
//             Editable = false;
//         }
//         field(60; "Outstanding_Value"; Decimal)
//         {
//             FieldClass = FlowField;
//             CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Account code"), "Contract No" = field("Contract No"), Status = filter(<> X)));
//             Caption = 'Value';
//             Editable = false;
//         }
//         field(61; "Paid_Value"; Decimal)
//         {
//             CalcFormula = Sum(EVS_Consumer_Finance."Amount Paid" where("Account Code" = field("Account code"), "Contract No" = field("Contract No"), Status = CONST(X)));
//             FieldClass = FlowField;
//             Caption = 'Value';
//             Editable = false;
//         }
//         field(62; "Paid_Earnings"; Decimal)
//         {
//             CalcFormula = SUM("EVS_Consumer_Finance"."Earnings Taken" where("Account Code" = field("Account code"), "Contract No" = field("Contract No"), Status = CONST(X)));
//             Caption = 'Total Earnings';
//             Editable = false;
//             FieldClass = FlowField;
//         }
//         field(63; "Paid_Installments"; Integer)
//         {
//             CalcFormula = count(EVS_Consumer_Finance where("Account Code" = field("Account code"), "Contract No" = field("Contract No"), Status = CONST(X)));
//             Caption = 'Installments';
//             Editable = false;
//             FieldClass = FlowField;
//         }
//         field(64; "NotDue_Installments"; Integer)
//         {
//             //CalcFormula = Max("EVS_Consumer_Finance"."Sequence" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Installments';
//             Editable = false;
//             //FieldClass = FlowField;
//         }
//         field(65; "NotDue_Value"; Decimal)
//         {
//             // CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Value';
//             Editable = false;
//             //FieldClass = FlowField;
//         }
//         field(66; "NotDue_Earnings"; Decimal)
//         {
//             // CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Total Earnings';
//             Editable = false;
//             //FieldClass = FlowField;
//         }
//         field(67; "OverDue_Installments"; Integer)
//         {
//             //CalcFormula = Max("EVS_Consumer_Finance"."Sequence" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));  
//             Caption = 'Overdue Installments';
//             Editable = false;
//             //FieldClass = FlowField;
//         }



//         field(68; "OverDue_Value"; Decimal)
//         {
//             // CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Value';
//             Editable = false;
//             //FieldClass = FlowField;
//         }
//         field(69; "OverDue_Earnings"; Decimal)
//         {
//             //CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Total Earnings';
//             Editable = false;
//             // FieldClass = FlowField;
//         }
//         field(70; "Deal_Installments"; Integer)
//         {
//             CalcFormula = count(EVS_Consumer_Finance where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Installments';
//             Editable = false;
//             FieldClass = FlowField;
//         }
//         field(71; "Deal_Value"; Decimal)
//         {
//             CalcFormula = SUM("EVS_Consumer_Finance"."Base Amount" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Value';
//             Editable = false;
//             FieldClass = FlowField;
//         }
//         field(72; "Deal_Earnings"; Decimal)
//         {
//             CalcFormula = SUM("EVS_Consumer_Finance"."Deferred Earnings" where("Account Code" = field("Account code"), "Contract No" = field("Contract No")));
//             Caption = 'Total Earnings';
//             Editable = false;
//             FieldClass = FlowField;
//         }

//     }


//     keys
//     {
//         key(PK; "Account code", "Department", "Contract No")
//         {
//             Clustered = true;
//         }
//     }
// }
