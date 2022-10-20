import 'package:json_annotation/json_annotation.dart';
import '../jsonrpc/json_rpc_error.dart';
import '../../utils/constants.dart';

part 'json_rpc_error_response.g.dart';

@JsonSerializable()
class JsonRpcErrorResponse {
  final int id;
  final String jsonrpc = JSONRPC_VERSION;
  final JsonRpcError error;
  JsonRpcErrorResponse({
    this.id,
    this.error,
  });

  factory JsonRpcErrorResponse.fromJson(Map<String, dynamic> json) => _$JsonRpcErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$JsonRpcErrorResponseToJson(this);

  @override
  String toString() => 'JsonRpcErrorResponse(id: $id, error: $error)';
}
