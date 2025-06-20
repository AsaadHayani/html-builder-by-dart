import 'dart:io';
import 'html_builder.dart';
import 'html_element.dart';
import 'text.dart';

void main(List<String> args) async {
  Html html = Html(
      Head([
        Title('My Page from Dart'),
        HtmlElement(tag: 'meta', isSelfClosing: true)
      ]),
      Body([
        Text('Hello without tag'),
        H1("h1", style: Style({'color': 'red'})),
        H2('h2', attributes: {'style': 'background-color:green'}),
        H3('h3', style: Style({'border': '2px solid blue'})),
        H4('h4', style: Style({'text-decoration': 'underline'})),
        H5('h5', style: Style({'font-size': '20px'})),
        H6('h6', style: Style({'box-shadow': '0 1px 10px black'})),
        Section('section with id', attributes: {'id': 'id-section'}),
        Div('div with class', attributes: {'class': 'class-div'}),
        Paragrph('p', style: Style({'font-weight': 'bold'})),
        Nav('nav', style: Style({'height': '10px'})),
        Header('header', style: Style({'text-align': 'center'})),
        Ul('ul', style: Style({'list-style-type': 'disc'})),
        Li('li', style: Style({'letter-spacing': '2'})),
        Label('label', style: Style({'position': 'relative'})),
        Span('span', style: Style({'display': 'block'})),
        Anchor('a', href: '#', style: Style({'margin-block': '10px'})),
        Button('button',
            attributes: {'style': 'cursor:pointer;border-radius:50%'}),
        Bold('bold', style: Style({'text-decoration': 'line-through'})),
        Italic('i', style: Style({'font-family': 'roboto'})),
        Qoute('q'),
        Cite('cite'),
        Pre('pre'),
        Sup('sup', style: Style({'opacity': '.5'})),
        Audio('audio'),
        HtmlElement(tag: 'hr', isSelfClosing: true),
        HtmlElement(tag: 'br', isSelfClosing: true),
        Footer('footer'),
      ]));
  // print(html.toHtml());
  while (true) {
    print('What do tou want to do?');
    print('- Create file? press 1');
    print('- Exit app? press 2');
    String? input = stdin.readLineSync();

    if (input == '1') {
      html.createHtmlFiles(html.toHtml());
      await Future.delayed(Duration(seconds: 1));
    } else if (input == '2') {
      break;
    } else {
      print('Please enter currect data!');
    }
  }
}
