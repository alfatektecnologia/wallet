// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ResultNFTStruct extends FFFirebaseStruct {
  ResultNFTStruct({
    String? amount,
    String? tokenId,
    String? tokenAddress,
    String? contractType,
    String? ownerOf,
    String? lastMetadataSync,
    String? lastTokenUriSync,
    String? metadata,
    String? blockNumber,
    String? blockNumberMinted,
    String? name,
    String? symbol,
    String? tokenHash,
    String? tokenUri,
    String? minterAddress,
    String? rarityRank,
    String? rarityPercentage,
    String? rarityLabel,
    bool? verifiedCollection,
    bool? possibleSpam,
    String? collectionLogo,
    String? collectionBannerImage,
    String? floorPrice,
    String? floorPriceUsd,
    String? floorPriceCurrency,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _amount = amount,
        _tokenId = tokenId,
        _tokenAddress = tokenAddress,
        _contractType = contractType,
        _ownerOf = ownerOf,
        _lastMetadataSync = lastMetadataSync,
        _lastTokenUriSync = lastTokenUriSync,
        _metadata = metadata,
        _blockNumber = blockNumber,
        _blockNumberMinted = blockNumberMinted,
        _name = name,
        _symbol = symbol,
        _tokenHash = tokenHash,
        _tokenUri = tokenUri,
        _minterAddress = minterAddress,
        _rarityRank = rarityRank,
        _rarityPercentage = rarityPercentage,
        _rarityLabel = rarityLabel,
        _verifiedCollection = verifiedCollection,
        _possibleSpam = possibleSpam,
        _collectionLogo = collectionLogo,
        _collectionBannerImage = collectionBannerImage,
        _floorPrice = floorPrice,
        _floorPriceUsd = floorPriceUsd,
        _floorPriceCurrency = floorPriceCurrency,
        super(firestoreUtilData);

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "token_id" field.
  String? _tokenId;
  String get tokenId => _tokenId ?? '';
  set tokenId(String? val) => _tokenId = val;

  bool hasTokenId() => _tokenId != null;

  // "token_address" field.
  String? _tokenAddress;
  String get tokenAddress => _tokenAddress ?? '';
  set tokenAddress(String? val) => _tokenAddress = val;

  bool hasTokenAddress() => _tokenAddress != null;

  // "contract_type" field.
  String? _contractType;
  String get contractType => _contractType ?? '';
  set contractType(String? val) => _contractType = val;

  bool hasContractType() => _contractType != null;

  // "owner_of" field.
  String? _ownerOf;
  String get ownerOf => _ownerOf ?? '';
  set ownerOf(String? val) => _ownerOf = val;

  bool hasOwnerOf() => _ownerOf != null;

  // "last_metadata_sync" field.
  String? _lastMetadataSync;
  String get lastMetadataSync => _lastMetadataSync ?? '';
  set lastMetadataSync(String? val) => _lastMetadataSync = val;

  bool hasLastMetadataSync() => _lastMetadataSync != null;

  // "last_token_uri_sync" field.
  String? _lastTokenUriSync;
  String get lastTokenUriSync => _lastTokenUriSync ?? '';
  set lastTokenUriSync(String? val) => _lastTokenUriSync = val;

  bool hasLastTokenUriSync() => _lastTokenUriSync != null;

  // "metadata" field.
  String? _metadata;
  String get metadata => _metadata ?? '';
  set metadata(String? val) => _metadata = val;

  bool hasMetadata() => _metadata != null;

  // "block_number" field.
  String? _blockNumber;
  String get blockNumber => _blockNumber ?? '';
  set blockNumber(String? val) => _blockNumber = val;

  bool hasBlockNumber() => _blockNumber != null;

  // "block_number_minted" field.
  String? _blockNumberMinted;
  String get blockNumberMinted => _blockNumberMinted ?? '';
  set blockNumberMinted(String? val) => _blockNumberMinted = val;

  bool hasBlockNumberMinted() => _blockNumberMinted != null;

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

  // "token_hash" field.
  String? _tokenHash;
  String get tokenHash => _tokenHash ?? '';
  set tokenHash(String? val) => _tokenHash = val;

  bool hasTokenHash() => _tokenHash != null;

  // "token_uri" field.
  String? _tokenUri;
  String get tokenUri => _tokenUri ?? '';
  set tokenUri(String? val) => _tokenUri = val;

  bool hasTokenUri() => _tokenUri != null;

  // "minter_address" field.
  String? _minterAddress;
  String get minterAddress => _minterAddress ?? '';
  set minterAddress(String? val) => _minterAddress = val;

  bool hasMinterAddress() => _minterAddress != null;

  // "rarity_rank" field.
  String? _rarityRank;
  String get rarityRank => _rarityRank ?? '';
  set rarityRank(String? val) => _rarityRank = val;

  bool hasRarityRank() => _rarityRank != null;

  // "rarity_percentage" field.
  String? _rarityPercentage;
  String get rarityPercentage => _rarityPercentage ?? '';
  set rarityPercentage(String? val) => _rarityPercentage = val;

  bool hasRarityPercentage() => _rarityPercentage != null;

  // "rarity_label" field.
  String? _rarityLabel;
  String get rarityLabel => _rarityLabel ?? '';
  set rarityLabel(String? val) => _rarityLabel = val;

  bool hasRarityLabel() => _rarityLabel != null;

  // "verified_collection" field.
  bool? _verifiedCollection;
  bool get verifiedCollection => _verifiedCollection ?? false;
  set verifiedCollection(bool? val) => _verifiedCollection = val;

  bool hasVerifiedCollection() => _verifiedCollection != null;

  // "possible_spam" field.
  bool? _possibleSpam;
  bool get possibleSpam => _possibleSpam ?? false;
  set possibleSpam(bool? val) => _possibleSpam = val;

  bool hasPossibleSpam() => _possibleSpam != null;

  // "collection_logo" field.
  String? _collectionLogo;
  String get collectionLogo => _collectionLogo ?? '';
  set collectionLogo(String? val) => _collectionLogo = val;

  bool hasCollectionLogo() => _collectionLogo != null;

  // "collection_banner_image" field.
  String? _collectionBannerImage;
  String get collectionBannerImage => _collectionBannerImage ?? '';
  set collectionBannerImage(String? val) => _collectionBannerImage = val;

  bool hasCollectionBannerImage() => _collectionBannerImage != null;

  // "floor_price" field.
  String? _floorPrice;
  String get floorPrice => _floorPrice ?? '';
  set floorPrice(String? val) => _floorPrice = val;

  bool hasFloorPrice() => _floorPrice != null;

  // "floor_price_usd" field.
  String? _floorPriceUsd;
  String get floorPriceUsd => _floorPriceUsd ?? '';
  set floorPriceUsd(String? val) => _floorPriceUsd = val;

  bool hasFloorPriceUsd() => _floorPriceUsd != null;

  // "floor_price_currency" field.
  String? _floorPriceCurrency;
  String get floorPriceCurrency => _floorPriceCurrency ?? '';
  set floorPriceCurrency(String? val) => _floorPriceCurrency = val;

  bool hasFloorPriceCurrency() => _floorPriceCurrency != null;

  static ResultNFTStruct fromMap(Map<String, dynamic> data) => ResultNFTStruct(
        amount: data['amount'] as String?,
        tokenId: data['token_id'] as String?,
        tokenAddress: data['token_address'] as String?,
        contractType: data['contract_type'] as String?,
        ownerOf: data['owner_of'] as String?,
        lastMetadataSync: data['last_metadata_sync'] as String?,
        lastTokenUriSync: data['last_token_uri_sync'] as String?,
        metadata: data['metadata'] as String?,
        blockNumber: data['block_number'] as String?,
        blockNumberMinted: data['block_number_minted'] as String?,
        name: data['name'] as String?,
        symbol: data['symbol'] as String?,
        tokenHash: data['token_hash'] as String?,
        tokenUri: data['token_uri'] as String?,
        minterAddress: data['minter_address'] as String?,
        rarityRank: data['rarity_rank'] as String?,
        rarityPercentage: data['rarity_percentage'] as String?,
        rarityLabel: data['rarity_label'] as String?,
        verifiedCollection: data['verified_collection'] as bool?,
        possibleSpam: data['possible_spam'] as bool?,
        collectionLogo: data['collection_logo'] as String?,
        collectionBannerImage: data['collection_banner_image'] as String?,
        floorPrice: data['floor_price'] as String?,
        floorPriceUsd: data['floor_price_usd'] as String?,
        floorPriceCurrency: data['floor_price_currency'] as String?,
      );

  static ResultNFTStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultNFTStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'token_id': _tokenId,
        'token_address': _tokenAddress,
        'contract_type': _contractType,
        'owner_of': _ownerOf,
        'last_metadata_sync': _lastMetadataSync,
        'last_token_uri_sync': _lastTokenUriSync,
        'metadata': _metadata,
        'block_number': _blockNumber,
        'block_number_minted': _blockNumberMinted,
        'name': _name,
        'symbol': _symbol,
        'token_hash': _tokenHash,
        'token_uri': _tokenUri,
        'minter_address': _minterAddress,
        'rarity_rank': _rarityRank,
        'rarity_percentage': _rarityPercentage,
        'rarity_label': _rarityLabel,
        'verified_collection': _verifiedCollection,
        'possible_spam': _possibleSpam,
        'collection_logo': _collectionLogo,
        'collection_banner_image': _collectionBannerImage,
        'floor_price': _floorPrice,
        'floor_price_usd': _floorPriceUsd,
        'floor_price_currency': _floorPriceCurrency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'token_id': serializeParam(
          _tokenId,
          ParamType.String,
        ),
        'token_address': serializeParam(
          _tokenAddress,
          ParamType.String,
        ),
        'contract_type': serializeParam(
          _contractType,
          ParamType.String,
        ),
        'owner_of': serializeParam(
          _ownerOf,
          ParamType.String,
        ),
        'last_metadata_sync': serializeParam(
          _lastMetadataSync,
          ParamType.String,
        ),
        'last_token_uri_sync': serializeParam(
          _lastTokenUriSync,
          ParamType.String,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.String,
        ),
        'block_number': serializeParam(
          _blockNumber,
          ParamType.String,
        ),
        'block_number_minted': serializeParam(
          _blockNumberMinted,
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
        'token_hash': serializeParam(
          _tokenHash,
          ParamType.String,
        ),
        'token_uri': serializeParam(
          _tokenUri,
          ParamType.String,
        ),
        'minter_address': serializeParam(
          _minterAddress,
          ParamType.String,
        ),
        'rarity_rank': serializeParam(
          _rarityRank,
          ParamType.String,
        ),
        'rarity_percentage': serializeParam(
          _rarityPercentage,
          ParamType.String,
        ),
        'rarity_label': serializeParam(
          _rarityLabel,
          ParamType.String,
        ),
        'verified_collection': serializeParam(
          _verifiedCollection,
          ParamType.bool,
        ),
        'possible_spam': serializeParam(
          _possibleSpam,
          ParamType.bool,
        ),
        'collection_logo': serializeParam(
          _collectionLogo,
          ParamType.String,
        ),
        'collection_banner_image': serializeParam(
          _collectionBannerImage,
          ParamType.String,
        ),
        'floor_price': serializeParam(
          _floorPrice,
          ParamType.String,
        ),
        'floor_price_usd': serializeParam(
          _floorPriceUsd,
          ParamType.String,
        ),
        'floor_price_currency': serializeParam(
          _floorPriceCurrency,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResultNFTStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultNFTStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.String,
          false,
        ),
        tokenId: deserializeParam(
          data['token_id'],
          ParamType.String,
          false,
        ),
        tokenAddress: deserializeParam(
          data['token_address'],
          ParamType.String,
          false,
        ),
        contractType: deserializeParam(
          data['contract_type'],
          ParamType.String,
          false,
        ),
        ownerOf: deserializeParam(
          data['owner_of'],
          ParamType.String,
          false,
        ),
        lastMetadataSync: deserializeParam(
          data['last_metadata_sync'],
          ParamType.String,
          false,
        ),
        lastTokenUriSync: deserializeParam(
          data['last_token_uri_sync'],
          ParamType.String,
          false,
        ),
        metadata: deserializeParam(
          data['metadata'],
          ParamType.String,
          false,
        ),
        blockNumber: deserializeParam(
          data['block_number'],
          ParamType.String,
          false,
        ),
        blockNumberMinted: deserializeParam(
          data['block_number_minted'],
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
        tokenHash: deserializeParam(
          data['token_hash'],
          ParamType.String,
          false,
        ),
        tokenUri: deserializeParam(
          data['token_uri'],
          ParamType.String,
          false,
        ),
        minterAddress: deserializeParam(
          data['minter_address'],
          ParamType.String,
          false,
        ),
        rarityRank: deserializeParam(
          data['rarity_rank'],
          ParamType.String,
          false,
        ),
        rarityPercentage: deserializeParam(
          data['rarity_percentage'],
          ParamType.String,
          false,
        ),
        rarityLabel: deserializeParam(
          data['rarity_label'],
          ParamType.String,
          false,
        ),
        verifiedCollection: deserializeParam(
          data['verified_collection'],
          ParamType.bool,
          false,
        ),
        possibleSpam: deserializeParam(
          data['possible_spam'],
          ParamType.bool,
          false,
        ),
        collectionLogo: deserializeParam(
          data['collection_logo'],
          ParamType.String,
          false,
        ),
        collectionBannerImage: deserializeParam(
          data['collection_banner_image'],
          ParamType.String,
          false,
        ),
        floorPrice: deserializeParam(
          data['floor_price'],
          ParamType.String,
          false,
        ),
        floorPriceUsd: deserializeParam(
          data['floor_price_usd'],
          ParamType.String,
          false,
        ),
        floorPriceCurrency: deserializeParam(
          data['floor_price_currency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResultNFTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultNFTStruct &&
        amount == other.amount &&
        tokenId == other.tokenId &&
        tokenAddress == other.tokenAddress &&
        contractType == other.contractType &&
        ownerOf == other.ownerOf &&
        lastMetadataSync == other.lastMetadataSync &&
        lastTokenUriSync == other.lastTokenUriSync &&
        metadata == other.metadata &&
        blockNumber == other.blockNumber &&
        blockNumberMinted == other.blockNumberMinted &&
        name == other.name &&
        symbol == other.symbol &&
        tokenHash == other.tokenHash &&
        tokenUri == other.tokenUri &&
        minterAddress == other.minterAddress &&
        rarityRank == other.rarityRank &&
        rarityPercentage == other.rarityPercentage &&
        rarityLabel == other.rarityLabel &&
        verifiedCollection == other.verifiedCollection &&
        possibleSpam == other.possibleSpam &&
        collectionLogo == other.collectionLogo &&
        collectionBannerImage == other.collectionBannerImage &&
        floorPrice == other.floorPrice &&
        floorPriceUsd == other.floorPriceUsd &&
        floorPriceCurrency == other.floorPriceCurrency;
  }

  @override
  int get hashCode => const ListEquality().hash([
        amount,
        tokenId,
        tokenAddress,
        contractType,
        ownerOf,
        lastMetadataSync,
        lastTokenUriSync,
        metadata,
        blockNumber,
        blockNumberMinted,
        name,
        symbol,
        tokenHash,
        tokenUri,
        minterAddress,
        rarityRank,
        rarityPercentage,
        rarityLabel,
        verifiedCollection,
        possibleSpam,
        collectionLogo,
        collectionBannerImage,
        floorPrice,
        floorPriceUsd,
        floorPriceCurrency
      ]);
}

ResultNFTStruct createResultNFTStruct({
  String? amount,
  String? tokenId,
  String? tokenAddress,
  String? contractType,
  String? ownerOf,
  String? lastMetadataSync,
  String? lastTokenUriSync,
  String? metadata,
  String? blockNumber,
  String? blockNumberMinted,
  String? name,
  String? symbol,
  String? tokenHash,
  String? tokenUri,
  String? minterAddress,
  String? rarityRank,
  String? rarityPercentage,
  String? rarityLabel,
  bool? verifiedCollection,
  bool? possibleSpam,
  String? collectionLogo,
  String? collectionBannerImage,
  String? floorPrice,
  String? floorPriceUsd,
  String? floorPriceCurrency,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResultNFTStruct(
      amount: amount,
      tokenId: tokenId,
      tokenAddress: tokenAddress,
      contractType: contractType,
      ownerOf: ownerOf,
      lastMetadataSync: lastMetadataSync,
      lastTokenUriSync: lastTokenUriSync,
      metadata: metadata,
      blockNumber: blockNumber,
      blockNumberMinted: blockNumberMinted,
      name: name,
      symbol: symbol,
      tokenHash: tokenHash,
      tokenUri: tokenUri,
      minterAddress: minterAddress,
      rarityRank: rarityRank,
      rarityPercentage: rarityPercentage,
      rarityLabel: rarityLabel,
      verifiedCollection: verifiedCollection,
      possibleSpam: possibleSpam,
      collectionLogo: collectionLogo,
      collectionBannerImage: collectionBannerImage,
      floorPrice: floorPrice,
      floorPriceUsd: floorPriceUsd,
      floorPriceCurrency: floorPriceCurrency,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResultNFTStruct? updateResultNFTStruct(
  ResultNFTStruct? resultNFT, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resultNFT
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResultNFTStructData(
  Map<String, dynamic> firestoreData,
  ResultNFTStruct? resultNFT,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resultNFT == null) {
    return;
  }
  if (resultNFT.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resultNFT.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resultNFTData = getResultNFTFirestoreData(resultNFT, forFieldValue);
  final nestedData = resultNFTData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resultNFT.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResultNFTFirestoreData(
  ResultNFTStruct? resultNFT, [
  bool forFieldValue = false,
]) {
  if (resultNFT == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resultNFT.toMap());

  // Add any Firestore field values
  resultNFT.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResultNFTListFirestoreData(
  List<ResultNFTStruct>? resultNFTs,
) =>
    resultNFTs?.map((e) => getResultNFTFirestoreData(e, true)).toList() ?? [];
