import 'dart:io';

class HtmlElement {
  final String tag;
  final List<HtmlElement> children;
  final Map<String, String>? attributes;
  final bool isSelfClosing;

  HtmlElement(
      {required this.tag,
      this.children = const [],
      this.attributes,
      this.isSelfClosing = false});

  String toHtml([int indentLevel = 0]) {
    final indent = '  ' * indentLevel;

    String attrString = '';
    if (attributes != null && attributes!.isNotEmpty) {
      attributes!.forEach((key, value) {
        attrString += ' $key="$value"';
      });
    }

    if (isSelfClosing) {
      return '$indent<$tag$attrString />';
    }

    String innerHtml = '';
    for (var child in children) {
      innerHtml += '\n${child.toHtml(indentLevel + 1)}';
    }

    if (innerHtml.isEmpty) {
      return '$indent<$tag$attrString></$tag>';
    }

    return '$indent<$tag$attrString>$innerHtml\n$indent</$tag>';
  }

  void createHtmlFiles(String content) {
    print('Enter file name one:');
    String? fileNameOne = stdin.readLineSync();

    print('Enter file name two:');
    String? fileNameTwo = stdin.readLineSync();

    if (fileNameOne != null || fileNameTwo != null) {
      File file = File(fileNameOne! + '.html');
      file.writeAsStringSync(content);
      print('\nHTML file created: $fileNameOne.html');

      File file2 = File(fileNameTwo! + '.html');
      file2.writeAsStringSync(content);
      print('HTML file2 created: $fileNameTwo.html\n');
    } else {
      print('Please enter a valid files names.');
    }
  }
}
