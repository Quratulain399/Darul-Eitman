tableextension 50120 EVS_Gen_Journal_Line extends "Gen. Journal Line"
{
    trigger OnAfterDelete()
    var
        tbl_EVS_ConsumerFinance: Record EVS_Consumer_Finance;
        tbl_GenJournalLine: Record "Gen. Journal Line";
    begin
        if Rec."Document Type" = Rec."Document Type"::Payment then begin
            tbl_EVS_ConsumerFinance.Init();
            tbl_EVS_ConsumerFinance.Reset();
            tbl_EVS_ConsumerFinance.Setrange(tbl_EVS_ConsumerFinance."Cash Reciept Document No", rec."Document No.");
            tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Account Code", rec."Account No.");
            tbl_EVS_ConsumerFinance.SetRange(tbl_EVS_ConsumerFinance."Fully Post", false);
            tbl_EVS_ConsumerFinance.SetFilter(tbl_EVS_ConsumerFinance.Status, '<>%1', tbl_EVS_ConsumerFinance.Status::H);
            if tbl_EVS_ConsumerFinance.Find('-') then begin
                repeat
                    tbl_EVS_ConsumerFinance."Cash Reciept Document No" := '';
                    tbl_EVS_ConsumerFinance."Cash Receipt" := '';
                    tbl_EVS_ConsumerFinance."Remaining Amount" := tbl_EVS_ConsumerFinance."Allocated Amount" + tbl_EVS_ConsumerFinance."Remaining Amount";
                    tbl_EVS_ConsumerFinance."Earnings Taken" := 0;
                    if tbl_EVS_ConsumerFinance."Partially Post" = true then begin
                        tbl_EVS_ConsumerFinance.Status := tbl_EVS_ConsumerFinance.Status::P;
                        tbl_EVS_ConsumerFinance."Amount Paid" := tbl_EVS_ConsumerFinance."Base Amount" - tbl_EVS_ConsumerFinance."Remaining Amount";
                    end else begin
                        tbl_EVS_ConsumerFinance.Status := tbl_EVS_ConsumerFinance.Status::" ";
                        tbl_EVS_ConsumerFinance."Amount Paid" := 0;
                    end;

                    tbl_EVS_ConsumerFinance."Allocated Amount" := 0;
                    tbl_EVS_ConsumerFinance."Payment Amount" := 0;

                    tbl_EVS_ConsumerFinance.Modify();
                until tbl_EVS_ConsumerFinance.Next() = 0;
            end;
        end;
    end;
}
