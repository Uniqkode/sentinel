import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../config.dart';
import '../components/layout/section_wrapper.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return SectionWrapper(
      dark: true,
      id: 'contact',
      children: [
        div(
            classes:
                'max-w-7xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-16',
            [
              div(classes: 'scroll-reveal', [
                p(
                  classes:
                      'text-rose-400 font-semibold text-sm uppercase tracking-wider mb-3',
                  [Component.text('Contact')],
                ),
                h2(
                  classes:
                      'text-3xl md:text-4xl font-bold text-white mb-6',
                  [Component.text("Let's Talk Security")],
                ),
                p(
                  classes:
                      'text-slate-400 text-lg leading-relaxed mb-8',
                  [
                    Component.text(
                      'Have questions about integrating Sentinel into your CI/CD pipeline? Want to discuss enterprise plans or schedule a live demo? Our team is here to help.',
                    ),
                  ],
                ),
                div(classes: 'max-w-2xl mx-auto mb-8 scroll-reveal', [
                  img(
                    src: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d?w=1000&h=400&fit=crop&q=80',
                    alt: 'Enterprise Office',
                    classes: 'w-full rounded-2xl border border-slate-800',
                    attributes: {'loading': 'lazy'},
                  ),
                ]),
                div(classes: 'space-y-6', [
                  _ContactInfo(
                    icon: '\u{1F4CD}',
                    label: 'Address',
                    value: SiteConfig.contactAddress,
                  ),
                  _ContactInfo(
                    icon: '\u{260E}',
                    label: 'Phone',
                    value: SiteConfig.contactPhone,
                  ),
                  _ContactInfo(
                    icon: '\u{2709}',
                    label: 'Email',
                    value: SiteConfig.contactEmail,
                  ),
                  _ContactInfo(
                    icon: '\u{1F4CD}',
                    label: 'Response Time',
                    value: SiteConfig.contactResponseTime,
                  ),
                  _ContactInfo(
                    icon: '\u{1F504}',
                    label: 'Integration Support',
                    value: SiteConfig.contactSupportNote,
                  ),
                ]),
              ]),
              div(classes: 'scroll-reveal', attributes: {'data-delay': '200'}, [
                div(
                  classes:
                      'p-8 rounded-2xl bg-slate-900/80 border border-slate-800',
                  [
                    form(
                      action: 'https://formsubmit.co/${SiteConfig.formsubmitEmail}',
                      method: FormMethod.post,
                      [
                        Component.element(tag: 'input', attributes: {
                          'type': 'hidden',
                          'name': '_subject',
                          'value': 'Contact Form Submission — ${SiteConfig.productName}',
                        }),
                        Component.element(tag: 'input', attributes: {
                          'type': 'hidden',
                          'name': '_captcha',
                          'value': 'false',
                        }),
                        Component.element(tag: 'input', attributes: {
                          'type': 'hidden',
                          'name': '_next',
                          'value': '${SiteConfig.formRedirectBase}/#contact',
                        }),
                        div(classes: 'space-y-5', [
                          _buildField('Your Name', 'John Doe', 'name',
                              required: true),
                          _buildField('Work Email', 'john@company.com',
                              'email',
                              type: 'email', required: true),
                          _buildField('Company', 'Acme Inc.', 'company'),
                          _buildTextArea('How can we help?',
                              'Tell us about your API security needs...'),
                          div(classes: 'pt-2', [
                            button(
                              [
                                Component.text('Send Message'),
                              ],
                              classes:
                                  'w-full px-6 py-3 bg-rose-500 text-white font-semibold rounded-lg hover:bg-rose-400 transition-all duration-300 shadow-lg shadow-rose-500/25',
                              attributes: {'type': 'submit'},
                            ),
                          ]),
                          p(
                            classes:
                                'text-xs text-slate-500 text-center mt-3',
                            [
                              Component.text(
                                'We respect your privacy. No spam, ever.',
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

  static Component _buildField(
      String fieldLabel, String placeholder, String fieldName,
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
            'w-full px-4 py-2.5 rounded-lg bg-slate-800 border border-slate-700 text-white placeholder-slate-500 focus:outline-none focus:border-rose-500 focus:ring-2 focus:ring-rose-500/20 text-sm transition-all valid:border-rose-500 invalid:border-red-400',
      ),
    ]);
  }

  static Component _buildTextArea(String fieldLabel, String placeholder) {
    return div([
      Component.element(
        tag: 'label',
        classes: 'block text-sm font-medium text-slate-300 mb-1.5',
        children: [Component.text(fieldLabel)],
      ),
      Component.element(
        tag: 'textarea',
        attributes: {
          'name': 'message',
          'placeholder': placeholder,
          'rows': '4',
        },
        classes:
            'w-full px-4 py-2.5 rounded-lg bg-slate-800 border border-slate-700 text-white placeholder-slate-500 focus:outline-none focus:border-rose-500 focus:ring-2 focus:ring-rose-500/20 text-sm transition-all resize-none',
      ),
    ]);
  }
}

class _ContactInfo extends StatelessComponent {
  const _ContactInfo({
    required this.icon,
    required this.label,
    required this.value,
  });

  final String icon;
  final String label;
  final String value;

  @override
  Component build(BuildContext context) {
    return div(classes: 'flex items-start space-x-4', [
      div(
        classes:
            'w-10 h-10 rounded-lg bg-rose-500/10 flex items-center justify-center shrink-0',
        [span(classes: 'text-lg', [Component.text(icon)])],
      ),
      div([
        p(classes: 'text-sm font-medium text-white',
            [Component.text(label)]),
        p(classes: 'text-sm text-slate-400',
            [Component.text(value)]),
      ]),
    ]);
  }
}
