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
    apiKey: 'AIzaSyC6AxxvWFyCYYXsloCaguwsePuUh5Wu0fo',
    appId: '1:198380670863:web:30fad06ab29e5e367b85fa',
    messagingSenderId: '198380670863',
    projectId: 'fruit-hub-a0a24',
    authDomain: 'fruit-hub-a0a24.firebaseapp.com',
    storageBucket: 'fruit-hub-a0a24.firebasestorage.app',
    measurementId: 'G-K5F4L8XD49',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeF65nuttozmWOaw-UgtDSwkIuC6LciXc',
    appId: '1:198380670863:android:9e4b25aa3eb24dd27b85fa',
    messagingSenderId: '198380670863',
    projectId: 'fruit-hub-a0a24',
    storageBucket: 'fruit-hub-a0a24.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeAxoOA9pm2VNDBKI8dFebYBbblTzA6ww',
    appId: '1:198380670863:ios:32c727d13a844efd7b85fa',
    messagingSenderId: '198380670863',
    projectId: 'fruit-hub-a0a24',
    storageBucket: 'fruit-hub-a0a24.firebasestorage.app',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDeAxoOA9pm2VNDBKI8dFebYBbblTzA6ww',
    appId: '1:198380670863:ios:32c727d13a844efd7b85fa',
    messagingSenderId: '198380670863',
    projectId: 'fruit-hub-a0a24',
    storageBucket: 'fruit-hub-a0a24.firebasestorage.app',
    iosBundleId: 'com.example.fruitsHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC6AxxvWFyCYYXsloCaguwsePuUh5Wu0fo',
    appId: '1:198380670863:web:bba6daeb8e5a01a67b85fa',
    messagingSenderId: '198380670863',
    projectId: 'fruit-hub-a0a24',
    authDomain: 'fruit-hub-a0a24.firebaseapp.com',
    storageBucket: 'fruit-hub-a0a24.firebasestorage.app',
    measurementId: 'G-PFP4PZ01M8',
  );
}
