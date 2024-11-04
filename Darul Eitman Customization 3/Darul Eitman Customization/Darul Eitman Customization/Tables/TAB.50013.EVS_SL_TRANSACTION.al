table 50013 EVS_SL_TRANSACTION
{
    Caption = 'DAE_SL_TRANSACTION';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Description; Text[200])
        {
            Caption = 'Description';
        }
        field(2; "System match number"; BigInteger)
        {
            Caption = 'System match number';
        }
        field(3; "Account code"; Code[50])
        {
            Caption = 'Account Code';
        }
        field(4; "Customer reference"; Code[50])
        {
            Caption = 'Customer Reference';
        }
        field(5; "Document number"; Code[20])
        {
            Caption = 'Document Number';
        }
        field(6; "Document date"; Date)
        {
            Caption = 'Document Date';
        }
        field(7; "Document type"; Code[20])
        {
            Caption = 'Document Type';
        }
        field(8; "Due date"; Date)
        {
            Caption = 'Due Date';
        }
        field(9; "Document base total"; Decimal)
        {
            Caption = 'Document Base Total';
        }
        field(10; "Document curr total"; Decimal)
        {
            Caption = 'Document Curr Total';
        }
        field(11; "Daybook number"; BigInteger)
        {
            Caption = 'Daybook number';
        }
        field(12; "Posting (daybk) date"; Date)
        {
            Caption = 'Posting (daybk) date';
        }
        field(13; "Amount paid (base)"; Decimal)
        {
            Caption = 'Amount paid (Base)';
        }
        field(14; "Amount paid (curr)"; Decimal)
        {
            Caption = 'Amount paid (curr)';
        }
        field(15; "Last payment date"; Date)
        {
            Caption = 'Last Payment Date';
        }
        field(16; "Last payment ref"; code[50])
        {
            Caption = 'Last Payment Ref';
        }
        field(17; "Last pmt daybook no"; BigInteger)
        {
            Caption = 'Last pmt daybook no';
        }
        field(18; "Settled flag"; Code[50])
        {
            Caption = 'Settled flag';
        }
        field(19; "Miscellaneous ref."; Code[50])
        {
            Caption = 'Miscellaneous ref.';
        }
        field(20; "Source branch"; Code[50])
        {
            Caption = 'Source Branch';
        }
        field(21; "Payment reference"; Code[50])
        {
            Caption = 'Payment Reference';
        }
        field(22; "Contract No"; code[20])
        {
            Caption = 'Contact No.';
        }
    }
    keys
    {
        key(PK; "Account code", "Document number", "Contract No")
        {
            Clustered = true;
        }
    }
}
