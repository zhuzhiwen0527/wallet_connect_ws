import 'package:json_annotation/json_annotation.dart';

import './models/session/wc_session.dart';
import './models/wc_peer_meta.dart';

part 'wc_session_store.g.dart';

@JsonSerializable()
class WCSessionStore {
  final WCSession session;
  final WCPeerMeta peerMeta;
  final WCPeerMeta remotePeerMeta;
  final int chainId;
  final String peerId;
  final String remotePeerId;
  WCSessionStore({
    this.session,
    this.peerMeta,
    this.remotePeerMeta,
    this.chainId,
    this.peerId,
    this.remotePeerId,
  });

  factory WCSessionStore.fromJson(Map<String, dynamic> json) => _$WCSessionStoreFromJson(json);
  Map<String, dynamic> toJson() => _$WCSessionStoreToJson(this);

  @override
  String toString() {
    return 'WCSessionStore(session: $session, peerMeta: $peerMeta, peerId: $peerId, remotePeerId: $remotePeerId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WCSessionStore &&
        other.session == session &&
        other.peerMeta == peerMeta &&
        other.remotePeerMeta == remotePeerMeta &&
        other.chainId == chainId &&
        other.peerId == peerId &&
        other.remotePeerId == remotePeerId;
  }

  @override
  int get hashCode {
    return session.hashCode ^
        peerMeta.hashCode ^
        remotePeerMeta.hashCode ^
        chainId.hashCode ^
        peerId.hashCode ^
        remotePeerId.hashCode;
  }
}
