// tableextension 500004 EVS_PostedSalesHeader extends "Sales Invoice Header"
// {
//     fields
//     {
//         field(50001; VehicleNo; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             Caption = 'Vehicle No';
//         }
//         field(50002; ContractNo; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             Caption = 'Contract No';
//         }
//     }

//     keys
//     {
//         // Add changes to keys here
//     }

//     fieldgroups
//     {
//         // Add changes to field groups here
//     }

//     var
//         myInt: Integer;
// }