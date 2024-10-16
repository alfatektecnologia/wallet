// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokenBalanceStruct extends FFFirebaseStruct {
  TokenBalanceStruct({
    String? cursor,
    int? page,
    int? pageSize,
    List<ResultTokenStruct>? result,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cursor = cursor,
        _page = page,
        _pageSize = pageSize,
        _result = result,
        super(firestoreUtilData);

  // "cursor" field.
  String? _cursor;
  String get cursor => _cursor ?? '';
  set cursor(String? val) => _cursor = val;

  bool hasCursor() => _cursor != null;

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

  // "result" field.
  List<ResultTokenStruct>? _result;
  List<ResultTokenStruct> get result => _result ?? const [];
  set result(List<ResultTokenStruct>? val) => _result = val;

  void updateResult(Function(List<ResultTokenStruct>) updateFn) {
    updateFn(_result ??= []);
  }

  bool hasResult() => _result != null;

  static TokenBalanceStruct fromMap(Map<String, dynamic> data) =>
      TokenBalanceStruct(
        cursor: data['cursor'] as String?,
        page: castToType<int>(data['page']),
        pageSize: castToType<int>(data['page_size']),
        result: getStructList(
          data['result'],
          ResultTokenStruct.fromMap,
        ),
      );

  static TokenBalanceStruct? maybeFromMap(dynamic data) => data is Map
      ? TokenBalanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cursor': _cursor,
        'page': _page,
        'page_size': _pageSize,
        'result': _result?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cursor': serializeParam(
          _cursor,
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
        'result': serializeParam(
          _result,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TokenBalanceStruct fromSerializableMap(Map<String, dynamic> data) =>
      TokenBalanceStruct(
        cursor: deserializeParam(
          data['cursor'],
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
        result: deserializeStructParam<ResultTokenStruct>(
          data['result'],
          ParamType.DataStruct,
          true,
          structBuilder: ResultTokenStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TokenBalanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TokenBalanceStruct &&
        cursor == other.cursor &&
        page == other.page &&
        pageSize == other.pageSize &&
        listEquality.equals(result, other.result);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cursor, page, pageSize, result]);
}

TokenBalanceStruct createTokenBalanceStruct({
  String? cursor,
  int? page,
  int? pageSize,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TokenBalanceStruct(
      cursor: cursor,
      page: page,
      pageSize: pageSize,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TokenBalanceStruct? updateTokenBalanceStruct(
  TokenBalanceStruct? tokenBalance, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tokenBalance
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTokenBalanceStructData(
  Map<String, dynamic> firestoreData,
  TokenBalanceStruct? tokenBalance,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tokenBalance == null) {
    return;
  }
  if (tokenBalance.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tokenBalance.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tokenBalanceData =
      getTokenBalanceFirestoreData(tokenBalance, forFieldValue);
  final nestedData =
      tokenBalanceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tokenBalance.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTokenBalanceFirestoreData(
  TokenBalanceStruct? tokenBalance, [
  bool forFieldValue = false,
]) {
  if (tokenBalance == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tokenBalance.toMap());

  // Add any Firestore field values
  tokenBalance.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTokenBalanceListFirestoreData(
  List<TokenBalanceStruct>? tokenBalances,
) =>
    tokenBalances?.map((e) => getTokenBalanceFirestoreData(e, true)).toList() ??
    [];
