gsap.registerPlugin(ScrollTrigger);
gsap.to(".slider--first", { x: "-100%", duration: 0.4, });
gsap.to(".slider--second", { x: "-100%", duration: 0.8,});

const Tl = gsap.timeline({
    defaults: { ease: "power1.out"}
});
