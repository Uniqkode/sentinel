import 'package:jaspr/server.dart';
import 'package:jaspr/dom.dart';

import 'config.dart';
import 'app.dart';

void main() {
  Jaspr.initializeApp();
  runApp(Document(
    title: SiteConfig.metaTitle,
    head: [
      Component.element(tag: 'link', attributes: {
        'rel': 'icon',
        'type': 'image/svg+xml',
        'href': 'favicon.svg',
      }),
      Component.element(tag: 'meta', attributes: {
        'name': 'description',
        'content': SiteConfig.metaDescription,
      }),
      Component.element(tag: 'meta', attributes: {
        'property': 'og:title',
        'content': SiteConfig.metaTitle,
      }),
      Component.element(tag: 'meta', attributes: {
        'property': 'og:description',
        'content': SiteConfig.metaDescription,
      }),
      Component.element(tag: 'meta', attributes: {
        'property': 'og:url',
        'content': SiteConfig.siteUrl,
      }),
      Component.element(tag: 'meta', attributes: {
        'property': 'og:type',
        'content': 'website',
      }),
      Component.element(tag: 'meta', attributes: {
        'name': 'twitter:card',
        'content': 'summary_large_image',
      }),
      Component.element(tag: 'meta', attributes: {
        'name': 'twitter:title',
        'content': SiteConfig.metaTitle,
      }),
      Component.element(tag: 'meta', attributes: {
        'name': 'twitter:description',
        'content': SiteConfig.metaDescription,
      }),
      link(rel: 'stylesheet', href: 'styles.css'),
      link(rel: 'stylesheet', href: 'animations.css'),
      link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
      link(
        rel: 'preconnect',
        href: 'https://fonts.gstatic.com',
        attributes: {'crossorigin': ''},
      ),
      link(
        rel: 'stylesheet',
        href:
            'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap',
      ),
      Component.element(tag: 'script', attributes: {
        'src': 'scripts.js',
        'defer': '',
      }),
    ],
    body: App(),
  ));
}
