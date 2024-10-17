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
  // Stores action output result for [Backend Call - API (GetTokenMetadata)] action in Message widget.
  ApiCallResponse? apiResultizv;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Custom Action - setMessage] action in Button widget.
  String? resultMessage;
  // Stores action output result for [Custom Action - getMessage] action in Button widget.
  String? message;
  // Stores action output result for [Custom Action - getMessage] action in Button widget.
  String? resultGetMessage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
