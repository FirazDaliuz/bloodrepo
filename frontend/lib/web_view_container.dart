import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';class WebViewContainer extends StatefulWidget {
  final url;  WebViewContainer(this.url);  @override
  createState() => _WebViewContainerState(this.url);
}
WebViewController controllerGlobal;

Future<bool> _exitApp(BuildContext context) async {
  if (await controllerGlobal.canGoBack()) {
    print("onwill goback");
    controllerGlobal.goBack();
  } else {
    Scaffold.of(context).showSnackBar(
      const SnackBar(content: Text("No back history item")),
    );
    return Future.value(false);
  }
}
class _WebViewContainerState extends State<WebViewContainer> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  var _url;
  final _key = UniqueKey();  _WebViewContainerState(this._url);  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return WillPopScope(
      onWillPop: () => _exitApp(context),
      Scaffold(
          body: Column(
            children: [
              Expanded(
                  child: WebView(
                      key: _key,
                      javascriptMode: JavascriptMode.unrestricted,
                      initialUrl: _url))
            ],
          )));
  }
}