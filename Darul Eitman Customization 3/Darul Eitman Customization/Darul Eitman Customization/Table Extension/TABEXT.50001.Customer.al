tableextension 50001 CustomerMaster extends Customer
{
    fields
    {
        field(50001; "Client District"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50002; "Client_PO_Box"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50003; "Region Name"; code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50004; "Country Name Arabic"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50005; "Client Building No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50006; "Client_UnitNo"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50007; "Client_Zip2"; CODE[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50008; "AddressCityName"; Text[25])
        {
            DataClassification = ToBeClassified;
        }

        //General Info
        field(50009; "Client_Iqama_ID"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50010; "App_Client_Work_Place"; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(50011; "App_Client_Work_Department"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50012; "App_Client_Work_Phone"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50013; "App_Client_Occupation"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50014; "App_Client_Employer"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50015; "App_Client_Employment_Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50016; "Client_Birth_Date"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50017; "Client_Sector_Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50018; "Location_Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50019; "Marital_Status_Name"; text[50])
        {
            // OptionMembers = Male,Female;
            DataClassification = ToBeClassified;
        }
        field(50020; "Client_Iqama_Exp_Date"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50021; "Client_Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50022; "Client_Other_Income"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50023; "Client_Total_Deductions"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50024; "Client_Net_Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50025; "Client_Housing_Rent_Fee"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50026; "Client_Education_Other"; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50027; "Client_Direct_Manager"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50028; "Client_Full_Name_AR"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50029; "Client_Work_Place"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50030; "Client_Employer"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50031; "Year_Name"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50032; "beneficiary"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50033; "Client_SubSector_Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50034; "BeneficiaryIqama"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50035; "BeneficiaryMobile"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50036; "Client_Occupation"; Text[35])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}