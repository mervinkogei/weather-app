import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Screens/splashscreen.dart';
import 'package:weather_app/providers/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  // const LandingPage({super.key});
  LandingPage({Key? key,}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider.value(
        //   value: TasksProvider(),
        // ),
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        // ChangeNotifierProvider.value(
        //   value: UserProvider(),
        // ),
        // ChangeNotifierProvider.value(
        //   value: NotesProvider(),
        // ),
      ],
      child: Consumer<Auth>(
        builder: (context, auth, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            routes: {
              // AddTask.routeName: (ctx) => const AddTask(),
              // UserTaskScreen.routeName: (ctx) => const UserTaskScreen(),
              // UserAddScreen.routeName: (ctx) => const UserAddScreen(),
              // UserDetailScreen.routeName: (ctx) => const UserDetailScreen(),
              // Tabs.routeName: (ctx) => const Tabs(),
              // UserNoteScreen.routeName: (ctx) => const UserNoteScreen(),
              // AddNote.routeName: (ctx) => const AddNote(),
            },
          );
        },
      ),
    );
  }
}




