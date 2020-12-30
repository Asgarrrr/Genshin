gsap.registerPlugin(ScrollTrigger);
gsap.to(".slider--first", { x: "-100%", duration: 0.4, });
gsap.to(".slider--second", { x: "-100%", duration: 0.8,});

const Tl = gsap.timeline({
    defaults: { ease: "power1.out"}
});


window.onload = function() {

    gsap.to('#name', { x: () => "-" + (document.querySelector(".cha").offsetWidth),
        scrollTrigger: {
            trigger: '.cha',
            start: 'top',
            end: "top+=50%",
            markers: true,
            scrub: 1,
            duration: 5,
        }
    });

    gsap.to('.front', { x: () => "-" + (document.querySelector(".cha").offsetWidth) / 4,
        scrollTrigger: {
            trigger: '.cha',
            start: 'top+=0%',
            end: "top+=50%",
            markers: true,
            scrub: 1,
            duration: 8,
        }
    });
}