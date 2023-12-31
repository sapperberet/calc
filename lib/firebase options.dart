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
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
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
    apiKey: 'AIzaSyDkRqqDjeseM6psPnXNTCXCSThICRwzYw8',
    appId: '1:198556675584:web:03051e5c6ba806e532f2e5',
    messagingSenderId: '198556675584',
    projectId: 'table-base',
    authDomain: 'table-base.firebaseapp.com',
    storageBucket: 'table-base.appspot.com',
    measurementId: 'G-ZEPP7KQP8F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJ3Slzj3XYXXvF_O5c1vPgSFEHojqom4s',
    appId: '1:198556675584:android:3a1e3d24025b880532f2e5',
    messagingSenderId: '198556675584',
    projectId: 'table-base',
    storageBucket: 'table-base.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCht1HUnZ7dvACdKEYHmMw8ki7vcOzxYCk',
    appId: '1:198556675584:ios:58b33ac514d680f332f2e5',
    messagingSenderId: '198556675584',
    projectId: 'table-base',
    storageBucket: 'table-base.appspot.com',
    iosClientId: '198556675584-deb592ti8qsgc6um5tq3lfsdpqjbs342.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCht1HUnZ7dvACdKEYHmMw8ki7vcOzxYCk',
    appId: '1:198556675584:ios:9650f62c5380465f32f2e5',
    messagingSenderId: '198556675584',
    projectId: 'table-base',
    storageBucket: 'table-base.appspot.com',
    iosClientId: '198556675584-ts4hoi2enqrqjae81mmnhn9og3ja59je.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
