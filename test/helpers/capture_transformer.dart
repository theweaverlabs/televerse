import 'dart:convert';
import 'package:televerse/televerse.dart';

/// Records outgoing requests and answers them without touching the network.
///
/// `send*` methods get a minimal Message back; every other method,
/// including the `send*Draft` methods, gets `true`.
class CaptureTransformer extends Transformer {
  /// The last API method that was called.
  String? method;

  /// The payload of the last API call.
  Payload? payload;

  @override
  Future<Map<String, dynamic>> transform(
    APICaller call,
    String method, [
    Payload? payload,
  ]) async {
    this.method = method;
    this.payload = payload;

    final returnsMessage =
        method.startsWith('send') && !method.endsWith('Draft');
    final Object result = returnsMessage
        ? {
            'message_id': 1,
            'date': 1600000000,
            'chat': {'id': 123, 'type': 'private'},
          }
        : true;
    return {'ok': true, 'result': result};
  }

  /// The parameters of the last API call.
  Map<String, dynamic> get params => payload!.params;

  /// JSON-encodes a request parameter the same way the HTTP client does.
  dynamic encoded(String key) => jsonDecode(jsonEncode(params[key]));
}
