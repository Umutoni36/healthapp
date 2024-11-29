import 'package:js/js.dart';
import 'package:js/js_util.dart' show promiseToFuture;

@JS('JSON.parse')
external dynamic parseJson(String json);

@JS('JSON.stringify')
external String stringify(dynamic obj);

class StorageInterop {
  static dynamic jsify(Object? object) {
    if (object == null) return null;
    return parseJson(stringify(object));
  }

  static dynamic dartify(dynamic jsObject) {
    if (jsObject == null) return null;
    return parseJson(stringify(jsObject));
  }

  static Future<T> handleThenable<T>(dynamic promise) {
    return promiseToFuture<T>(promise);
  }
}
