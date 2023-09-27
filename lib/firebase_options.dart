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
    apiKey: 'AIzaSyCWqB5AHUd3qzDlGbRZa5bmn7Gii7FWHYY',
    appId: '1:245564969381:web:88978ce25335ee6de3d84c',
    messagingSenderId: '245564969381',
    projectId: 'alinino',
    authDomain: 'alinino.firebaseapp.com',
    storageBucket: 'alinino.appspot.com',
    measurementId: 'G-RFKNWFB1ZB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1Vfc3d1DPFRbg2i7hCCGh7Xraz_M3ilU',
    appId: '1:245564969381:android:532e011a2a7347dee3d84c',
    messagingSenderId: '245564969381',
    projectId: 'alinino',
    storageBucket: 'alinino.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsDVjHGKT286UP-DjPZs4yJCMBJk8WBMw',
    appId: '1:245564969381:ios:eb70ae30babc7010e3d84c',
    messagingSenderId: '245564969381',
    projectId: 'alinino',
    storageBucket: 'alinino.appspot.com',
    iosClientId: '245564969381-pdsf4252gs4gq9877beigamjoioeuftv.apps.googleusercontent.com',
    iosBundleId: 'com.example.alinino',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsDVjHGKT286UP-DjPZs4yJCMBJk8WBMw',
    appId: '1:245564969381:ios:fe696b37a72b77c5e3d84c',
    messagingSenderId: '245564969381',
    projectId: 'alinino',
    storageBucket: 'alinino.appspot.com',
    iosClientId: '245564969381-53kga3b01lkn55m5rndhqq5lstn8qqa8.apps.googleusercontent.com',
    iosBundleId: 'com.example.alinino.RunnerTests',
  );
}
