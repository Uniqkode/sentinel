/// Sentinel Website Configuration
///
/// Edit this file to update contact details, team members, domain, and branding.
/// All components import from here so you only need to change values in one place.
class SiteConfig {
  SiteConfig._();

  // ─── Domain & Branding ───────────────────────────────────────
  static const String domain = 'sentinelai.tech';
  static const String siteUrl = 'https://$domain';
  static const String companyName = 'Sentinel Labs';
  static const String productName = 'Sentinel';
  static const String tagline = 'Autonomous AI security for API-first teams.';

  // ─── Contact Information ─────────────────────────────────────
  static const String contactEmail = 'hello@$domain';
  static const String contactPhone = '+1 (555) 987-6543';
  static const String contactAddress = '1234 Innovation Drive, Suite 500, San Francisco, CA 94105';
  static const String contactResponseTime = 'Within 24 hours';
  static const String contactSupportNote = 'Available for all plans';

  // ─── Form Submission ─────────────────────────────────────────
  static const String formsubmitEmail = 'hello@$domain';
  static const String formRedirectBase = 'http://localhost:8080';

  // ─── Social Links ────────────────────────────────────────────
  static const String twitterUrl = 'https://x.com/sentinelai';
  static const String linkedinUrl = 'https://linkedin.com/company/sentinelai';

  // ─── SEO / Meta ──────────────────────────────────────────────
  static const String metaTitle = '$productName \u2014 AI-Powered API Security Agent';
  static const String metaDescription =
      'Detect API schema drift, shadow endpoints, and credential leaks before production. AI security for backend teams.';

  // ─── Team Members ────────────────────────────────────────────
  static const List<TeamMember> team = [
    TeamMember(
      name: 'Jordan Davis',
      role: 'CEO & Founder',
      bio: 'Backend security engineer with 8+ years building API infrastructure for fintech and enterprise platforms.',
      imageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=200&h=200&fit=crop&crop=face',
      linkedin: 'https://linkedin.com/in/jordandavis',
    ),
    TeamMember(
      name: 'Alex Kim',
      role: 'CTO & AI Lead',
      bio: 'ML engineer specializing in anomaly detection, sequence prediction, and NLP for security applications.',
      imageUrl: 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=200&h=200&fit=crop&crop=face',
      linkedin: 'https://linkedin.com/in/alexkim',
    ),
    TeamMember(
      name: 'Sam Rivera',
      role: 'Head of Product',
      bio: 'Product leader focused on developer tools and security workflows. Previously built API monitoring products.',
      imageUrl: 'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?w=200&h=200&fit=crop&crop=face',
      linkedin: 'https://linkedin.com/in/samrivera',
    ),
  ];
}

/// Data class for team member information.
class TeamMember {
  const TeamMember({
    required this.name,
    required this.role,
    required this.bio,
    required this.imageUrl,
    required this.linkedin,
  });

  final String name;
  final String role;
  final String bio;
  final String imageUrl;
  final String linkedin;
}
