import 'package:fineace/app_barrels.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    // Check if Firebase is already initialized
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    }

    runApp(const FineaceApp());
  } catch (e) {
    print('Error initializing app: $e');
  }
}
