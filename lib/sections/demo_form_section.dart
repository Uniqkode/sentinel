import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../config.dart';

class DemoFormSection extends StatelessComponent {
  const DemoFormSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'demo',
      classes:
          'py-20 md:py-28 lg:py-32 bg-slate-950 relative overflow-hidden',
      [
        div(classes: 'max-w-7xl mx-auto px-4 sm:px-6 lg:px-8', [
          div(classes: 'grid grid-cols-1 md:grid-cols-2 gap-16 items-center', [
            div(classes: 'scroll-reveal-left', [
              p(
                classes:
                    'text-cyan-400 font-semibold text-sm uppercase tracking-wider mb-3',
                [Component.text('Book a Demo')],
              ),
              h2(
                classes: 'text-3xl md:text-4xl font-bold text-white mb-4',
                [Component.text('See Sentinel in Action')],
              ),
              p(
                classes: 'text-slate-400 text-lg leading-relaxed mb-6',
                [
                  Component.text(
                    'Get a personalized walkthrough of Sentinel with your own API traffic. See how we detect schema drift, credential leaks, and breaking changes in real time.',
                  ),
                ],
              ),
              div(classes: 'space-y-4', [
                _DemoFeature(text: 'Live analysis of your API endpoints'),
                _DemoFeature(text: 'Custom integration walkthrough'),
                _DemoFeature(text: 'Security assessment report'),
                _DemoFeature(text: 'No commitment required'),
              ]),
            ]),
            div(
              classes:
                  'p-6 rounded-2xl bg-slate-900/80 border border-slate-800 scroll-reveal-right glow-card',
              [
                form(
                  action: 'https://formsubmit.co/${SiteConfig.formsubmitEmail}',
                  method: FormMethod.post,
                  [
                    Component.element(tag: 'input', attributes: {
                      'type': 'hidden',
                      'name': '_subject',
                      'value': 'Demo Request — ${SiteConfig.productName}',
                    }),
                    Component.element(tag: 'input', attributes: {
                      'type': 'hidden',
                      'name': '_captcha',
                      'value': 'false',
                    }),
                    Component.element(tag: 'input', attributes: {
                      'type': 'hidden',
                      'name': '_next',
                      'value': '${SiteConfig.formRedirectBase}/#demo',
                    }),
                    div(classes: 'space-y-4', [
                      _buildField('Full Name', 'Your name', 'name',
                          required: true),
                      _buildField('Work Email', 'you@company.com', 'email',
                          type: 'email', required: true),
                      _buildField('Company', 'Company name', 'company'),
                      _buildSelect(),
                      div(classes: 'pt-2', [
                        button(
                          [
                            Component.text('Request Demo'),
                          ],
                          classes:
                              'w-full px-6 py-3 bg-cyan-500 text-slate-950 font-semibold rounded-lg hover:bg-cyan-400 transition-all duration-300 shadow-lg shadow-cyan-500/25 pulse-glow',
                          attributes: {'type': 'submit'},
                        ),
                      ]),
                      p(
                        classes: 'text-xs text-slate-500 text-center',
                        [
                          Component.text(
                            'Free for teams of all sizes. No credit card required.',
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ]),
        ]),
      ],
    );
  }

  static Component _buildField(String fieldLabel, String placeholder,
      String fieldName,
      {String type = 'text', bool required = false}) {
    return div([
      Component.element(
        tag: 'label',
        classes: 'block text-sm font-medium text-slate-300 mb-1.5',
        children: [
          Component.text(fieldLabel),
          if (required)
            Component.element(
                tag: 'span',
                classes: 'text-red-400 ml-0.5',
                children: [Component.text('*')]),
        ],
      ),
      Component.element(
        tag: 'input',
        attributes: {
          'type': type,
          'name': fieldName,
          'placeholder': placeholder,
          if (required) 'required': '',
          if (type == 'email')
            'pattern': '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}',
        },
        classes:
            'w-full px-4 py-2.5 rounded-lg bg-slate-800 border border-slate-700 text-white placeholder-slate-500 focus:outline-none focus:border-cyan-500 focus:ring-2 focus:ring-cyan-500/20 text-sm transition-all valid:border-cyan-500 invalid:border-red-500',
      ),
    ]);
  }

  static Component _buildSelect() {
    return div([
      Component.element(
        tag: 'label',
        classes: 'block text-sm font-medium text-slate-300 mb-1.5',
        children: [Component.text('Team Size')],
      ),
      select(
        attributes: {'name': 'team_size'},
        classes:
            'w-full px-4 py-2.5 rounded-lg bg-slate-800 border border-slate-700 text-white focus:outline-none focus:border-cyan-500 focus:ring-2 focus:ring-cyan-500/20 text-sm transition-all',
        [
          option(value: '', [.text('Select team size')]),
          option(value: '1-5', [.text('1-5 engineers')]),
          option(value: '6-20', [.text('6-20 engineers')]),
          option(value: '21-50', [.text('21-50 engineers')]),
          option(value: '50+', [.text('50+ engineers')]),
        ],
      ),
    ]);
  }
}

class _DemoFeature extends StatelessComponent {
  const _DemoFeature({required this.text});

  final String text;

  @override
  Component build(BuildContext context) {
    return div(classes: 'flex items-center space-x-3', [
      span(classes: 'text-cyan-400 text-lg', [Component.text('\u2713')]),
      span(classes: 'text-slate-300 text-sm', [Component.text(text)]),
    ]);
  }
}
