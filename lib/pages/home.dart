import 'dart:math';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../quotes.dart';
import '../services/firestore_service.dart';

class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FirestoreService _firestoreService = FirestoreService();
  List<Quote> _quotes = [];
  Quote? _currentQuote;
  bool _isLoading = true;
  String? _error;
  final _random = Random();

  @override
  void initState() {
    super.initState();
    _firestoreService.getQuotes().listen((quotes) {
      setState(() {
        _quotes = quotes;
        _isLoading = false;
        if (_quotes.isNotEmpty) {
          _selectRandomQuote();
        } else {
          _currentQuote = null; // No quotes to display
        }
      });
    }, onError: (e) {
      setState(() {
        _error = 'Failed to load quotes: $e';
        _isLoading = false;
      });
    });
  }

  void _selectRandomQuote() {
    setState(() {
      if (_quotes.isNotEmpty) {
        _currentQuote = _quotes[_random.nextInt(_quotes.length)];
      } else {
        _currentQuote = null;
      }
    });
  }

  @override
  Component build(BuildContext context) {
    if (_isLoading) {
      return div(classes: 'min-h-screen flex items-center justify-center', [
        p(classes: 'text-xl text-gray-700', [.text('Loading quotes...')]),
      ]);
    }

    if (_error != null) {
      return div(classes: 'min-h-screen flex items-center justify-center', [
        p(classes: 'text-xl text-red-500', [.text(_error!)]),
      ]);
    }

    if (_currentQuote == null) {
      return div(classes: 'min-h-screen flex items-center justify-center', [
        p(classes: 'text-xl text-gray-700', [.text('No quotes available.')]),
      ]);
    }

    return div(classes: 'min-h-screen flex flex-col items-center justify-center bg-gray-100', [
      div(classes: 'bg-white p-8 rounded-lg shadow-md text-center', [
        h1(classes: 'text-4xl font-bold text-gray-800 mb-4', [.text('Famous Quote')]),
        p(classes: 'text-2xl text-blue-800 font-serif italic mb-4', [.text('"${_currentQuote!.text}"')]),
        p(classes: 'text-lg text-gray-600 mb-8', [.text('- ${_currentQuote!.author}')]),
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
