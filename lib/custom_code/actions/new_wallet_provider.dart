// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import "package:hex/hex.dart";
import 'package:ed25519_hd_key/ed25519_hd_key.dart';
import 'package:convert/convert.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:web3dart/web3dart.dart';

bool newWalletProvider(BuildContext context) {
  WalletStruct wallet;
  final _mnemonic = bip39.generateMnemonic(); //FFAppState().wallet.mnemonic
  final _privateKey = getPrivateKey(_mnemonic);
  final _address = getPublicKey(_privateKey as String);

  FFAppState().wallet.mnemonic = _mnemonic;
  FFAppState().wallet.privateKey = _privateKey as String;
  FFAppState().wallet.address = _address as String;

  return true;
}

Future<String> getPrivateKey(String mnemonic) async {
  final seed = bip39.mnemonicToSeed(mnemonic);
  final master = await ED25519_HD_KEY.getMasterKeyFromSeed(seed);
  final privateKey = HEX.encode(master.key);
  return privateKey;
}

Future<EthereumAddress> getPublicKey(String privateKey) async {
  final private = EthPrivateKey.fromHex(privateKey);
  final address = await private.address;
  return address;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
