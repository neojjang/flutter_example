import 'dart:io';

import 'package:jitsi_meet/feature_flag/feature_flag.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/resources/firestore_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();

  void createNewMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      // FeatureFlag featureFlag = FeatureFlag();
      // featureFlag.welcomePageEnabled = false;
      // featureFlag.resolution = FeatureFlagVideoResolution.MD_RESOLUTION;
      Map<FeatureFlagEnum, bool> featureFlags = {};
      featureFlags[FeatureFlagEnum.WELCOME_PAGE_ENABLED] = false;
      if (Platform.isAndroid) {
        // Disable ConnectionService usage on Android to avoid issues (see README)
        featureFlags[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = false;
      } else if (Platform.isIOS) {
        // Disable PIP on iOS as it looks weird
        featureFlags[FeatureFlagEnum.PIP_ENABLED] = false;
      }

      String name;
      if (username.isEmpty) {
        name = _authMethods.user.displayName!;
      } else {
        name = username;
      }
      var options = JitsiMeetingOptions(room: roomName)
        ..userDisplayName = name
        ..userEmail = _authMethods.user.email
        ..userAvatarURL = _authMethods.user.photoURL
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted
        ..featureFlags.addAll(featureFlags);

      _firestoreMethods.addToMeetingHistory(roomName);
      await JitsiMeet.joinMeeting(options,
          listener: JitsiMeetingListener(
              onConferenceWillJoin: _onConferenceWillJoin,
              onConferenceJoined: _onConferenceJoined,
              onConferenceTerminated: _onConferenceTerminated,
              onError: _onError));
    } catch (error) {
      print("error: $error");
    }
  }

  _onConferenceWillJoin(Map message) {
    print("onConferenceWillJoin : ${message}");
  }

  _onConferenceJoined(Map message) {
    print("_onConferenceJoined : ${message}");
  }

  _onConferenceTerminated(Map message) {
    print("_onConferenceTerminated : ${message}");
  }

  _onError(error) {
    print(error);
  }
}
