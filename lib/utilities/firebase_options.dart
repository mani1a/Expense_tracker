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
    apiKey: 'AIzaSyCbJXILqqOPcth42vAq5M40wfwK74b-77U',
    appId: '1:679253199169:web:5dedb8f7f2832bd7b779c0',
    messagingSenderId: '679253199169',
    projectId: 'expensetracker-6da50',
    authDomain: 'expensetracker-6da50.firebaseapp.com',
    storageBucket: 'expensetracker-6da50.appspot.com',
    measurementId: 'G-GZGSP1FC15',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3XRgWHV4kGoDJS2LUxJVDG-5UlRn9k0k',
    appId: '1:679253199169:android:b3b2fb1dde9fc71bb779c0',
    messagingSenderId: '679253199169',
    projectId: 'expensetracker-6da50',
    storageBucket: 'expensetracker-6da50.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3WbriykNwc_NIHi1N3tIWuQRx2rY8dm4',
    appId: '1:679253199169:ios:6db3dab61d79b04fb779c0',
    messagingSenderId: '679253199169',
    projectId: 'expensetracker-6da50',
    storageBucket: 'expensetracker-6da50.appspot.com',
    iosBundleId: 'com.example.erycExpenseTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3WbriykNwc_NIHi1N3tIWuQRx2rY8dm4',
    appId: '1:679253199169:ios:ab21dcbafdcd40a0b779c0',
    messagingSenderId: '679253199169',
    projectId: 'expensetracker-6da50',
    storageBucket: 'expensetracker-6da50.appspot.com',
    iosBundleId: 'com.example.erycExpenseTracker.RunnerTests',
  );
}