import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// class NewsView extends StatelessWidget {
//   final String newsUrl;
//   final String title2;

//   NewsView({required this.newsUrl, required this.title2});
//   late bool? loading;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: BackButton(color: Colors.grey[800]),
//           title: Text(
//             title2,
//             style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.grey[600]),
//           ),
//           centerTitle: true,
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//         ),
//         body: loading == null
//             ? Center(
//                 child: CircularProgressIndicator(),
//               )
//             : WebView(
//                 initialUrl: "$newsUrl",
//                 javascriptMode: JavascriptMode.unrestricted,
//               ));
//   }
// }

class NewsView extends StatefulWidget {
  // const NewsView({Key? key}) : super(key: key);
  String newsUrl;
  String title2;

  NewsView({required this.newsUrl, required this.title2});

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.grey[800]),
          title: Text(
            widget.title2,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: WebView(
          initialUrl: "$widget.newsUrl",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
