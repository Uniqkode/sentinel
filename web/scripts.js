// Counter animation - animates numbers when they scroll into view
function animateCounters() {
  const counters = document.querySelectorAll('[data-counter]');
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const el = entry.target;
        const target = el.getAttribute('data-counter');
        const prefix = el.getAttribute('data-prefix') || '';
        const suffix = el.getAttribute('data-suffix') || '';
        const duration = parseInt(el.getAttribute('data-duration') || '2000');
        const startTime = performance.now();

        function easeOutQuart(t) {
          return 1 - Math.pow(1 - t, 4);
        }

        function update(currentTime) {
          const elapsed = currentTime - startTime;
          const progress = Math.min(elapsed / duration, 1);
          const easedProgress = easeOutQuart(progress);
          const current = Math.floor(easedProgress * parseFloat(target));

          if (target.includes('.')) {
            const decimals = target.split('.')[1].length;
            el.textContent = prefix + (easedProgress * parseFloat(target)).toFixed(decimals) + suffix;
          } else {
            el.textContent = prefix + current.toLocaleString() + suffix;
          }

          if (progress < 1) {
            requestAnimationFrame(update);
          }
        }

        requestAnimationFrame(update);
        observer.unobserve(el);
      }
    });
  }, { threshold: 0.3 });

  counters.forEach(counter => observer.observe(counter));
}

// Scroll reveal - handles ALL reveal variants
function initScrollReveal() {
  var selectors = '.scroll-reveal, .scroll-reveal-scale, .scroll-reveal-left, .scroll-reveal-right';
  var elements = document.querySelectorAll(selectors);
  var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
      if (entry.isIntersecting) {
        var delay = entry.target.getAttribute('data-delay') || '0';
        setTimeout(function() {
          entry.target.classList.add('revealed');
        }, parseInt(delay));
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.05, rootMargin: '0px 0px -20px 0px' });

  elements.forEach(function(el) { observer.observe(el); });
}

// Staggered reveal for grid items
function initStaggerReveal() {
  var groups = document.querySelectorAll('.stagger-group');
  groups.forEach(function(group) {
    var items = group.querySelectorAll('.stagger-item');
    var observer = new IntersectionObserver(function(entries) {
      entries.forEach(function(entry) {
        if (entry.isIntersecting) {
          items.forEach(function(item, index) {
            setTimeout(function() {
              item.classList.add('revealed');
            }, index * 120);
          });
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.05, rootMargin: '0px 0px -20px 0px' });
    observer.observe(group);
  });
}

// Parallax effect for hero background
function initParallax() {
  var hero = document.getElementById('hero');
  if (!hero) return;
  var bg = hero.querySelector('.hero-bg-image');
  if (!bg) return;

  window.addEventListener('scroll', function() {
    var scrolled = window.pageYOffset;
    var rate = scrolled * 0.3;
    bg.style.transform = 'translateY(' + rate + 'px)';
  }, { passive: true });
}

// Navbar background on scroll
function initNavbarScroll() {
  var header = document.querySelector('header');
  if (!header) return;

  window.addEventListener('scroll', function() {
    if (window.scrollY > 50) {
      header.classList.add('scrolled');
    } else {
      header.classList.remove('scrolled');
    }
  }, { passive: true });
}

// Smooth scroll for anchor links
function initSmoothScroll() {
  document.querySelectorAll('a[href^="#"]').forEach(function(anchor) {
    anchor.addEventListener('click', function(e) {
      var target = document.querySelector(this.getAttribute('href'));
      if (target) {
        e.preventDefault();
        target.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }
    });
  });
}

document.addEventListener('DOMContentLoaded', function() {
  animateCounters();
  initScrollReveal();
  initStaggerReveal();
  initParallax();
  initNavbarScroll();
  initSmoothScroll();
  initMobileMenu();
});

// Mobile drawer toggle
function initMobileMenu() {
  var toggle = document.getElementById('mobile-menu-toggle');
  var menu = document.getElementById('mobile-menu');
  var overlay = document.getElementById('mobile-menu-overlay');
  if (!toggle || !menu) return;

  var labels = document.querySelectorAll('label[for="mobile-menu-toggle"]');
  var isOpen = false;

  function closeMenu() {
    isOpen = false;
    menu.style.transform = 'translateX(100%)';
    if (overlay) overlay.style.display = 'none';
    document.body.style.overflow = '';
    labels.forEach(function(l) { l.setAttribute('data-open', 'false'); });
  }

  function openMenu() {
    isOpen = true;
    menu.style.transform = 'translateX(0)';
    if (overlay) overlay.style.display = 'block';
    document.body.style.overflow = 'hidden';
    labels.forEach(function(l) { l.setAttribute('data-open', 'true'); });
  }

  labels.forEach(function(label) {
    label.addEventListener('click', function(e) {
      e.preventDefault();
      if (isOpen) {
        closeMenu();
      } else {
        openMenu();
      }
    });
  });

  if (overlay) {
    overlay.addEventListener('click', function() {
      closeMenu();
    });
  }

  var menuLinks = menu.querySelectorAll('a');
  menuLinks.forEach(function(link) {
    link.addEventListener('click', function() {
      closeMenu();
    });
  });

  window.addEventListener('resize', function() {
    if (window.innerWidth >= 768) {
      closeMenu();
    }
  });
}
