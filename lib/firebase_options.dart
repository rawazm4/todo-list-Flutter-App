import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'run the FlutterFire CLI or add web options manually.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZM18rmrEkLJobP6p5gmJs_Zyczl5UBBQ',
    appId: '1:33830918656:android:6628841327569b0bce56e5',
    messagingSenderId: '33830918656',
    projectId: 'todolist-31023',
    storageBucket: 'todolist-31023.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDChR-gqQ3FZ7ixm3b_BKtY6HxRYDketzQ',
    appId: '1:33830918656:ios:5cfe4fb4768ba71fce56e5',
    messagingSenderId: '33830918656',
    projectId: 'todolist-31023',
    storageBucket: 'todolist-31023.firebasestorage.app',
    iosBundleId: 'com.example.todoliste',
  );
}
