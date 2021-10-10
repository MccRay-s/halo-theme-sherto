/*
Template Name: Appvilla - Creative Landing Page HTML Template.
Author: GrayGrids
*/
(function () {
    //===== Prealoder

    window.onload = function () {
        window.setTimeout(fadeout, 500);
    }

    function fadeout() {
        document.querySelector('.preloader').style.opacity = '0';
        document.querySelector('.preloader').style.display = 'none';
    }


    /*=====================================
    Sticky
    ======================================= */
    window.onscroll = function () {
        var header_navbar = document.querySelector(".navbar-area");
        var sticky = header_navbar.offsetTop;

        var logo = document.querySelector('.navbar-brand img')
        if (window.pageYOffset > sticky) {
            if(!header_navbar.classList.contains('sticky')){
                header_navbar.classList.add("sticky");
                logo.src = '/upload/2021/09/%E5%95%86%E5%BE%92%E7%BB%84%E5%90%88Logo-%E9%BB%91%E8%89%B2-244a062284ab4c5b912764c75f4c219f.png';
            }
        } else {
            if(header_navbar.classList.contains('sticky')){
                header_navbar.classList.remove("sticky");
                logo.src = '/upload/2021/08/%E8%B5%84%E6%BA%90%2062-4ea3dc50fe79438ba164a83ae77992ab.png';
            }
        }

        // show or hide the back-top-top button(回到顶部)
        var backToTo = document.querySelector(".scroll-top-warp");
        if(backToTo){
            if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                backToTo.style.display = "block";
            } else {
                backToTo.style.display = "none";
            }
        }
    };

    /*=====================================
    Dialog Wechat
    ======================================= */
    var wechatdom = document.getElementsByClassName("wechat-img")[0];
    var dialogModel = document.getElementsByClassName("wechat-dialog-model")[0];
    var dialogContent = document.getElementsByClassName("wechat-dialog-content")[0];
    wechatdom.addEventListener('click', function () {
        dialogModel.classList.add("show");
        dialogContent.classList.add("show");
    });
    dialogModel.addEventListener('click', function () {
        dialogModel.classList.remove("show");
        dialogContent.classList.remove("show");
    });
    dialogContent.addEventListener('click', function () {
        dialogModel.classList.remove("show");
        dialogContent.classList.remove("show");
    });



    
    // section menu active(跟随滚动条高亮菜单)
	// function onScroll(event) {
	// 	var sections = document.querySelectorAll('.page-scroll');
	// 	var scrollPos = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;

	// 	for (var i = 0; i < sections.length; i++) {
	// 		var currLink = sections[i];
	// 		var val = currLink.getAttribute('href');
	// 		var refElement = document.querySelector(val);
	// 		var scrollTopMinus = scrollPos + 73;
	// 		if (refElement.offsetTop <= scrollTopMinus && (refElement.offsetTop + refElement.offsetHeight > scrollTopMinus)) {
	// 			document.querySelector('.page-scroll').classList.remove('active');
	// 			currLink.classList.add('active');
	// 		} else {
	// 			currLink.classList.remove('active');
	// 		}
	// 	}
	// };

    // window.document.addEventListener('scroll', onScroll);
    
    // for menu scroll 
    // var pageLink = document.querySelectorAll('.page-scroll');

    // pageLink.forEach(elem => {
    //     elem.addEventListener('click', e => {
    //         e.preventDefault();
    //         document.querySelector(elem.getAttribute('href')).scrollIntoView({
    //             behavior: 'smooth',
    //             offsetTop: 1 - 60,
    //         });
    //     });
    // });

    // WOW active
    new WOW().init();

    let filterButtons = document.querySelectorAll('.portfolio-btn-wrapper button');
    filterButtons.forEach(e =>
        e.addEventListener('click', () => {

            let filterValue = event.target.getAttribute('data-filter');
            iso.arrange({
                filter: filterValue
            });
        })
    );

    var elements = document.getElementsByClassName("portfolio-btn");
    for (var i = 0; i < elements.length; i++) {
        elements[i].onclick = function () {
            var el = elements[0];
            while (el) {
                if (el.tagName === "BUTTON") {
                    el.classList.remove("active");
                }
                el = el.nextSibling;
            }
            this.classList.add("active");
        };
    };

    //===== mobile-menu-btn
    let navbarToggler = document.querySelector(".mobile-menu-btn");
    navbarToggler.addEventListener('click', function () {
        navbarToggler.classList.toggle("active");
    });
})();