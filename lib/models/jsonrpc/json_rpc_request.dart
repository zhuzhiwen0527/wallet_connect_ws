import 'package:json_annotation/json_annotation.dart';
import '../wc_method.dart';
import '../../utils/constants.dart';

part 'json_rpc_request.g.dart';

@JsonSerializable()
class JsonRpcRequest {
  final int id;
  final String jsonrpc;
  final WCMethod method;
  final List<dynamic> params;
  JsonRpcRequest({
    this.id,
    this.jsonrpc = JSONRPC_VERSION,
    this.method,
    this.params,
  });

  factory JsonRpcRequest.fromJson(Map<String, dynamic> json) => _$JsonRpcRequestFromJson(json);
  Map<String, dynamic> toJson() => _$JsonRpcRequestToJson(this);

  @override
  String toString() {
    return 'JsonRpcRequest(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }
}