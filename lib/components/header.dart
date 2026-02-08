import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    var activePath = RouteState.of(context).location;

    return header(
      classes: 'bg-gradient-to-r from-blue-600 to-blue-800 p-4 shadow-lg',
      [
        nav(
          classes: 'container mx-auto flex justify-between items-center',
          [
            a(
              href: '/',
              classes: 'flex items-center text-white text-2xl font-bold tracking-wider hover:text-blue-100 transition-colors duration-300',
              [
                // SVG Icon for a quote
                svg(
                  attributes: {
                    'class': 'w-8 h-8 mr-2 text-blue-300',
                    'fill': 'none',
                    'stroke': 'currentColor',
                    'viewBox': '0 0 24 24',
                    'xmlns': 'http://www.w3.org/2000/svg',
                  },
                  [
                    path(
                      [], // Add empty list for children
                      attributes: {
                        'stroke-linecap': 'round',
                        'stroke-linejoin': 'round',
                        'stroke-width': '2',
                        'd': 'M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z',
                      },
                    ),
                  ],
                ),
                .text('Famous Quotes'),
              ],
            ),
            div(
              classes: 'flex space-x-2',
              [
                for (var route in [
                  (label: 'About', path: '/about'),
                ])
                  Link(
                    to: route.path,
                    classes: 'px-4 py-2 rounded-md text-sm font-medium transition-all duration-300 ' +
                        (activePath == route.path
                            ? 'bg-white text-blue-700 shadow-sm'
                            : 'text-blue-100 hover:bg-blue-700 hover:text-white'),
                    child: .text(route.label),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

