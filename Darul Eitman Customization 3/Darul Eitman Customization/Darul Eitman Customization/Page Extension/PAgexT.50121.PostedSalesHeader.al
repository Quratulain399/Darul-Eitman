// pageextension 50110 EVS_PostedSalesHeader extends "Posted Sales Invoice"
// {
//     layout
//     {
//         addafter("Pre-Assigned No.")
//         {
//             field("VehicleNo"; Rec."VehicleNo")
//             {
//                 Caption = 'Vehicle No.';
//                 ApplicationArea = All;
//                 Editable = false;
//             }
//             field("ContractNo"; Rec."ContractNo")
//             {
//                 Caption = 'Contract No.';
//                 ApplicationArea = All;
//                 Editable = false;
//             }
//         }
//     }

//     actions
//     {
//         // Add changes to page actions here
//     }

//     var
//         myInt: Integer;
// }