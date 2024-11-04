table 50014 EVS_Integration_Setup
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; App_Insurance_Fees; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; App_To_Finance; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; App_Total_Liability; Code[20])
        {
            DataClassification = ToBeClassified;

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