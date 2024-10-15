// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NftStruct extends FFFirebaseStruct {
  NftStruct({
    String? status,
    int? page,
    int? pageSize,
    String? cursor,
    List<ResultNFTStruct>? result,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _page = page,
        _pageSize = pageSize,
        _cursor = cursor,
        _result = result,
        super(firestoreUtilData);

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "page" field.
  int? _page;
  int get page => _page ?? 0;
  set page(int? val) => _page = val;

  void incrementPage(int amount) => page = page + amount;

  bool hasPage() => _page != null;

  // "page_size" field.
  int? _pageSize;
  int get pageSize => _pageSize ?? 0;
  set pageSize(int? val) => _pageSize = val;

  void incrementPageSize(int amount) => pageSize = pageSize + amount;

  bool hasPageSize() => _pageSize != null;

  // "cursor" field.
  String? _cursor;
  String get cursor => _cursor ?? '';
  set cursor(String? val) => _cursor = val;

  bool hasCursor() => _cursor != null;

  // "result" field.
  List<ResultNFTStruct>? _result;
  List<ResultNFTStruct> get result => _result ?? const [];
  set result(List<ResultNFTStruct>? val) => _result = val;

  void updateResult(Function(List<ResultNFTStruct>) updateFn) {
    updateFn(_result ??= []);
  }

  bool hasResult() => _result != null;

  static NftStruct fromMap(Map<String, dynamic> data) => NftStruct(
        status: data['status'] as String?,
        page: castToType<int>(data['page']),
        pageSize: castToType<int>(data['page_size']),
        cursor: data['cursor'] as String?,
        result: getStructList(
          data['result'],
          ResultNFTStruct.fromMap,
        ),
      );

  static NftStruct? maybeFromMap(dynamic data) =>
      data is Map ? NftStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'page': _page,
        'page_size': _pageSize,
        'cursor': _cursor,
        'result': _result?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'page': serializeParam(
          _page,
          ParamType.int,
        ),
        'page_size': serializeParam(
          _pageSize,
          ParamType.int,
        ),
        'cursor': serializeParam(
          _cursor,
          ParamType.String,
        ),
        'result': serializeParam(
          _result,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static NftStruct fromSerializableMap(Map<String, dynamic> data) => NftStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        page: deserializeParam(
          data['page'],
          ParamType.int,
          false,
        ),
        pageSize: deserializeParam(
          data['page_size'],
          ParamType.int,
          false,
        ),
        cursor: deserializeParam(
          data['cursor'],
          ParamType.String,
          false,
        ),
        result: deserializeStructParam<ResultNFTStruct>(
          data['result'],
          ParamType.DataStruct,
          true,
          structBuilder: ResultNFTStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NftStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NftStruct &&
        status == other.status &&
        page == other.page &&
        pageSize == other.pageSize &&
        cursor == other.cursor &&
        listEquality.equals(result, other.result);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, page, pageSize, cursor, result]);
}

NftStruct createNftStruct({
  String? status,
  int? page,
  int? pageSize,
  String? cursor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NftStruct(
      status: status,
      page: page,
      pageSize: pageSize,
      cursor: cursor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NftStruct? updateNftStruct(
  NftStruct? nft, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    nft
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNftStructData(
  Map<String, dynamic> firestoreData,
  NftStruct? nft,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (nft == null) {
    return;
  }
  if (nft.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && nft.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nftData = getNftFirestoreData(nft, forFieldValue);
  final nestedData = nftData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = nft.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNftFirestoreData(
  NftStruct? nft, [
  bool forFieldValue = false,
]) {
  if (nft == null) {
    return {};
  }
  final firestoreData = mapToFirestore(nft.toMap());

  // Add any Firestore field values
  nft.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNftListFirestoreData(
  List<NftStruct>? nfts,
) =>
    nfts?.map((e) => getNftFirestoreData(e, true)).toList() ?? [];
