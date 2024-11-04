table 50007 EVS_Consumer_Finance
{
    Caption = 'DAE_Consumer_Finance';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Currency Amount"; Decimal)
        {
            // Editable = false;
        }
        field(2; "Due Date"; Date)
        {
            // Editable = false;
        }
        field(3; "Base Paid"; Decimal)
        {

        }
        field(4; "Currency Paid"; Decimal)
        {
            // Editable = false;
        }
        field(5; "Paid Date"; Date)
        {

        }
        field(6; "Deferred Earnings"; Decimal)
        {
            //FieldClass = FlowField;
        }
        field(7; "Earnings Taken"; Decimal)
        {
            // Editable = false;
        }
        field(8; "Taken Date"; Date)
        {

        }
        field(9; Bank; Text[20])
        {

        }
        field(10; Reference; Code[50])
        {

        }
        field(11; Reference1; Code[50])
        {

        }
        field(12; Reference2; Code[50])
        {

        }
        field(13; "Hold Date"; Date)
        {

        }
        field(14; "Hold User"; Text[200])
        {

        }
        field(15; "Earn Date"; Date)
        {

        }
        field(16; "Contract No"; code[20])
        {

        }
        field(17; "Transaction Magic"; Integer)
        {

        }
        field(18; Sequence; Integer)
        {
            //Editable = false;
        }
        field(19; "Account Code"; Code[50])
        {

        }
        field(20; "Base Amount"; Decimal)
        {
            // trigger OnValidate()
            // var
            //     myInt: Integer;
            // begin
            //     Rec."Remaining Amount" := Rec."Base Amount";
            //     //Rec.Modify();
            // end;

        }
        field(21; "Dummy Values"; Decimal)
        {

        }
        //15-August-2024
        field(22; "Cash Reciept Document No"; Code[20])
        {
        }
        field(23; "Cash Receipt"; Code[20])
        {
            // Editable = false;
        }
        field(24; "CheckBox"; Boolean)
        {
        }
        //added by hani
        field(25; "Amount Paid"; Decimal)
        {
            // Editable = false;
        }
        field(26; "Status"; Option)
        {
            OptionMembers = " ","H","P","X";
        }
        field(27; "Fully Post"; Boolean)
        {
        }
        field(28; "Remaining Amount"; Decimal)
        {
            Editable = false;
        }
        field(29; "Payment Remaining Amount"; Decimal)
        {
            Editable = false;
        }
        field(30; "Payment Amount"; Decimal)
        {
            Editable = false;
            // FieldClass = FlowField;
            //CalcFormula = SUM("Gen. Journal Line"."Amount (LCY)" where("Account No." = field("Account code")));
        }
        field(31; "Allocated Amount"; Decimal)
        {
            Editable = false;
        }
        field(32; "Partially Post"; Boolean)
        {
        }

    }
    keys
    {
        key(PK; Sequence, "Account Code", "Contract No")
        {
            Clustered = true;
        }
    }

    // trigger OnInsert()
    // var
    //     myInt: Integer;
    // begin
    //     if Rec."Remaining Amount" = 0 then begin
    //         Rec."Remaining Amount" := Rec."Base Amount";
    //         // Rec.Modify()
    //     end
    // end;
}
