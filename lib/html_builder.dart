import 'html_element.dart';
import 'text.dart';

class Html extends HtmlElement {
  Html(Head head, Body body) : super(tag: 'html', children: [head, body]);
}

class Head extends HtmlElement {
  Head(List<HtmlElement> children) : super(tag: 'head', children: children);
}

class Body extends HtmlElement {
  Body(List<HtmlElement> children) : super(tag: 'body', children: children);
}

class Title extends HtmlElement {
  Title(String content) : super(tag: 'title', children: [Text(content)]);
}

class H1 extends HtmlElement {
  H1(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'h1', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class H2 extends HtmlElement {
  H2(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'h2', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class H3 extends HtmlElement {
  H3(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'h3', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class H4 extends HtmlElement {
  H4(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'h4', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class H5 extends HtmlElement {
  H5(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'h5', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class H6 extends HtmlElement {
  H6(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'h6', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Sup extends HtmlElement {
  Sup(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'sup', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Paragrph extends HtmlElement {
  Paragrph(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'p', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Section extends HtmlElement {
  Section(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'section', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Span extends HtmlElement {
  Span(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'span', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Italic extends HtmlElement {
  Italic(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'i', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Div extends HtmlElement {
  Div(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'div', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Anchor extends HtmlElement {
  Anchor(String content,
      {Style? style, Map<String, String>? attributes, String? href})
      : super(
            tag: 'a',
            children: [Text('\tThis is $content')],
            attributes: {'href': href ?? ''});
}

class Label extends HtmlElement {
  Label(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'label', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Button extends HtmlElement {
  Button(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'button', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Ul extends HtmlElement {
  Ul(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'ul', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Li extends HtmlElement {
  Li(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'li', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Footer extends HtmlElement {
  Footer(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'footer', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Nav extends HtmlElement {
  Nav(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'nav', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Bold extends HtmlElement {
  Bold(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'bold', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Cite extends HtmlElement {
  Cite(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'cite', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Audio extends HtmlElement {
  Audio(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'audio', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Pre extends HtmlElement {
  Pre(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'pre', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Header extends HtmlElement {
  Header(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'header', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Qoute extends HtmlElement {
  Qoute(String content, {Style? style, Map<String, String>? attributes})
      : super(tag: 'q', children: [
          Text('\tThis is $content')
        ], attributes: {
          if (style != null) 'style': style.toCss(),
          if (attributes != null) ...attributes,
        });
}

class Style {
  final Map<String, String> properties;

  Style(this.properties);

  String toCss() {
    return properties.entries
        .map((entry) => '${entry.key}: ${entry.value};')
        .join(' ');
  }
}
