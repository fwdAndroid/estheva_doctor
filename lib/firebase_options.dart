// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBAWcpNVIosQau0BTJiPDMrfE1wV4_KgNo',
    appId: '1:913992234259:web:36ef6e1784e31db583d6e6',
    messagingSenderId: '913992234259',
    projectId: 'estheva-f2ab9',
    authDomain: 'estheva-f2ab9.firebaseapp.com',
    storageBucket: 'estheva-f2ab9.appspot.com',
    measurementId: 'G-YVV5YHYQ52',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARbcZAXsyzSP0yGuhGZX292wI8mR8gDco',
    appId: '1:913992234259:android:02d510780ee00b2b83d6e6',
    messagingSenderId: '913992234259',
    projectId: 'estheva-f2ab9',
    storageBucket: 'estheva-f2ab9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCeEm0H82vFbciCO2smNtWiNrNA23ewiHg',
    appId: '1:913992234259:ios:eb064eb7cde5af4683d6e6',
    messagingSenderId: '913992234259',
    projectId: 'estheva-f2ab9',
    storageBucket: 'estheva-f2ab9.appspot.com',
    iosBundleId: 'com.medicaredoctors.app',
  );
}
