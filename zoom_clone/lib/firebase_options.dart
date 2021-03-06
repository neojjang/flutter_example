// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyACMmAVD4wwwCkRQvlRO5qbLbAEkO7dZ_M',
    appId: '1:96527163780:web:be26a36d6ca1b1ff0e7dd1',
    messagingSenderId: '96527163780',
    projectId: 'zoom-clone-fa561',
    authDomain: 'zoom-clone-fa561.firebaseapp.com',
    databaseURL: 'https://zoom-clone-fa561-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-fa561.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0MS5NV3XZzO-cA70zcj7JMypFhIC9c88',
    appId: '1:96527163780:android:40ce3ceecfb317fc0e7dd1',
    messagingSenderId: '96527163780',
    projectId: 'zoom-clone-fa561',
    databaseURL: 'https://zoom-clone-fa561-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-fa561.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLkriX05NMwZN9AbGJVV490GdmPR2FLes',
    appId: '1:96527163780:ios:96a59320b87f882e0e7dd1',
    messagingSenderId: '96527163780',
    projectId: 'zoom-clone-fa561',
    databaseURL: 'https://zoom-clone-fa561-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-fa561.appspot.com',
    iosClientId: '96527163780-a8bmq3ijq9p334bsitfo065126ttaqpu.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLkriX05NMwZN9AbGJVV490GdmPR2FLes',
    appId: '1:96527163780:ios:96a59320b87f882e0e7dd1',
    messagingSenderId: '96527163780',
    projectId: 'zoom-clone-fa561',
    databaseURL: 'https://zoom-clone-fa561-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'zoom-clone-fa561.appspot.com',
    iosClientId: '96527163780-a8bmq3ijq9p334bsitfo065126ttaqpu.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomClone',
  );
}
