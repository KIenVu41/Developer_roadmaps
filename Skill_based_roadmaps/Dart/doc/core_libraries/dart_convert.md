The dart:convert library (API reference) has converters for JSON and UTF-8, as well as support for creating additional converters. JSON is a simple text format for representing structured objects and collections. UTF-8 is a common variable-width encoding that can represent every character in the Unicode character set.

To use this library, import dart:convert.
```
import 'dart:convert';
```
# Decoding and encoding JSON
Decode a JSON-encoded string into a Dart object with jsonDecode():
```
// NOTE: Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
// This string is JSON, not Dart.
var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';

var scores = jsonDecode(jsonString);
assert(scores is List);

var firstScore = scores[0];
assert(firstScore is Map);
assert(firstScore['score'] == 40);
```
Encode a supported Dart object into a JSON-formatted string with jsonEncode():
```
var scores = [
  {'score': 40},
  {'score': 80},
  {'score': 100, 'overtime': true, 'special_guest': null}
];

var jsonText = jsonEncode(scores);
assert(jsonText ==
    '[{"score":40},{"score":80},'
        '{"score":100,"overtime":true,'
        '"special_guest":null}]');
```
Only objects of type int, double, String, bool, null, List, or Map (with string keys) are directly encodable into JSON. List and Map objects are encoded recursively.

You have two options for encoding objects that aren’t directly encodable. The first is to invoke jsonEncode() with a second argument: a function that returns an object that is directly encodable. Your second option is to omit the second argument, in which case the encoder calls the object’s toJson() method.
# Decoding and encoding UTF-8 characters
Use utf8.decode() to decode UTF8-encoded bytes to a Dart string:
```
List<int> utf8Bytes = [
  0xc3, 0x8e, 0xc3, 0xb1, 0xc5, 0xa3, 0xc3, 0xa9,
  0x72, 0xc3, 0xb1, 0xc3, 0xa5, 0xc5, 0xa3, 0xc3,
  0xae, 0xc3, 0xb6, 0xc3, 0xb1, 0xc3, 0xa5, 0xc4,
  0xbc, 0xc3, 0xae, 0xc5, 0xbe, 0xc3, 0xa5, 0xc5,
  0xa3, 0xc3, 0xae, 0xe1, 0xbb, 0x9d, 0xc3, 0xb1
];

var funnyWord = utf8.decode(utf8Bytes);

assert(funnyWord == 'Îñţérñåţîöñåļîžåţîờñ');
```
To convert a stream of UTF-8 characters into a Dart string, specify utf8.decoder to the Stream transform() method:
```
var lines = utf8.decoder.bind(inputStream).transform(const LineSplitter());
try {
  await for (final line in lines) {
    print('Got ${line.length} characters from stream');
  }
  print('file is now closed');
} catch (e) {
  print(e);
}
```
Use utf8.encode() to encode a Dart string as a list of UTF8-encoded bytes:
```
Uint8List encoded = utf8.encode('Îñţérñåţîöñåļîžåţîờñ');

assert(encoded.length == utf8Bytes.length);
for (int i = 0; i < encoded.length; i++) {
  assert(encoded[i] == utf8Bytes[i]);
}
```