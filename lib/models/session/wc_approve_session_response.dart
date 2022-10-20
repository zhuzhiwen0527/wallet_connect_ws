import 'package:json_annotation/json_annotation.dart';
import '../wc_peer_meta.dart';

part 'wc_approve_session_response.g.dart';

@JsonSerializable()
class WCApproveSessionResponse {
  final bool approved;
  final int chainId;
  final List<String> accounts;
  final String peerId;
  final WCPeerMeta peerMeta;
  WCApproveSessionResponse({
    this.approved = true,
    this.chainId,
    this.accounts,
    this.peerId,
    this.peerMeta,
  });

  factory WCApproveSessionResponse.fromJson(Map<String, dynamic> json) => _$WCApproveSessionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WCApproveSessionResponseToJson(this);

  @override
  String toString() {
    return 'WCApproveSessionResponse(approved: $approved, chainId: $chainId, account: $accounts, peerId: $peerId, peerMeta: $peerMeta)';
  }
}
