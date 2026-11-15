import 'package:freezed_annotation/freezed_annotation.dart';

part 'paid_messages_waived.freezed.dart';
part 'paid_messages_waived.g.dart';

/// A service message sent when the sender uses a link to message the
/// recipient without paying Telegram Stars. This object has no fields.
@freezed
abstract class PaidMessagesWaived with _$PaidMessagesWaived {
  /// Creates a [PaidMessagesWaived].
  const factory PaidMessagesWaived() = _PaidMessagesWaived;

  /// Creates a [PaidMessagesWaived] from JSON.
  factory PaidMessagesWaived.fromJson(Map<String, dynamic> json) =>
      _$PaidMessagesWaivedFromJson(json);
}
