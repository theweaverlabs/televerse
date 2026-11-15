import 'area_position.dart';

/// Describes the position of a clickable area within a story.
///
/// Renamed to [AreaPosition] in Bot API 10.4, because the same object now
/// also describes the position of stickers on TON wallet cards.
@Deprecated('Use AreaPosition instead. Renamed in Bot API 10.4.')
typedef StoryAreaPosition = AreaPosition;
