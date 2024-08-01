import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('CodenJobs App'),
        // ),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://desimaati.com/',
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () async {
        //     controller.reload();
        //   },
        //   child: const Icon(Icons.refresh),
        // ),
      ),
    );
  }
}
