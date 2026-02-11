document.addEventListener('DOMContentLoaded', () => {
    const header = document.querySelector('.site-header');
    const onScroll = () => {
        if (!header) {
            return;
        }
        header.classList.toggle('scrolled', window.scrollY > 10);
    };

    onScroll();
    window.addEventListener('scroll', onScroll, { passive: true });

    const revealEls = document.querySelectorAll('[data-reveal], .section-fade');
    if (!revealEls.length) {
        return;
    }

    if (!('IntersectionObserver' in window)) {
        revealEls.forEach((el) => el.classList.add('is-visible'));
        return;
    }

    const observer = new IntersectionObserver(
        (entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('is-visible');
                    observer.unobserve(entry.target);
                }
            });
        },
        { threshold: 0.2 }
    );

    revealEls.forEach((el) => observer.observe(el));
});
