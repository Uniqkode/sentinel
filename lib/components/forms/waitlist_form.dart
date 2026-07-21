import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../../config.dart';

class WaitlistForm extends StatelessComponent {
  const WaitlistForm({super.key});

  @override
  Component build(BuildContext context) {
    return form(
      action: 'https://formsubmit.co/${SiteConfig.formsubmitEmail}',
      method: FormMethod.post,
      classes: 'max-w-md mx-auto',
      [
        Component.element(tag: 'input', attributes: {
          'type': 'hidden',
          'name': '_subject',
          'value': 'New Waitlist Signup — ${SiteConfig.productName}',
        }),
        Component.element(tag: 'input', attributes: {
          'type': 'hidden',
          'name': '_captcha',
          'value': 'false',
        }),
        Component.element(tag: 'input', attributes: {
          'type': 'hidden',
          'name': '_next',
          'value': '${SiteConfig.formRedirectBase}/#final-cta',
        }),
        div(classes: 'flex flex-col sm:flex-row gap-3', [
          Component.element(
            tag: 'input',
            attributes: {
              'type': 'email',
              'name': 'email',
              'placeholder': 'Enter your email',
              'required': '',
              'pattern': '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}',
            },
            classes:
                'flex-1 px-4 py-3 rounded-lg bg-slate-800 border border-slate-700 text-white placeholder-slate-500 focus:outline-none focus:border-cyan-500 focus:ring-1 focus:ring-cyan-500 text-sm valid:border-cyan-500 invalid:border-red-500 invalid:focus:border-red-500 invalid:focus:ring-red-500/20',
          ),
          button(
            [
              Component.text('Join Waitlist'),
            ],
            classes:
                'px-6 py-3 bg-cyan-500 text-slate-950 font-semibold rounded-lg hover:bg-cyan-400 transition-all duration-300 shadow-lg shadow-cyan-500/25 text-sm',
            attributes: {'type': 'submit'},
          ),
        ]),
        p(
          classes: 'text-xs text-slate-500 text-center mt-2',
          [Component.text('No spam. Unsubscribe anytime.')],
        ),
      ],
    );
  }
}
