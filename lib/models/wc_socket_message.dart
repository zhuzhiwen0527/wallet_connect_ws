import 'package:json_annotation/json_annotation.dart';
import '../models/message_type.dart';

part 'wc_socket_message.g.dart';

@JsonSerializable()
class WCSocketMessage {
  final String topic;
  final MessageType type;
  final String payload;
  WCSocketMessage({
    this.topic,
    this.type,
    this.payload,
  });

  factory WCSocketMessage.fromJson(Map<String, dynamic> json) => _$WCSocketMessageFromJson(json);

  Map<String, dynamic> toJson() => _$WCSocketMessageToJson(this);

  @override
  String toString() => 'WCSocketMessage(topic: $topic, type: $type, payload: $payload)';
}
