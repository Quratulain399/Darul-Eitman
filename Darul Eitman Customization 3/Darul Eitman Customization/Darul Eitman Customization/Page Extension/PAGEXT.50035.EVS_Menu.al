pageextension 50035 BusinessManagerRoleCenter extends 9022
{
    layout
    {
        addafter(Emails)
        {
        }
    }
    actions
    {
        addafter(Action39)
        {
            group("DAE")
            {
                action("Allocated Payments")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Allocated Payments';
                    RunObject = Page "DAE_ALLOCATED_PAYMENTS";
                }
                action("Consumer Finance Installments")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Consumer Finance Installments';
                    RunObject = Page "EVS_CUST_FINANCEINSTALLMENTS";
                }
                action("Financial Schedule Detail")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Financial Schedule Detail';
                    RunObject = Page "EVS_FINANCE_SCHEDULE";
                }

                action("SL Transaction")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'SL Transaction';
                    RunObject = Page "EVS_sl_transactions";
                }

            }
        }
    }
}