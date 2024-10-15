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

Future<String> getPrivateKey(BuildContext context, String mnemonic) async {
  final seed = bip39.mnemonicToSeed(mnemonic);
  final master = await ED25519_HD_KEY.getMasterKeyFromSeed(seed);
  final privateKey = HEX.encode(master.key);
  return privateKey;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
