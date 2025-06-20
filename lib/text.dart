import 'html_element.dart';

class Text extends HtmlElement {
  late String _content;
  Text(String content) : super(tag: '', children: []) {
    _content = content;
  }

  @override
  String toHtml([int indentLevel = 0]) {
    final innerIndent = '  ' * indentLevel;
    return '$innerIndent$_content';
  }
}
