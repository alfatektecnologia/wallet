// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ResultTokenStruct extends FFFirebaseStruct {
  ResultTokenStruct({
    String? tokenAddress,
    String? name,
    String? symbol,
    String? logo,
    String? thumbnail,
    int? decimals,
    String? balance,
    String? possibleSpam,
    String? verifiedCollection,
    String? totalSupply,
    String? totalSupplyFormatted,
    double? percentageRelativeToTotalSupply,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tokenAddress = tokenAddress,
        _name = name,
        _symbol = symbol,
        _logo = logo,
        _thumbnail = thumbnail,
        _decimals = decimals,
        _balance = balance,
        _possibleSpam = possibleSpam,
        _verifiedCollection = verifiedCollection,
        _totalSupply = totalSupply,
        _totalSupplyFormatted = totalSupplyFormatted,
        _percentageRelativeToTotalSupply = percentageRelativeToTotalSupply,
        super(firestoreUtilData);

  // "token_address" field.
  String? _tokenAddress;
  String get tokenAddress => _tokenAddress ?? '';
  set tokenAddress(String? val) => _tokenAddress = val;

  bool hasTokenAddress() => _tokenAddress != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "symbol" field.
  String? _symbol;
  String get symbol => _symbol ?? '';
  set symbol(String? val) => _symbol = val;

  bool hasSymbol() => _symbol != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;

  bool hasThumbnail() => _thumbnail != null;

  // "decimals" field.
  int? _decimals;
  int get decimals => _decimals ?? 0;
  set decimals(int? val) => _decimals = val;

  void incrementDecimals(int amount) => decimals = decimals + amount;

  bool hasDecimals() => _decimals != null;

  // "balance" field.
  String? _balance;
  String get balance => _balance ?? '';
  set balance(String? val) => _balance = val;

  bool hasBalance() => _balance != null;

  // "possible_spam" field.
  String? _possibleSpam;
  String get possibleSpam => _possibleSpam ?? '';
  set possibleSpam(String? val) => _possibleSpam = val;

  bool hasPossibleSpam() => _possibleSpam != null;

  // "verified_collection" field.
  String? _verifiedCollection;
  String get verifiedCollection => _verifiedCollection ?? '';
  set verifiedCollection(String? val) => _verifiedCollection = val;

  bool hasVerifiedCollection() => _verifiedCollection != null;

  // "total_supply" field.
  String? _totalSupply;
  String get totalSupply => _totalSupply ?? '';
  set totalSupply(String? val) => _totalSupply = val;

  bool hasTotalSupply() => _totalSupply != null;

  // "total_supply_formatted" field.
  String? _totalSupplyFormatted;
  String get totalSupplyFormatted => _totalSupplyFormatted ?? '';
  set totalSupplyFormatted(String? val) => _totalSupplyFormatted = val;

  bool hasTotalSupplyFormatted() => _totalSupplyFormatted != null;

  // "percentage_relative_to_total_supply" field.
  double? _percentageRelativeToTotalSupply;
  double get percentageRelativeToTotalSupply =>
      _percentageRelativeToTotalSupply ?? 0.0;
  set percentageRelativeToTotalSupply(double? val) =>
      _percentageRelativeToTotalSupply = val;

  void incrementPercentageRelativeToTotalSupply(double amount) =>
      percentageRelativeToTotalSupply =
          percentageRelativeToTotalSupply + amount;

  bool hasPercentageRelativeToTotalSupply() =>
      _percentageRelativeToTotalSupply != null;

  static ResultTokenStruct fromMap(Map<String, dynamic> data) =>
      ResultTokenStruct(
        tokenAddress: data['token_address'] as String?,
        name: data['name'] as String?,
        symbol: data['symbol'] as String?,
        logo: data['logo'] as String?,
        thumbnail: data['thumbnail'] as String?,
        decimals: castToType<int>(data['decimals']),
        balance: data['balance'] as String?,
        possibleSpam: data['possible_spam'] as String?,
        verifiedCollection: data['verified_collection'] as String?,
        totalSupply: data['total_supply'] as String?,
        totalSupplyFormatted: data['total_supply_formatted'] as String?,
        percentageRelativeToTotalSupply:
            castToType<double>(data['percentage_relative_to_total_supply']),
      );

  static ResultTokenStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultTokenStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'token_address': _tokenAddress,
        'name': _name,
        'symbol': _symbol,
        'logo': _logo,
        'thumbnail': _thumbnail,
        'decimals': _decimals,
        'balance': _balance,
        'possible_spam': _possibleSpam,
        'verified_collection': _verifiedCollection,
        'total_supply': _totalSupply,
        'total_supply_formatted': _totalSupplyFormatted,
        'percentage_relative_to_total_supply': _percentageRelativeToTotalSupply,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token_address': serializeParam(
          _tokenAddress,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'symbol': serializeParam(
          _symbol,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
        'decimals': serializeParam(
          _decimals,
          ParamType.int,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.String,
        ),
        'possible_spam': serializeParam(
          _possibleSpam,
          ParamType.String,
        ),
        'verified_collection': serializeParam(
          _verifiedCollection,
          ParamType.String,
        ),
        'total_supply': serializeParam(
          _totalSupply,
          ParamType.String,
        ),
        'total_supply_formatted': serializeParam(
          _totalSupplyFormatted,
          ParamType.String,
        ),
        'percentage_relative_to_total_supply': serializeParam(
          _percentageRelativeToTotalSupply,
          ParamType.double,
        ),
      }.withoutNulls;

  static ResultTokenStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultTokenStruct(
        tokenAddress: deserializeParam(
          data['token_address'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        symbol: deserializeParam(
          data['symbol'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        thumbnail: deserializeParam(
          data['thumbnail'],
          ParamType.String,
          false,
        ),
        decimals: deserializeParam(
          data['decimals'],
          ParamType.int,
          false,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.String,
          false,
        ),
        possibleSpam: deserializeParam(
          data['possible_spam'],
          ParamType.String,
          false,
        ),
        verifiedCollection: deserializeParam(
          data['verified_collection'],
          ParamType.String,
          false,
        ),
        totalSupply: deserializeParam(
          data['total_supply'],
          ParamType.String,
          false,
        ),
        totalSupplyFormatted: deserializeParam(
          data['total_supply_formatted'],
          ParamType.String,
          false,
        ),
        percentageRelativeToTotalSupply: deserializeParam(
          data['percentage_relative_to_total_supply'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ResultTokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultTokenStruct &&
        tokenAddress == other.tokenAddress &&
        name == other.name &&
        symbol == other.symbol &&
        logo == other.logo &&
        thumbnail == other.thumbnail &&
        decimals == other.decimals &&
        balance == other.balance &&
        possibleSpam == other.possibleSpam &&
        verifiedCollection == other.verifiedCollection &&
        totalSupply == other.totalSupply &&
        totalSupplyFormatted == other.totalSupplyFormatted &&
        percentageRelativeToTotalSupply ==
            other.percentageRelativeToTotalSupply;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tokenAddress,
        name,
        symbol,
        logo,
        thumbnail,
        decimals,
        balance,
        possibleSpam,
        verifiedCollection,
        totalSupply,
        totalSupplyFormatted,
        percentageRelativeToTotalSupply
      ]);
}

ResultTokenStruct createResultTokenStruct({
  String? tokenAddress,
  String? name,
  String? symbol,
  String? logo,
  String? thumbnail,
  int? decimals,
  String? balance,
  String? possibleSpam,
  String? verifiedCollection,
  String? totalSupply,
  String? totalSupplyFormatted,
  double? percentageRelativeToTotalSupply,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResultTokenStruct(
      tokenAddress: tokenAddress,
      name: name,
      symbol: symbol,
      logo: logo,
      thumbnail: thumbnail,
      decimals: decimals,
      balance: balance,
      possibleSpam: possibleSpam,
      verifiedCollection: verifiedCollection,
      totalSupply: totalSupply,
      totalSupplyFormatted: totalSupplyFormatted,
      percentageRelativeToTotalSupply: percentageRelativeToTotalSupply,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResultTokenStruct? updateResultTokenStruct(
  ResultTokenStruct? resultToken, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resultToken
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResultTokenStructData(
  Map<String, dynamic> firestoreData,
  ResultTokenStruct? resultToken,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resultToken == null) {
    return;
  }
  if (resultToken.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resultToken.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resultTokenData =
      getResultTokenFirestoreData(resultToken, forFieldValue);
  final nestedData =
      resultTokenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resultToken.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResultTokenFirestoreData(
  ResultTokenStruct? resultToken, [
  bool forFieldValue = false,
]) {
  if (resultToken == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resultToken.toMap());

  // Add any Firestore field values
  resultToken.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResultTokenListFirestoreData(
  List<ResultTokenStruct>? resultTokens,
) =>
    resultTokens?.map((e) => getResultTokenFirestoreData(e, true)).toList() ??
    [];
