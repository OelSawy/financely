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
    apiKey: 'AIzaSyARfAMrCzEi4gK0_T9saM1VYAawJVtEQzI',
    appId: '1:45737391773:web:939fcc930f071e7b088674',
    messagingSenderId: '45737391773',
    projectId: 'financely-f7850',
    authDomain: 'financely-f7850.firebaseapp.com',
    storageBucket: 'financely-f7850.appspot.com',
    measurementId: 'G-8D8NH4EHP1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLvydKI4SzKgseC-C6Ff1NB_FdkSDymCk',
    appId: '1:45737391773:android:3f35d544ac74cf50088674',
    messagingSenderId: '45737391773',
    projectId: 'financely-f7850',
    storageBucket: 'financely-f7850.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxma8uznOaFksN0Z-WAok_XCDxhtarB3w',
    appId: '1:45737391773:ios:cd29d8cfc33695d0088674',
    messagingSenderId: '45737391773',
    projectId: 'financely-f7850',
    storageBucket: 'financely-f7850.appspot.com',
    iosBundleId: 'com.example.financely',
  );
}
