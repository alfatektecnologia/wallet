// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WalletStruct extends FFFirebaseStruct {
  WalletStruct({
    String? mnemonic,
    String? privateKey,
    String? address,
    String? tokenAddress,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _mnemonic = mnemonic,
        _privateKey = privateKey,
        _address = address,
        _tokenAddress = tokenAddress,
        super(firestoreUtilData);

  // "mnemonic" field.
  String? _mnemonic;
  String get mnemonic => _mnemonic ?? '';
  set mnemonic(String? val) => _mnemonic = val;

  bool hasMnemonic() => _mnemonic != null;

  // "privateKey" field.
  String? _privateKey;
  String get privateKey => _privateKey ?? '';
  set privateKey(String? val) => _privateKey = val;

  bool hasPrivateKey() => _privateKey != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "tokenAddress" field.
  String? _tokenAddress;
  String get tokenAddress => _tokenAddress ?? '';
  set tokenAddress(String? val) => _tokenAddress = val;

  bool hasTokenAddress() => _tokenAddress != null;

  static WalletStruct fromMap(Map<String, dynamic> data) => WalletStruct(
        mnemonic: data['mnemonic'] as String?,
        privateKey: data['privateKey'] as String?,
        address: data['address'] as String?,
        tokenAddress: data['tokenAddress'] as String?,
      );

  static WalletStruct? maybeFromMap(dynamic data) =>
      data is Map ? WalletStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'mnemonic': _mnemonic,
        'privateKey': _privateKey,
        'address': _address,
        'tokenAddress': _tokenAddress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mnemonic': serializeParam(
          _mnemonic,
          ParamType.String,
        ),
        'privateKey': serializeParam(
          _privateKey,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'tokenAddress': serializeParam(
          _tokenAddress,
          ParamType.String,
        ),
      }.withoutNulls;

  static WalletStruct fromSerializableMap(Map<String, dynamic> data) =>
      WalletStruct(
        mnemonic: deserializeParam(
          data['mnemonic'],
          ParamType.String,
          false,
        ),
        privateKey: deserializeParam(
          data['privateKey'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        tokenAddress: deserializeParam(
          data['tokenAddress'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WalletStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WalletStruct &&
        mnemonic == other.mnemonic &&
        privateKey == other.privateKey &&
        address == other.address &&
        tokenAddress == other.tokenAddress;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([mnemonic, privateKey, address, tokenAddress]);
}

WalletStruct createWalletStruct({
  String? mnemonic,
  String? privateKey,
  String? address,
  String? tokenAddress,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WalletStruct(
      mnemonic: mnemonic,
      privateKey: privateKey,
      address: address,
      tokenAddress: tokenAddress,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WalletStruct? updateWalletStruct(
  WalletStruct? wallet, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wallet
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWalletStructData(
  Map<String, dynamic> firestoreData,
  WalletStruct? wallet,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wallet == null) {
    return;
  }
  if (wallet.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wallet.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final walletData = getWalletFirestoreData(wallet, forFieldValue);
  final nestedData = walletData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wallet.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWalletFirestoreData(
  WalletStruct? wallet, [
  bool forFieldValue = false,
]) {
  if (wallet == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wallet.toMap());

  // Add any Firestore field values
  wallet.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWalletListFirestoreData(
  List<WalletStruct>? wallets,
) =>
    wallets?.map((e) => getWalletFirestoreData(e, true)).toList() ?? [];
