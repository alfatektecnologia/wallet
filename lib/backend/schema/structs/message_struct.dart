// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MessageStruct extends FFFirebaseStruct {
  MessageStruct({
    String? inputMessage,
    String? outputMessage,
    String? contrato,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _inputMessage = inputMessage,
        _outputMessage = outputMessage,
        _contrato = contrato,
        super(firestoreUtilData);

  // "inputMessage" field.
  String? _inputMessage;
  String get inputMessage => _inputMessage ?? '';
  set inputMessage(String? val) => _inputMessage = val;

  bool hasInputMessage() => _inputMessage != null;

  // "outputMessage" field.
  String? _outputMessage;
  String get outputMessage => _outputMessage ?? '';
  set outputMessage(String? val) => _outputMessage = val;

  bool hasOutputMessage() => _outputMessage != null;

  // "contrato" field.
  String? _contrato;
  String get contrato => _contrato ?? '';
  set contrato(String? val) => _contrato = val;

  bool hasContrato() => _contrato != null;

  static MessageStruct fromMap(Map<String, dynamic> data) => MessageStruct(
        inputMessage: data['inputMessage'] as String?,
        outputMessage: data['outputMessage'] as String?,
        contrato: data['contrato'] as String?,
      );

  static MessageStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'inputMessage': _inputMessage,
        'outputMessage': _outputMessage,
        'contrato': _contrato,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'inputMessage': serializeParam(
          _inputMessage,
          ParamType.String,
        ),
        'outputMessage': serializeParam(
          _outputMessage,
          ParamType.String,
        ),
        'contrato': serializeParam(
          _contrato,
          ParamType.String,
        ),
      }.withoutNulls;

  static MessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageStruct(
        inputMessage: deserializeParam(
          data['inputMessage'],
          ParamType.String,
          false,
        ),
        outputMessage: deserializeParam(
          data['outputMessage'],
          ParamType.String,
          false,
        ),
        contrato: deserializeParam(
          data['contrato'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageStruct &&
        inputMessage == other.inputMessage &&
        outputMessage == other.outputMessage &&
        contrato == other.contrato;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([inputMessage, outputMessage, contrato]);
}

MessageStruct createMessageStruct({
  String? inputMessage,
  String? outputMessage,
  String? contrato,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageStruct(
      inputMessage: inputMessage,
      outputMessage: outputMessage,
      contrato: contrato,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageStruct? updateMessageStruct(
  MessageStruct? message, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    message
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageStructData(
  Map<String, dynamic> firestoreData,
  MessageStruct? message,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (message == null) {
    return;
  }
  if (message.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && message.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageData = getMessageFirestoreData(message, forFieldValue);
  final nestedData = messageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = message.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageFirestoreData(
  MessageStruct? message, [
  bool forFieldValue = false,
]) {
  if (message == null) {
    return {};
  }
  final firestoreData = mapToFirestore(message.toMap());

  // Add any Firestore field values
  message.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageListFirestoreData(
  List<MessageStruct>? messages,
) =>
    messages?.map((e) => getMessageFirestoreData(e, true)).toList() ?? [];
