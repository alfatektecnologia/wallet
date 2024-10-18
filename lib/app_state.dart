import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_wallet') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_wallet') ?? '{}';
          _wallet =
              WalletStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _showSeed = await secureStorage.getBool('ff_showSeed') ?? _showSeed;
    });
    await _safeInitAsync(() async {
      _apiKey = await secureStorage.getString('ff_apiKey') ?? _apiKey;
    });
    await _safeInitAsync(() async {
      _account = await secureStorage.getString('ff_account') ?? _account;
    });
    await _safeInitAsync(() async {
      _createdWallet =
          await secureStorage.getBool('ff_createdWallet') ?? _createdWallet;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  WalletStruct _wallet = WalletStruct();
  WalletStruct get wallet => _wallet;
  set wallet(WalletStruct value) {
    _wallet = value;
    secureStorage.setString('ff_wallet', value.serialize());
  }

  void deleteWallet() {
    secureStorage.delete(key: 'ff_wallet');
  }

  void updateWalletStruct(Function(WalletStruct) updateFn) {
    updateFn(_wallet);
    secureStorage.setString('ff_wallet', _wallet.serialize());
  }

  bool _showSeed = false;
  bool get showSeed => _showSeed;
  set showSeed(bool value) {
    _showSeed = value;
    secureStorage.setBool('ff_showSeed', value);
  }

  void deleteShowSeed() {
    secureStorage.delete(key: 'ff_showSeed');
  }

  void deleteApiKey() {
    secureStorage.delete(key: 'ff_apiKey');
  }

  String _account = '';
  String get account => _account;
  set account(String value) {
    _account = value;
    secureStorage.setString('ff_account', value);
  }

  void deleteAccount() {
    secureStorage.delete(key: 'ff_account');
  }

  bool _createdWallet = false;
  bool get createdWallet => _createdWallet;
  set createdWallet(bool value) {
    _createdWallet = value;
    secureStorage.setBool('ff_createdWallet', value);
  }

  void deleteCreatedWallet() {
    secureStorage.delete(key: 'ff_createdWallet');
  }

  bool _isConfirmed = false;
  bool get isConfirmed => _isConfirmed;
  set isConfirmed(bool value) {
    _isConfirmed = value;
  }

  NftStruct _nft = NftStruct();
  NftStruct get nft => _nft;
  set nft(NftStruct value) {
    _nft = value;
  }

  void updateNftStruct(Function(NftStruct) updateFn) {
    updateFn(_nft);
  }

  String _balance = '';
  String get balance => _balance;
  set balance(String value) {
    _balance = value;
  }

  String _totalsupply = '';
  String get totalsupply => _totalsupply;
  set totalsupply(String value) {
    _totalsupply = value;
  }

  TokenBalanceStruct _tokenBalance = TokenBalanceStruct();
  TokenBalanceStruct get tokenBalance => _tokenBalance;
  set tokenBalance(TokenBalanceStruct value) {
    _tokenBalance = value;
  }

  void updateTokenBalanceStruct(Function(TokenBalanceStruct) updateFn) {
    updateFn(_tokenBalance);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
