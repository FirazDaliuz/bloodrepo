import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';class WebViewContainer extends StatefulWidget {
  final url;  WebViewContainer(this.url);  @override
  createState() => _WebViewContainerState(this.url);
}class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();  _WebViewContainerState(this._url);  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: InAppWebView(
				  initialUrlRequest: URLRequest(
				      url: Uri.parse(_url)
				  )))
          ],
        ),
        resizeToAvoidBottomInset: false);
  }
}

