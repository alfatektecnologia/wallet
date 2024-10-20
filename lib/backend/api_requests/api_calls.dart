import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start MorallisWeb Group Code

class MorallisWebGroup {
  static String getBaseUrl({
    String? apiKey,
  }) {
    apiKey ??= FFAppConstants.ApiKeyWeb3Morallis;
    return 'https://deep-index.moralis.io/api/v2.2/';
  }

  static Map<String, String> headers = {
    'accept': 'application/json',
    'X-API-Key': '[API_KEY]',
  };
  static GetWalletTokenBalancesCall getWalletTokenBalancesCall =
      GetWalletTokenBalancesCall();
  static GetBalanceCall getBalanceCall = GetBalanceCall();
  static GetTokenMetadataCall getTokenMetadataCall = GetTokenMetadataCall();
  static GetNFTbyWalletCall getNFTbyWalletCall = GetNFTbyWalletCall();
  static GetTokenBalanceByWalletCall getTokenBalanceByWalletCall =
      GetTokenBalanceByWalletCall();
}

class GetWalletTokenBalancesCall {
  Future<ApiCallResponse> call({
    String? walletAddress = '',
    String? chain = '',
    String? apiKey,
  }) async {
    apiKey ??= FFAppConstants.ApiKeyWeb3Morallis;
    final baseUrl = MorallisWebGroup.getBaseUrl(
      apiKey: apiKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getWalletTokenBalances',
      apiUrl: '$baseUrl$walletAddress/erc20?chain=$chain',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-API-Key': apiKey,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBalanceCall {
  Future<ApiCallResponse> call({
    String? walletAddress = '',
    String? chain = '',
    String? apiKey,
  }) async {
    apiKey ??= FFAppConstants.ApiKeyWeb3Morallis;
    final baseUrl = MorallisWebGroup.getBaseUrl(
      apiKey: apiKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetBalance',
      apiUrl: '$baseUrl$walletAddress/balance?chain=$chain',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-API-Key': apiKey,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTokenMetadataCall {
  Future<ApiCallResponse> call({
    String? contractAddress = '',
    String? chain = '',
    String? apiKey,
  }) async {
    apiKey ??= FFAppConstants.ApiKeyWeb3Morallis;
    final baseUrl = MorallisWebGroup.getBaseUrl(
      apiKey: apiKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetTokenMetadata',
      apiUrl:
          '${baseUrl}erc20/metadata?chain=$chain&addresses=$contractAddress',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-API-Key': apiKey,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNFTbyWalletCall {
  Future<ApiCallResponse> call({
    String? walletAddress = '',
    String? chain = '',
    String? apiKey,
  }) async {
    apiKey ??= FFAppConstants.ApiKeyWeb3Morallis;
    final baseUrl = MorallisWebGroup.getBaseUrl(
      apiKey: apiKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetNFTbyWallet',
      apiUrl:
          '$baseUrl$walletAddress/nft?chain=$chain&format=decimal&media_items=false',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-API-Key': apiKey,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTokenBalanceByWalletCall {
  Future<ApiCallResponse> call({
    String? walletAddress = '',
    String? chain = '',
    String? apiKey,
  }) async {
    apiKey ??= FFAppConstants.ApiKeyWeb3Morallis;
    final baseUrl = MorallisWebGroup.getBaseUrl(
      apiKey: apiKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetTokenBalanceByWallet',
      apiUrl: '$baseUrl$walletAddress/erc20?chain=$chain',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'X-API-Key': apiKey,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End MorallisWeb Group Code

/// Start Infura Group Code

class InfuraGroup {
  static String getBaseUrl() => 'https://mainnet.infura.io/v3/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetInfuraCall getInfuraCall = GetInfuraCall();
}

class GetInfuraCall {
  Future<ApiCallResponse> call({
    String? apiKey = 'YOUR_API_KEY',
  }) async {
    final baseUrl = InfuraGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get infura',
      apiUrl: '$baseUrl$apiKey',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Infura Group Code

/// Start Etherscan Group Code

class EtherscanGroup {
  static String getBaseUrl() => 'https://api.etherscan.io';
  static Map<String, String> headers = {};
  static GetABICall getABICall = GetABICall();
}

class GetABICall {
  Future<ApiCallResponse> call({
    String? apiKey = 'NFN1W4IUXV2DTTC2A8G5IS8XW78DZN7BCC',
    String? address = '',
  }) async {
    final baseUrl = EtherscanGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetABI',
      apiUrl: '$baseUrl/api',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'module': "contract",
        'action': "getabi",
        'address': "0x905021D3034b71003420775677EF6F7313317822",
        'apikey': "NFN1W4IUXV2DTTC2A8G5IS8XW78DZN7BCC",
        'chainid': "11155111",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Etherscan Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
