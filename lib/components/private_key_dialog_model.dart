import '/flutter_flow/flutter_flow_util.dart';
import 'private_key_dialog_widget.dart' show PrivateKeyDialogWidget;
import 'package:flutter/material.dart';

class PrivateKeyDialogModel extends FlutterFlowModel<PrivateKeyDialogWidget> {
  ///  Local state fields for this component.

  String? addressComponent;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - getPublicKey] action in Button widget.
  String? resultAddress;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
