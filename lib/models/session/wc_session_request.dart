import 'package:json_annotation/json_annotation.dart';
import '../wc_peer_meta.dart';

part 'wc_session_request.g.dart';

@JsonSerializable()
class WCSessionRequest {
  final String peerId;
  final WCPeerMeta peerMeta;
  final int chainId;
  WCSessionRequest({
    this.peerId,
    this.peerMeta,
    this.chainId,
  });

  factory WCSessionRequest.fromJson(Map<String, dynamic> json) => _$WCSessionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$WCSessionRequestToJson(this);

  @override
  String toString() => 'WCSessionRequest(peerId: $peerId, peerMeta: $peerMeta, chainId: $chainId)';
}
