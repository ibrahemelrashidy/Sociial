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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCXXmR48KsjzNHpunoK7WcYk2HEl0nWm3o',
    appId: '1:8498177932:web:184dea58510bed4ed518a9',
    messagingSenderId: '8498177932',
    projectId: 'devark-8d4c2',
    authDomain: 'devark-8d4c2.firebaseapp.com',
    storageBucket: 'devark-8d4c2.appspot.com',
    measurementId: 'G-WF4540SM76',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOohIEBnXo2EhyELK8NhWMOEIY-sTy568',
    appId: '1:8498177932:android:b2f5fc4f5cfb3998d518a9',
    messagingSenderId: '8498177932',
    projectId: 'devark-8d4c2',
    storageBucket: 'devark-8d4c2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6xX7kYpgvH-P-qhoJQrwG_Xl0gp77V2o',
    appId: '1:8498177932:ios:9f6cf28bd770810ad518a9',
    messagingSenderId: '8498177932',
    projectId: 'devark-8d4c2',
    storageBucket: 'devark-8d4c2.appspot.com',
    iosBundleId: 'com.example.socialappwithfire',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6xX7kYpgvH-P-qhoJQrwG_Xl0gp77V2o',
    appId: '1:8498177932:ios:9f6cf28bd770810ad518a9',
    messagingSenderId: '8498177932',
    projectId: 'devark-8d4c2',
    storageBucket: 'devark-8d4c2.appspot.com',
    iosBundleId: 'com.example.socialappwithfire',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCXXmR48KsjzNHpunoK7WcYk2HEl0nWm3o',
    appId: '1:8498177932:web:bee242736eb49cfbd518a9',
    messagingSenderId: '8498177932',
    projectId: 'devark-8d4c2',
    authDomain: 'devark-8d4c2.firebaseapp.com',
    storageBucket: 'devark-8d4c2.appspot.com',
    measurementId: 'G-7JFNYD30SQ',
  );
}
