page 50014 EVS_sl_transactions
{
    ApplicationArea = All;
    Caption = 'SL Transaction Detail';
    PageType = list;
    SourceTable = EVS_SL_TRANSACTION;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';

                field("Account code"; Rec."Account code")
                {
                    Caption = 'Account';
                    ApplicationArea = All;
                }
                field("Amount paid (base)"; Rec."Amount paid (base)")
                {
                    //Caption = 'Base Paid';
                    ApplicationArea = All;
                }
                field("Amount paid (curr)"; Rec."Amount paid (curr)")
                {
                    //Caption = 'CURRPAID';
                    ApplicationArea = All;
                }
                field("Customer reference"; Rec."Customer reference")
                {
                    //Caption = 'REFERENC';
                    ApplicationArea = All;
                }
                field("Daybook Number"; Rec."Daybook number")
                {
                    //Caption = 'DBNUM';
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    //Caption = 'Code';
                    ApplicationArea = All;
                }
                field("Document Base Total"; Rec."Document base total")
                {
                    //Caption = 'BASEVAL';
                    ApplicationArea = All;
                }
                field("Document curr total"; Rec."Document curr total")
                {
                    //Caption = 'CURRVAL';
                    ApplicationArea = All;
                }
                field("Document Date"; Rec."Document date")
                {
                    //Caption = 'DOCDATE';
                    ApplicationArea = All;
                }
                field("Document Number"; Rec."Document number")
                {
                    //Caption = 'DOCNUM';
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document type")
                {
                    //Caption = 'DOCTYPE';
                    ApplicationArea = All;
                }
                field("Due date"; Rec."Due date")
                {
                    //Caption = 'DUEDATE';
                    ApplicationArea = All;
                }
                field("Last payment date"; Rec."Last payment date")
                {
                    //Caption = 'PAYDATE';
                    ApplicationArea = All;
                }
                field("Last payment ref"; Rec."Last payment ref")
                {
                    //Caption = 'PAYREF';
                    ApplicationArea = All;
                }
                field("Last pmt daybook no"; Rec."Last pmt daybook no")
                {
                    //Caption = 'PAYDBNUM';
                    ApplicationArea = All;
                }
                field("Miscellaneous ref."; Rec."Miscellaneous ref.")
                {
                    //Caption = 'MISCREF';
                    ApplicationArea = All;
                }
                field("Payment Reference"; Rec."Payment reference")
                {
                    //Caption = 'PAYREFA';
                    ApplicationArea = All;
                }
                field("Posting (daybk) date"; Rec."Posting (daybk) date")
                {
                    //Caption = '';
                    ApplicationArea = All;
                }
                field("Settled flag"; Rec."Settled flag")
                {
                    //Caption = 'POSTDATE';
                    ApplicationArea = All;
                }
                field("Source branch"; Rec."Source branch")
                {
                    //Caption = 'BRANCH';
                    ApplicationArea = All;
                }
                field("System match number"; Rec."System match number")
                {
                    //Caption = 'MAGIC';
                    ApplicationArea = All;
                }
                field("Contract No"; Rec."Contract No")
                {
                    Caption = 'Contract No.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
