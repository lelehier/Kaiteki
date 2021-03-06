import 'package:kaiteki/model/fediverse/attachment.dart';
import 'package:kaiteki/model/fediverse/emoji.dart';
import 'package:kaiteki/model/fediverse/formatting.dart';
import 'package:kaiteki/model/fediverse/previewCard.dart';
import 'package:kaiteki/model/fediverse/reaction.dart';
import 'package:kaiteki/model/fediverse/user.dart';
import 'package:kaiteki/model/fediverse/visibility.dart';

/// A class representing a post.
class Post<T> {
  /// The original object.
  final T source;
  final String id;

  // METADATA
  final DateTime postedAt;
  final User author;
  final bool nsfw;
  final Visibility visibility;

  // ENGAGEMENT
  final bool liked;
  final bool repeated;
  final int likeCount;
  final int repeatCount;
  final int replyCount;
  final Iterable<Reaction> reactions;

  // CONTENT
  final String subject;
  final String content;
  final Formatting formatting;
  final Iterable<Attachment> attachments;
  final Iterable<Emoji> emojis;

  final String replyToPostId;
  final String replyToAccountId;
  final Post repeatOf;
  final Post replyTo;
  final PreviewCard previewCard;

  const Post({
    this.source,
    this.postedAt,
    this.author,
    this.content,
    this.id,
    this.subject,
    this.nsfw = false,
    this.formatting = Formatting.PlainText,
    this.liked,
    this.repeated,
    this.attachments,
    this.emojis,
    this.repeatOf,
    this.replyTo,
    this.previewCard,
    this.likeCount,
    this.repeatCount,
    this.replyCount,
    this.reactions,
    this.visibility,
    this.replyToAccountId,
    this.replyToPostId,
  });

  factory Post.example() {
    return Post(
      author: User.example(),
      content: "Hello everyone!",
      source: null,
      postedAt: DateTime.now(),
    );
  }
}
