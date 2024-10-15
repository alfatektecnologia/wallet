import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String addressWallet = '0';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getMnemonic] action in Bt_create_wallet widget.
  String? mnemonic;
  // Stores action output result for [Custom Action - getPrivateKey] action in Bt_create_wallet widget.
  String? privateKey;
  // Stores action output result for [Custom Action - getPublicKey] action in Bt_create_wallet widget.
  String? address;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (GetBalance)] action in Assets widget.
  ApiCallResponse? apiResultq74;
  // Stores action output result for [Backend Call - API (GetNFTbyWallet)] action in NFT widget.
  ApiCallResponse? apiResultiws;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
