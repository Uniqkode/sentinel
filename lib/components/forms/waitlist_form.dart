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
                'flex-1 px-4 py-3 rounded-lg bg-slate-800 border border-slate-700 text-white placeholder-slate-500 focus:outline-none focus:border-rose-500 focus:ring-1 focus:ring-rose-500 text-sm valid:border-rose-500 invalid:border-red-400 invalid:focus:border-red-500 invalid:focus:ring-red-500/20',
          ),
          button(
            [
              Component.text('Join Waitlist'),
            ],
            classes:
                'px-6 py-3 bg-rose-500 text-white font-semibold rounded-lg hover:bg-rose-400 transition-all duration-300 shadow-lg shadow-rose-500/25 text-sm',
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
