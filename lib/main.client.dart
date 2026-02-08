/// The entrypoint for the **client** app.
///
/// This file is compiled to javascript and executed on the client when loading the page.
library;

// Client-specific Jaspr import.
import 'package:jaspr/client.dart';

// Imports the [App] component.
import 'main.client.options.dart';
import 'app.dart';
import 'package:flutter/widgets.dart' hide runApp;
import 'package:firebase_core/firebase_core.dart';
import 'package:famous_quotes/firebase_options.dart';

Future<void> main() async {
  Jaspr.initializeApp(options: defaultClientOptions);

  WidgetsFlutterBinding.ensureInitialized();

  // Attaches the [App] component to the <body> of the page.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App());
}
