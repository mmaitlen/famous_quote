import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'bg-gray-50 min-h-screen p-8',
      [
        div(
          classes: 'container mx-auto max-w-4xl bg-white rounded-2xl shadow-lg p-8',
          [
            h2(
              classes: 'text-4xl font-extrabold text-gray-800 mb-2',
              [.text('About This App')],
            ),
            div(classes: 'h-1 w-20 bg-blue-600 rounded-full mb-8', []),
            p(
              classes: 'text-lg text-gray-600 leading-relaxed mb-6',
              [
                .text(
                  'This application is a proof-of-concept built to explore the integration of modern web technologies with Dart.',
                ),
              ],
            ),
            div(
              classes: 'grid grid-cols-1 md:grid-cols-3 gap-8 text-center mb-8',
              [
                _buildTechCard(
                  'Jaspr',
                  'A modern web framework for building websites, SPAs, and server-rendered apps in Dart.',
                  'https://jaspr.site',
                ),
                _buildTechCard(
                  'Firebase',
                  'A comprehensive platform for building web and mobile applications.',
                  'https://firebase.google.com',
                ),
              ],
            ),
            div(classes: 'border-t border-gray-200 my-8', []),
            p(
              classes: 'text-center text-gray-500',
              [
                .text('The goal is to provide a simple, yet comprehensive example for developers.'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildTechCard(String title, String description, String url) {
    return div(
      classes: 'bg-gray-100 p-6 rounded-lg hover:shadow-xl transition-shadow duration-300',
      [
        h3(
          classes: 'text-2xl font-bold text-gray-800 mb-3',
          [.text(title)],
        ),
        p(
          classes: 'text-gray-600 mb-4',
          [.text(description)],
        ),
        a(
          href: url,
          target: Target.blank,
          classes:
              'inline-block px-5 py-2 bg-blue-600 text-white font-semibold rounded-full hover:bg-blue-700 transition-colors duration-300',
          [
            .text('Learn More'),
          ],
        ),
      ],
    );
  }
}
