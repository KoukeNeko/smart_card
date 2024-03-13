import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:smart_card/components/navigation_bar.dart';
import 'package:smart_card/screens/card_list.dart';
import 'package:smart_card/screens/home.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Fetch available display modes
    final modes = await FlutterDisplayMode.supported;

    // Filter out modes that are not 120Hz (or the highest available refresh rate)
    final highRefreshRateModes = modes.where((mode) => mode.refreshRate >= 120).toList();

    if (highRefreshRateModes.isNotEmpty) {
      // Attempt to set the highest refresh rate available
      await FlutterDisplayMode.setPreferredMode(highRefreshRateModes.first);
    }
  } catch (e) {
    // Handle potential errors, such as the plugin not being supported on the device
    debugPrint('Error setting display mode: $e');
  }


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '卡片盒'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));

    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: currentPageIndex,
        onPageSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: const [
          HomeScreen(),
          CardListScreen(),
        ],
      ),
    );
  }
}
