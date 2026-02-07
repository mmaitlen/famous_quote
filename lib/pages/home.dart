import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateTime.now().toLocal().toString().split('.').first;
    });
  }

  @override
  Component build(BuildContext context) {
    return div(classes: 'min-h-screen flex flex-col items-center justify-center bg-gray-100', [
      div(classes: 'bg-white p-8 rounded-lg shadow-md text-center', [
        h1(classes: 'text-4xl font-bold text-gray-800 mb-4', [.text('Current Time')]),
        p(classes: 'text-6xl text-blue-600 font-mono mb-8', [.text(_currentTime)]),
        button(
          classes: 'px-6 py-3 bg-blue-500 text-white font-semibold rounded-lg shadow-md hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-opacity-75',
          events: {'click': (e) => _updateTime()},
          [
            .text('Refresh Time'),
          ],
        ),
      ]),
    ]);
  }
}
