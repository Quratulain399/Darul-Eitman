table 50004 EVS_allocatedsample
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Txn system match no."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; POSTDATE; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Daybook number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Daybook item"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Account Code"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Document No"; code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Payment Type"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Amount Paid(Base)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Amount Paid(Curr)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Payment Reference"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Allowance (Base)"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Allowance (Currency)"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Original Document Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Original Due Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Payment Reference A"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Contract No"; code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Account Code", "Document No", "Contract No")
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