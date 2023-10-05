const $LazyLoad = function (target) {
    const io = new IntersectionObserver((entries, observer) => {
        entries.forEach(function (el) {
            if (el.isIntersecting) {
                try {
                    const img = el.target;
                    const src = img.getAttribute("data-src");
                    if (src == null || src == undefined) {
                        img.classList.add("fade");
                        observer.disconnect();
                        return;
                    }
                    img.setAttribute("src", src);
                    img.classList.add("fade");
                    observer.disconnect();
                } catch {
                    observer.disconnect();
                }
            }
        });
    });
    io.observe(target);
};

document.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll('img').forEach($LazyLoad);
});