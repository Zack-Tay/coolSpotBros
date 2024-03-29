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
    apiKey: 'AIzaSyDGY7Osgh3egG8vCpOkVLTJLE8p4Pmi4zk',
    appId: '1:850984528124:web:96d0ba73b97e538735cf79',
    messagingSenderId: '850984528124',
    projectId: 'autotsk-e8bb3',
    authDomain: 'autotsk-e8bb3.firebaseapp.com',
    storageBucket: 'autotsk-e8bb3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCN6RkjbcW4XHz56CZUst8SInArWVefUN8',
    appId: '1:850984528124:android:eb92ffe5154fbb2435cf79',
    messagingSenderId: '850984528124',
    projectId: 'autotsk-e8bb3',
    storageBucket: 'autotsk-e8bb3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBN-tLd7HuvoCEgQB3ulvQpPM1ZdYEyD14',
    appId: '1:850984528124:ios:3c0c12e1529cc69435cf79',
    messagingSenderId: '850984528124',
    projectId: 'autotsk-e8bb3',
    storageBucket: 'autotsk-e8bb3.appspot.com',
    iosClientId: '850984528124-6nq1trju6t3cv9scnut4mrqoreekfpj9.apps.googleusercontent.com',
    iosBundleId: 'com.example.autotsk',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBN-tLd7HuvoCEgQB3ulvQpPM1ZdYEyD14',
    appId: '1:850984528124:ios:b76e4f2ba5bc0e4e35cf79',
    messagingSenderId: '850984528124',
    projectId: 'autotsk-e8bb3',
    storageBucket: 'autotsk-e8bb3.appspot.com',
    iosClientId: '850984528124-8tuod9g5tm670nvkk9vrjet350lrru3n.apps.googleusercontent.com',
    iosBundleId: 'com.example.autotsk.RunnerTests',
  );
}
