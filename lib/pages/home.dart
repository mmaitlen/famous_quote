import 'dart:math';

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../quotes.dart';

class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Quote _currentQuote;
  final _random = Random();

  @override
  void initState() {
    super.initState();
    _selectRandomQuote();
  }

  void _selectRandomQuote() {
    setState(() {
      _currentQuote = famousQuotes[_random.nextInt(famousQuotes.length)];
    });
  }

  @override
  Component build(BuildContext context) {
    return div(classes: 'min-h-screen flex flex-col items-center justify-center bg-gray-100', [
      div(classes: 'bg-white p-8 rounded-lg shadow-md text-center', [
        h1(classes: 'text-4xl font-bold text-gray-800 mb-4', [.text('Famous Quote')]),
        p(classes: 'text-2xl text-blue-800 font-serif italic mb-4', [.text('"${_currentQuote.text}"')]),
        p(classes: 'text-lg text-gray-600 mb-8', [.text('- ${_currentQuote.author}')]),
        button(
          classes:
              'px-6 py-3 bg-blue-500 text-white font-semibold rounded-lg shadow-md hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-opacity-75',
          events: {'click': (e) => _selectRandomQuote()},
          [
            .text('New Quote'),
          ],
        ),
      ]),
    ]);
  }
}
