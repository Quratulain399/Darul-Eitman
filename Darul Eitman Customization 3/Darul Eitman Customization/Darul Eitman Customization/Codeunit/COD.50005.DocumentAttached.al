codeunit 50110 DocumentAttachment
{
    [EventSubscriber(ObjectType::Page, Page::"Document Attachment Factbox", 'OnBeforeDrillDown', '', false, false)]
    local procedure OnBeforeDrillDown(DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef);
    var
        tbl_EVS_ContractInfo: Record EVS_ContractInfo;
    begin
        case DocumentAttachment."Table ID" of
            DATABASE::EVS_ContractInfo:
                begin
                    RecRef.Open(DATABASE::EVS_ContractInfo);
                    if tbl_EVS_ContractInfo.Get(DocumentAttachment."No.") then
                        RecRef.GetTable(tbl_EVS_ContractInfo);
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Document Attachment Details", 'OnAfterOpenForRecRef', '', false, false)]
    local procedure OnAfterOpenForRecRef(var DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef);
    var
        FieldRef: FieldRef;
        RecNo: Code[20];
    begin
        case RecRef.Number of
            DATABASE::EVS_ContractInfo:
                begin
                    FieldRef := RecRef.Field(2);
                    RecNo := FieldRef.Value;
                    DocumentAttachment.SetRange("No.", RecNo);
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Document Attachment", 'OnAfterInitFieldsFromRecRef', '', false, false)]
    local procedure OnAfterInitFieldsFromRecRef(var DocumentAttachment: Record "Document Attachment"; var RecRef: RecordRef)
    var
        FieldRef: FieldRef;
        RecNo: Code[20];
    begin
        // case RecRef.Number of
        //     DATABASE::"PO Landed Costs":
        //         begin
        //             FieldRef := RecRef.Field(1);
        //             RecNo := FieldRef.Value;
        //             DocumentAttachment.Validate("No.", RecNo);
        //         end;
        // end;

        if RecRef.Number = DATABASE::EVS_ContractInfo then begin

            FieldRef := RecRef.Field(2);
            RecNo := FieldRef.Value();
            DocumentAttachment.Validate("No.", RecNo);
        end
    end;
}