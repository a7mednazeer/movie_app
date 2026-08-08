import 'package:equatable/equatable.dart';

/// The current user — either a real, signed-in Firebase account or the
/// local-only guest identity used when Firebase isn't configured (or the
/// person just hasn't signed in yet).
///
/// Every screen reads this one shape regardless of which case it is, so
/// UI code never needs to branch on "is Firebase even available?" — only
/// on `isGuest`.
class AppUser extends Equatable {
  const AppUser({
    required this.uid,
    required this.isGuest,
    this.email,
    this.displayName,
    this.photoUrl,
    this.createdAt,
  });

  /// Stable identifier. For a real account this is Firebase's uid; for
  /// the guest identity it's the constant `'guest'`.
  final String uid;

  /// `true` for the local-only guest identity — `false` for any real,
  /// signed-in account (this app only supports real accounts via
  /// email/password, so a non-guest `AppUser` is always fully verified
  /// by Firebase, never anonymous).
  final bool isGuest;

  final String? email;
  final String? displayName;
  final String? photoUrl;
  final DateTime? createdAt;

  static const AppUser guest = AppUser(uid: 'guest', isGuest: true);

  /// A friendly display label — the display name if set, otherwise the
  /// part of the email before the `@`, otherwise a generic fallback the
  /// caller supplies (since that fallback should be localized, this
  /// model itself doesn't own any user-facing copy).
  String labelOr(String fallback) {
    if (displayName != null && displayName!.trim().isNotEmpty) return displayName!;
    if (email != null && email!.contains('@')) return email!.split('@').first;
    return fallback;
  }

  AppUser copyWith({String? displayName, String? photoUrl}) {
    return AppUser(
      uid: uid,
      isGuest: isGuest,
      email: email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      createdAt: createdAt,
    );
  }

  @override
  List<Object?> get props => <Object?>[uid, isGuest, email, displayName, photoUrl];
}
