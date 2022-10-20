import 'package:json_annotation/json_annotation.dart';

enum WCMethod {
  @JsonValue("wc_sessionRequest")
  SESSION_REQUEST,

  @JsonValue("wc_sessionUpdate")
  SESSION_UPDATE,

  @JsonValue("eth_sign")
  ETH_SIGN,

  @JsonValue("personal_sign")
  ETH_PERSONAL_SIGN,

  @JsonValue("eth_signTypedData")
  ETH_SIGN_TYPE_DATA,

  @JsonValue("eth_signTypedData_v1")
  ETH_SIGN_TYPE_DATA_V1,

  @JsonValue("eth_signTypedData_v3")
  ETH_SIGN_TYPE_DATA_V3,

  @JsonValue("eth_signTypedData_v4")
  ETH_SIGN_TYPE_DATA_V4,

  @JsonValue("eth_signTransaction")
  ETH_SIGN_TRANSACTION,

  @JsonValue("eth_sendTransaction")
  ETH_SEND_TRANSACTION,
}