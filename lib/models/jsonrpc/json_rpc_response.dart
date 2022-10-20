import 'package:json_annotation/json_annotation.dart';
import '../../utils/constants.dart';

part 'json_rpc_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class JsonRpcResponse<T> {
  final int id;
  final String jsonrpc;
  final T result;
  JsonRpcResponse({
    this.id,
    this.jsonrpc = JSONRPC_VERSION,
    this.result,
  });

  factory JsonRpcResponse.fromJson(Map<String, dynamic> json) =>
      _$JsonRpcResponseFromJson(json, (object) => object as T);
  Map<String, dynamic> toJson() => _$JsonRpcResponseToJson(this, (t) => t);

  @override
  String toString() => 'JsonRpcResponse(id: $id, jsonrpc: $jsonrpc, result: $result)';
}
