codeunit 50000 EVS_Events
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', false, false)]
    procedure OnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line")
    var
        tbl_consumerFinance: Record EVS_Consumer_Finance;
    begin
        tbl_consumerFinance.Init();
        tbl_consumerFinance.Reset();
        tbl_consumerFinance.SetRange(tbl_consumerFinance."Account Code", GenJournalLine."Account No.");
        tbl_consumerFinance.SetRange(tbl_consumerFinance."Cash Receipt", GenJournalLine."Document No.");
        if tbl_consumerFinance.Find('-') then begin
            tbl_consumerFinance.ModifyAll("Fully Post", true);
            tbl_consumerFinance.ModifyAll("Partially Post", false);
            tbl_consumerFinance.ModifyAll("Allocated Amount", 0);
        end;
        tbl_consumerFinance.Init();
        tbl_consumerFinance.Reset();
        tbl_consumerFinance.SetRange(tbl_consumerFinance."Account Code", GenJournalLine."Account No.");
        if tbl_consumerFinance.Find('-') then begin
            tbl_consumerFinance.ModifyAll("Allocated Amount", 0);
        end;
        tbl_consumerFinance.Init();
        tbl_consumerFinance.Reset();
        tbl_consumerFinance.SetRange(tbl_consumerFinance."Account Code", GenJournalLine."Account No.");
        tbl_consumerFinance.SetRange(tbl_consumerFinance.Status, tbl_consumerFinance.Status::P);
        if tbl_consumerFinance.Find('-') then begin
            tbl_consumerFinance.ModifyAll("Partially Post", true);
        end;
    end;

    var
        myInt: Integer;
}