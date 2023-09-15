import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'pages/home.dart';

/*
to update code
git init
git add .
git commit -m "first commit"
git branch -M main

git push -u origin main
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await scheduleNotification();
  // InAppPurchaseConnection.enablePendingPurchases();
  runApp(const MyApp());
}

Future<void> scheduleNotification() async {
  print('loading notication');
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()!
      .requestPermission();
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('bell');
  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
          'repeating channel id', 'repeating channel name',
          channelDescription: 'repeating description',
          playSound: true,
          enableVibration: true,
          priority: Priority.high);
  const NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);
  await flutterLocalNotificationsPlugin.periodicallyShow(
      0,
      'Novel World',
      'Read for today and build your vocabulary',
      RepeatInterval.hourly,
      notificationDetails,
      androidAllowWhileIdle: true);
  flutterLocalNotificationsPlugin.initialize(
      InitializationSettings(
        android: initializationSettingsAndroid,
      ), onDidReceiveNotificationResponse: (val) {
    print('Notification received ');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Novel World',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

/*
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Set<String> _productIds = {'your_product_id_here'};
  List<ProductDetails> _products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_productIds);
    if (response.error != null) {
      // Handle error
      return;
    }
    setState(() {
      _products = response.productDetails;
    });
  }

  Future<void> _buyProduct(ProductDetails product) async {
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
    await InAppPurchaseConnection.instance.buyNonConsumable(purchaseParam: purchaseParam);
    // Handle success and provide access to the purchased content
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('In-App Purchases Example'),
      ),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return ListTile(
            title: Text(product.title),
            subtitle: Text(product.description),
            trailing: ElevatedButton(
              onPressed: () => _buyProduct(product),
              child: Text('Buy'),
            ),
          );
        },
      ),
    );
  }
}


*/
