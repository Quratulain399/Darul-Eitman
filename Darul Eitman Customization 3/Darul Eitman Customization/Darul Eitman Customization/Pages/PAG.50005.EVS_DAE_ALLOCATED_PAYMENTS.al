page 50005 DAE_ALLOCATED_PAYMENTS
{
    ApplicationArea = All;
    Caption = 'Allocation Payments Detail';
    PageType = list;
    SourceTable = EVS_allocatedsample;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Account Code"; Rec."Account Code")
                {
                    Caption = 'ACCOUNT';
                    ApplicationArea = All;

                }
                field("Contract No"; Rec."Contract No")
                {
                    Caption = 'Contract No.';
                    ApplicationArea = All;
                }
                field("Allowance (Base)"; Rec."Allowance (Base)")
                {
                    //Caption = 'BASEALLW';
                    ApplicationArea = All;

                }
                field("Allowance (Currency)"; Rec."Allowance (Currency)")
                {
                    //Caption = 'CURRALLW';
                    ApplicationArea = All;
                }
                field("Amount Paid(Base)"; Rec."Amount Paid(Base)")
                {
                    //Caption = 'BASEPAID';
                    ApplicationArea = All;
                }
                field("Amount Paid(Curr)"; Rec."Amount Paid(Curr)")
                {
                    //Caption = 'CURRPAID';
                    ApplicationArea = All;
                }

                field("Daybook item"; Rec."Daybook item")
                {
                    Caption = 'Daybook item';
                    ApplicationArea = All;
                }
                field("Daybook number"; Rec."Daybook number")
                {
                    Caption = 'Daybook number';
                    ApplicationArea = All;
                }
                field("Document No"; Rec."Document No")
                {
                    Caption = 'Document No';
                    ApplicationArea = All;
                }
                field("Original Document Date"; Rec."Original Document Date")
                {
                    Caption = 'Original Document Date';
                    ApplicationArea = All;
                }
                field("Original Due Date"; Rec."Original Due Date")
                {
                    Caption = 'Original Due Date';
                    ApplicationArea = All;
                }
                field(POSTDATE; Rec.POSTDATE)
                {
                    Caption = 'Post Date ';
                    ApplicationArea = All;
                }
                field("Payment Reference"; Rec."Payment Reference")
                {
                    //Caption = 'PayRef';
                    ApplicationArea = All;
                }
                field("Payment Reference A"; Rec."Payment Reference A")
                {
                    //Caption = 'PayRefA';
                    ApplicationArea = All;
                }
                field("Payment Type"; Rec."Payment Type")
                {
                    Caption = 'Payment Type';
                    ApplicationArea = All;
                }
                field("Txn system match no."; Rec."Txn system match no.")
                {
                    Caption = 'Txn system match no.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
