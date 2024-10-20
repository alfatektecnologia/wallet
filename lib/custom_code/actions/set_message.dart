// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

import 'package:web3dart/web3dart.dart' as web3;
import 'package:web3dart/credentials.dart';
import 'package:http/http.dart' as http;

Future<String> setMessage(BuildContext context, String msn, String pvkey,
    String contractNumber, String rpc) async {
  http.Client _client = http.Client();
  web3.Web3Client client = web3.Web3Client(rpc, _client);

  String contractABI = '''[
		{
			"anonymous": false,
			"inputs": [
				{
					"indexed": false,
					"internalType": "string",
					"name": "msn",
					"type": "string"
				}
			],
			"name": "messageCreate",
			"type": "event"
		},
		{
			"anonymous": false,
			"inputs": [
				{
					"indexed": false,
					"internalType": "string",
					"name": "ms",
					"type": "string"
				}
			],
			"name": "messageRecovered",
			"type": "event"
		},
		{
			"inputs": [],
			"name": "getMessage",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [],
			"name": "message",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "string",
					"name": "_msn",
					"type": "string"
				}
			],
			"name": "setMessage",
			"outputs": [],
			"stateMutability": "nonpayable",
			"type": "function"
		}
	]''';
  final _contract = web3.DeployedContract(
    web3.ContractAbi.fromJson(contractABI, 'Message'),
    web3.EthereumAddress.fromHex(contractNumber),
  );
  final ethFunction = _contract.function('setMessage');
  final credentials =
      web3.EthPrivateKey.fromHex(pvkey); // Use the parameter key
  final result = await client.sendTransaction(
    credentials,
    web3.Transaction.callContract(
      contract: _contract,
      function: ethFunction,
      parameters: [msn], // Add parameters if required
      maxGas: 100000,
    ),
    chainId: 11155111,
  );
  return result;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
