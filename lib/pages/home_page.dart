// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'package:borhanudiincollege/pages/addmission_form.dart';
import 'package:borhanudiincollege/pages/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  bool check = false;
  CookieManager? cookieManager;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddmissionFormScreen(),
                  ));
                },
                child: const Card(
                  child: ListTile(
                    title: Text('Addmission'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
                },
                child: const Card(
                  child: ListTile(
                    title: Text('SignOut'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: WebView(
          backgroundColor: Colors.green,
          initialUrl: 'https://www.sbpgc.edu.bd/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onProgress: (int progress) {
            Center(
                child: Column(
              children: const [
                Text("Loading"),
                CircularProgressIndicator(
                  strokeWidth: 40,
                ),
              ],
            ));
            print('WebView is loading (progress : $progress%)');
          },
        ),
      ),
    );
  }
}
