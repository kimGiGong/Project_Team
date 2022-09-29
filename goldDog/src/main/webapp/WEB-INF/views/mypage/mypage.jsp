<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoldDog 마이페이지</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&amp;display=swap" rel="stylesheet"> <!-- https://fonts.google.com/specimen/Kumbh+Sans -->
    <link rel="stylesheet" href="/resources/Upright/fontawesome/css/all.min.css">  <!-- https://fontawesome.com/-->  
    <link rel="stylesheet" href="/resources/Upright/css/magnific-popup.css">       <!-- https://dimsemenov.com/plugins/magnific-popup/ -->
    <link rel="stylesheet" href="/resources/Upright/slick/slick.min.css">          <!-- https://kenwheeler.github.io/slick/ -->
    <link rel="stylesheet" href="/resources/Upright/slick/slick-theme.css">
    <link rel="stylesheet" href="/resources/Upright/css/templatemo-upright.css">
    
	
</head>
<body>

	<!--  헤더  -->
	<div>
	<jsp:include page="../header.jsp" />
	</div>
	<!--  헤더 END -->
	
<div class="bodymain"><!-- 바디메인 -->
<div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src="img/img-04.jpg"></div><div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src="img/img-03.jpg"></div><div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src="img/img-02.jpg"></div><div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src="img/img-01.jpg"></div>    
    <div class="container-fluid" >
        <div class="row">
            <!-- Leftside bar -->
            <div id="tm-sidebar" class="tm-sidebar" > 
                <nav class="tm-nav">
                    <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                        <i class="fas fa-bars"></i>
                    </button>
                    <div><%-- 
                        <div class="tm-brand-box">
                            <h1 class="tm-brand">Upright</h1>
                        </div> --%>                
                        <ul id="tm-main-nav">
                            <li class="nav-item">                                
                                <a href="#home" class="nav-link current">
                                    <div class="triangle-right"></div>
                                    <i class="fas fa-home nav-icon"></i>
                                    Home
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#gallery" class="nav-link">
                                    <div class="triangle-right"></div>
                                    <i class="fas fa-images nav-icon"></i>
                                    Gallery
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#about" class="nav-link">
                                    <div class="triangle-right"></div>
                                    <i class="fas fa-user-friends nav-icon"></i>
                                    About
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#contact" class="nav-link">
                                    <div class="triangle-right"></div>
                                    <i class="fas fa-envelope nav-icon"></i>
                                    Contact
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="https://paypal.me/templatemo" class="nav-link external" target="_parent" rel="sponsored">
                                    <div class="triangle-right"></div>
                                    <i class="fas fa-external-link-alt nav-icon"></i>
                                    External
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            
            <div class="tm-main">
                <!-- Home section -->
                <div class="tm-section-wrap">
                    <section id="home" class="tm-section">
                        <h2 class="tm-text-primary">Welcome to Upright</h2>
                        <hr class="mb-5">
                        <div class="row">
                            <div class="col-lg-6 tm-col-home mb-4">
                                <div class="tm-text-container">
                                    <div class="tm-icon-container mb-5 mr-0 ml-auto">
                                        <i class="fas fa-satellite-dish fa-4x tm-text-primary"></i>
                                    </div>                                
                                    <p>
                                        Leftmost column is placed for logo and main menu.
                                        After that is an image column. Right side column 
                                        is a 100% full-width content.
                                    </p>
                                    <p>
                                        Right side can put many contents and it will
                                        scroll up / down. Left side is fixed. Parallax
                                        Image changes for different pages.
                                    </p>
                                </div>                                
                            </div>
                            <div class="col-lg-6 tm-col-home mb-4">
                                <div class="tm-text-container">
                                    <div class="tm-icon-container mb-5 mr-0 ml-auto">
                                        <i class="fas fa-broadcast-tower fa-4x tm-text-primary"></i>
                                    </div>                                 
                                    <p>
                                        Quisque tincidunt, sem rutrum euismod ornare, tortor arcu tempus 
                                        lorem, accumsan suscipit mauris lorem at lorem. Praesent feugiat 
                                        mi at tortor tincidunt, ac consequat ante cursus.
                                    </p>
                                    <div class="text-right">
                                        <a href="#gallery" class="btn btn-primary tm-btn-next">Next Page</a>
                                    </div>                                    
                                </div>
                            </div>
                        </div>
                        <hr class="tm-hr-short mb-5">
                        <div class="row tm-row-home">                            
                            <div class="tm-col-home tm-col-home-l">
                                <div class="media mb-4">
                                    <i class="fas fa-scroll fa-4x tm-post-icon tm-text-primary"></i>
                                    <div class="media-body">
                                        <a href="#" class="d-block mb-2 tm-text-primary tm-post-link">24 September 2020</a>  
                                        <p>
                                            Upright is free responsive HTML CSS template by <a href="https://templatemo.com/page/1" target="_parent" rel="sponsored">TemplateMo</a>. 
                                            You can feel free to adapt and apply this layout for your 
                                        commercial or non-commercial websites. </p>
                                    </div>                                    
                                </div>
                                <div class="media mb-4">
                                    <i class="fas fa-cloud-sun fa-4x tm-post-icon tm-text-primary"></i>
                                    <div class="media-body">
                                        <a href="#" class="d-block mb-2 tm-text-primary tm-post-link">22 September 2020</a>  
                                        <p>
                                            You are not allowed to re-distribute this template as a ZIP file 
                                            on any template collection website for the template download purpose. 
                                            Please contact us for more information.
                                        </p>
                                    </div>                                    
                                </div>
                                <div class="media mb-4">
                                    <i class="fas fa-dove fa-4x tm-post-icon tm-text-primary"></i>
                                    <div class="media-body">
                                        <a href="#" class="d-block mb-2 tm-text-primary tm-post-link">16 September 2020</a>  
                                        <p>
                                            You may want to support us by making   <a href="https://paypal.me/templatemo" target="_parent" rel="sponsored">a small donation via PayPal</a>. That will be helpful. We hope you like this Upright Template for your work.
                                        </p>
                                    </div>                                    
                                </div>
                            </div>
                            <div class="tm-col-home mr-0 ml-auto">
                                <div class="tm-img-home-container"></div>                                
                            </div>
                        </div>
                    </section>
                </div>
                <!-- Gallery section -->
                <div class="tm-section-wrap">
                    <section id="gallery" class="tm-section">
                        <h2 class="tm-text-primary">Upright Gallery</h2>
                        <hr class="mb-5">
                        <ul class="tm-gallery-links">
                            <li>
                                <a href="javascript:void(0);" class="active tm-gallery-link" data-filter="*">
                                    <i class="fas fa-layer-group tm-gallery-link-icon"></i>
                                    All
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="tm-gallery-link" data-filter="portrait">
                                    <i class="fas fa-portrait tm-gallery-link-icon"></i>
                                    Portraits
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="tm-gallery-link" data-filter="nature">
                                    <i class="fas fa-leaf tm-gallery-link-icon"></i>
                                    Nature
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="tm-gallery-link" data-filter="animal">
                                    <i class="fas fa-paw tm-gallery-link-icon"></i>
                                    Animals
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="tm-gallery-link" data-filter="building">
                                    <i class="far fa-building tm-gallery-link-icon"></i>
                                    Buildings
                                </a>
                            </li>
                        </ul>
                        <div class="tm-gallery" style="position: relative; height: 293.344px;">
                            <figure class="effect-honey tm-gallery-item portrait 1" style="position: absolute; left: 0px; top: 0px;">
                                <img src="img/gallery/tn/portrait-01.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-01.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item building 1" style="position: absolute; left: 0px; top: 32px;">
                                <img src="img/gallery/tn/building-01.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-01.jpg">View more</a>						
                                </figcaption>			
                            </figure>  
                            <figure class="effect-honey tm-gallery-item nature 1" style="position: absolute; left: 0px; top: 65px;">
                                <img src="img/gallery/tn/nature-01.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-01.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 1" style="position: absolute; left: 0px; top: 97px;">
                                <img src="img/gallery/tn/animal-01.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-01.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item building 1" style="position: absolute; left: 0px; top: 130px;">
                                <img src="img/gallery/tn/building-02.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-02.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item nature 1" style="position: absolute; left: 0px; top: 162px;">
                                <img src="img/gallery/tn/nature-02.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-02.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item portrait 1" style="position: absolute; left: 0px; top: 195px;">
                                <img src="img/gallery/tn/portrait-02.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-02.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 1" style="position: absolute; left: 0px; top: 228px;">
                                <img src="img/gallery/tn/animal-02.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-02.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item building 1" style="position: absolute; left: 0px; top: 260px;">
                                <img src="img/gallery/tn/building-03.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-03.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item portrait 2" style="position: absolute; left: 0px; top: 138px; display: none;">
                                <img src="img/gallery/tn/portrait-03.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-03.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 2" style="position: absolute; left: 292px; top: 138px; display: none;">
                                <img src="img/gallery/tn/animal-03.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-03.jpg">View more</a>						
                                </figcaption>			
                            </figure>  
                            <figure class="effect-honey tm-gallery-item nature 2" style="position: absolute; left: 584px; top: 138px; display: none;">
                                <img src="img/gallery/tn/nature-03.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-03.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 2" style="position: absolute; left: 0px; top: 184px; display: none;">
                                <img src="img/gallery/tn/animal-04.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-04.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item building 2" style="position: absolute; left: 292px; top: 184px; display: none;">
                                <img src="img/gallery/tn/building-04.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-04.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item nature 2" style="position: absolute; left: 584px; top: 184px; display: none;">
                                <img src="img/gallery/tn/nature-04.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-04.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item portrait 2" style="position: absolute; left: 0px; top: 230px; display: none;">
                                <img src="img/gallery/tn/portrait-04.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-04.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 2" style="position: absolute; left: 292px; top: 230px; display: none;">
                                <img src="img/gallery/tn/animal-05.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-05.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item building 2" style="position: absolute; left: 584px; top: 230px; display: none;">
                                <img src="img/gallery/tn/building-05.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-05.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item portrait 3" style="position: absolute; left: 0px; top: 276px; display: none;">
                                <img src="img/gallery/tn/portrait-05.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-05.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item nature 3" style="position: absolute; left: 292px; top: 276px; display: none;">
                                <img src="img/gallery/tn/nature-05.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-05.jpg">View more</a>						
                                </figcaption>			
                            </figure>  
                            <figure class="effect-honey tm-gallery-item nature 3" style="position: absolute; left: 584px; top: 276px; display: none;">
                                <img src="img/gallery/tn/nature-06.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-06.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 3" style="position: absolute; left: 0px; top: 322px; display: none;">
                                <img src="img/gallery/tn/animal-06.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-06.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item building 3" style="position: absolute; left: 292px; top: 322px; display: none;">
                                <img src="img/gallery/tn/building-06.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-06.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item portrait 3" style="position: absolute; left: 584px; top: 322px; display: none;">
                                <img src="img/gallery/tn/portrait-06.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-06.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item nature 3" style="position: absolute; left: 0px; top: 368px; display: none;">
                                <img src="img/gallery/tn/nature-07.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-07.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item portrait 3" style="position: absolute; left: 292px; top: 368px; display: none;">
                                <img src="img/gallery/tn/portrait-07.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-07.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 3" style="position: absolute; left: 584px; top: 368px; display: none;">
                                <img src="img/gallery/tn/animal-07.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-07.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item building 4" style="position: absolute; left: 0px; top: 414px; display: none;">
                                <img src="img/gallery/tn/building-07.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-07.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item portrait 4" style="position: absolute; left: 292px; top: 414px; display: none;">
                                <img src="img/gallery/tn/portrait-08.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-08.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item building 4" style="position: absolute; left: 584px; top: 414px; display: none;">
                                <img src="img/gallery/tn/building-08.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-08.jpg">View more</a>						
                                </figcaption>			
                            </figure>  
                            <figure class="effect-honey tm-gallery-item nature 4" style="position: absolute; left: 0px; top: 460px; display: none;">
                                <img src="img/gallery/tn/nature-08.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-08.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 4" style="position: absolute; left: 292px; top: 460px; display: none;">
                                <img src="img/gallery/tn/animal-08.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-08.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item building 4" style="position: absolute; left: 584px; top: 460px; display: none;">
                                <img src="img/gallery/tn/building-09.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/building-09.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item nature 4" style="position: absolute; left: 0px; top: 506px; display: none;">
                                <img src="img/gallery/tn/nature-09.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/nature-09.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                            <figure class="effect-honey tm-gallery-item portrait 4" style="position: absolute; left: 292px; top: 506px; display: none;">
                                <img src="img/gallery/tn/portrait-09.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/portrait-09.jpg">View more</a>						
                                </figcaption>			
                            </figure>
                            <figure class="effect-honey tm-gallery-item animal 4" style="position: absolute; left: 584px; top: 506px; display: none;">
                                <img src="img/gallery/tn/animal-09.jpg" alt="Image">
                                <figcaption>
                                    <h2><i>Dreamy Honey</i></h2>
                                    <a href="img/gallery/animal-09.jpg">View more</a>						
                                </figcaption>			
                            </figure> 
                        </div><div class="tm-paging"><a href="javascript:void(0);" class="active tm-paging-link" data-page="1">1</a><a href="javascript:void(0);" class="tm-paging-link" data-page="2">2</a><a href="javascript:void(0);" class="tm-paging-link" data-page="3">3</a><a href="javascript:void(0);" class="tm-paging-link" data-page="4">4</a></div>
                    </section>
                </div>
                <!-- About section -->
                <div class="tm-section-wrap">
                    <section id="about" class="tm-section">
                        <h2 class="tm-text-primary">About Upright CSS Template</h2>
                        <hr class="mb-5">
                        
                        <div class="row tm-row-about">
                            <div class="tm-col-about tm-col-about-l">
                                <p class="mb-4">
                            If you want to support TemplateMo, you can contribute <a rel="sponsored" href="https://paypal.me/templatemo" target="_parent">a small donation via <strong>PayPal</strong></a>. This will be very helpful. Thank you. </p>
                                <p class="mb-4">
                                    Aliquam ornare varius erat vel aliquet. Proin ac neque a tortor tristique semper eget eget sapien. Morbi vitae diam a odio lobortis mattis sed nec justo. 
                                </p>
                                <p class="mb-4">
                                    Suspendisse sagittis tortor vel turpis aliquet, vitae molestie erat luctus.
                                </p>
                            </div>
                            <div class="tm-col-about tm-col-about-r">
                                <img src="img/img-about-01.jpg" alt="Image" class="img-fluid mb-5 tm-img-about">
                                <p>
                                    Duis fringilla eget purus luctus sodales. Sed auctor odio quis ligula dignissim efficitur vitae vitae quam.
                                </p>
                            </div>
                        </div>
                        <div class="mt-5">
                            <div class="tm-carousel slick-initialized slick-slider slick-dotted"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 4100px; transform: translate3d(0px, 0px, 0px);"><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="tabpanel" id="slick-slide00" aria-describedby="slick-slide-control00" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-01.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="0"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="0"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="0"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">Calvin Walk</h3>
                                        <p>Aliquam efficitur, velit ut aliquet molestie, nulla dolor faucibus neque, quis hendrerit.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Founder and CEO</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide01" aria-describedby="slick-slide-control01" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-02.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">Jenifer Soft</h3>
                                        <p>This is a carousel for a list of 10 team members. Each member image hover has 3 social icons.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Managing Director</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="2" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide02" aria-describedby="slick-slide-control02" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-03.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">David Rock</h3>
                                        <p>Aliquam efficitur, velit ut aliquet molestie, nulla dolor faucibus neque, quis hendrerit.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Financial Officer</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide03" aria-describedby="slick-slide-control03" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-01.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">Calvin Second</h3>
                                        <p>Aliquam efficitur, velit ut aliquet molestie, nulla dolor faucibus neque, quis hendrerit.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Senior Director</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="4" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide04" aria-describedby="slick-slide-control04" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-02.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">Jenifer Second</h3>
                                        <p>This is a carousel for a list of 10 team members. Each member image hover has 3 social icons.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Accounting Officer</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="5" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide05" aria-describedby="slick-slide-control05" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-03.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">David Second</h3>
                                        <p>Aliquam efficitur, velit ut aliquet molestie, nulla dolor faucibus neque, quis hendrerit.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Financial Assistant</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="6" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide06" aria-describedby="slick-slide-control06" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-01.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">Calvin Third</h3>
                                        <p>Aliquam efficitur, velit ut aliquet molestie, nulla dolor faucibus neque, quis hendrerit.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Designer</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="7" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide07" aria-describedby="slick-slide-control07" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-02.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">Jenifer Third</h3>
                                        <p>This is a carousel for a list of 10 team members. Each member image hover has 3 social icons.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Program Director</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="8" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide08" aria-describedby="slick-slide-control08" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-03.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">David Three</h3>
                                        <p>Aliquam efficitur, velit ut aliquet molestie, nulla dolor faucibus neque, quis hendrerit.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Financial Assistant</h4>
                                    </div>
                                </div></div></div><div class="slick-slide" data-slick-index="9" aria-hidden="true" tabindex="-1" role="tabpanel" id="slick-slide09" aria-describedby="slick-slide-control09" style="width: 410px;"><div><div class="tm-carousel-item" style="width: 100%; display: inline-block;">
                                    <figure class="effect-honey mb-4">
                                        <img src="img/about-01.jpg" alt="Featured Item">
                                        <figcaption>
                                            <ul class="tm-social">
                                                <li><a href="https://facebook.com" class="tm-social-link" tabindex="-1"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="https://twitter.com" class="tm-social-link" tabindex="-1"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="https://instagram.com" class="tm-social-link" tabindex="-1"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </figcaption>
                                    </figure>
                                    <div class="tm-about-text">
                                        <h3 class="mb-3 tm-text-primary tm-about-title">Calvin Four</h3>
                                        <p>Aliquam efficitur, velit ut aliquet molestie, nulla dolor faucibus neque, quis hendrerit.</p>
                                        <h4 class="tm-text-secondary tm-about-subtitle">Media Partner</h4>
                                    </div>
                                </div></div></div></div></div><ul class="slick-dots" style="" role="tablist"><li class="slick-active" role="presentation"><button type="button" role="tab" id="slick-slide-control00" aria-controls="slick-slide00" aria-label="1 of 10" tabindex="0" aria-selected="true">1</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control01" aria-controls="slick-slide01" aria-label="2 of 10" tabindex="-1">2</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control02" aria-controls="slick-slide02" aria-label="3 of 10" tabindex="-1">3</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control03" aria-controls="slick-slide03" aria-label="4 of 10" tabindex="-1">4</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control04" aria-controls="slick-slide04" aria-label="5 of 10" tabindex="-1">5</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control05" aria-controls="slick-slide05" aria-label="6 of 10" tabindex="-1">6</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control06" aria-controls="slick-slide06" aria-label="7 of 10" tabindex="-1">7</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control07" aria-controls="slick-slide07" aria-label="8 of 10" tabindex="-1">8</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control08" aria-controls="slick-slide08" aria-label="9 of 10" tabindex="-1">9</button></li><li role="presentation"><button type="button" role="tab" id="slick-slide-control09" aria-controls="slick-slide09" aria-label="10 of 10" tabindex="-1">10</button></li></ul></div>
                        </div>
                    </section>
                </div>

                <!-- Contact section -->
                <div class="tm-section-wrap">
                    <div id="contact" class="tm-section">
                        <h2 class="tm-text-primary">Contact Upright</h2>
                        <hr class="mb-5">
                        <div class="row">
                            <div class="col-xl-6 tm-contact-col-l mb-4">
                                <form id="contact-form" action="" method="POST" class="tm-contact-form">
                                    <div class="form-group">
                                        <input type="text" name="name" class="form-control rounded-0" placeholder="Name" required="">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" class="form-control rounded-0" placeholder="Email" required="">
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control" id="contact-select" name="inquiry">
                                            <option value="-">Subject</option>
                                            <option value="sales">Sales &amp; Marketing</option>
                                            <option value="creative">Creative Design</option>
                                            <option value="uiux">UI / UX</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <textarea rows="8" name="message" class="form-control rounded-0" placeholder="Message" required=""></textarea>
                                    </div>
            
                                    <div class="form-group tm-text-right">
                                        <button type="submit" class="btn btn-primary">Send</button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-xl-6 tm-contact-col-r">
                                <!-- Map -->
                                <div class="mapouter mb-4">
                                    <div class="gmap_canvas">
                                        <iframe width="100%" height="520" id="gmap_canvas" src="https://maps.google.com/maps?q=Av.+L%C3%BAcio+Costa,+Rio+de+Janeiro+-+RJ,+Brazil&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                                    </div>
                                </div>
            
                                <!-- Address -->
                                <address class="mb-4">
                                    120-240 eget purus luctus sodales. Sed<br>
                                    auctor odio quis ligula dignissim efficitur<br>
                                    vitae vitae quam 16502
                                </address>
            
                                <!-- Links -->
                                <ul class="tm-contact-links mb-4">
                                    <li class="mb-2">
                                        <a href="tel:0100200340">
                                            <i class="fas fa-phone mr-2 tm-contact-link-icon"></i>
                                            Tel: 010-020-0340
                                        </a>
                                    </li>
                                    <li>
                                        <a href="mailto:info@company.com">
                                            <i class="fas fa-at mr-2 tm-contact-link-icon"></i>
                                            Email: info@company.com
                                        </a>
                                    </li>
                                </ul>
                                <ul class="tm-contact-social">
                                    <li><a href="https://fb.com/templatemo" class="tm-social-link"><i class="fab fa-facebook"></i></a></li>
                                    <li><a href="https://twitter.com" class="tm-social-link"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="https://instagram.com" class="tm-social-link"><i class="fab fa-instagram"></i></a></li>
                                    <li><a href="https://youtube.com" class="tm-social-link"><i class="fab fa-youtube"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Copyright -->                
                <div class="tm-section-wrap tm-copyright row">
                    <div class="col-12">
                        <div class="text-right">
                            Copyright 2020 Upright Company
                        </div> 
                    </div>
                </div>                 
            </div> <!-- .tm-main -->                      
        </div> <!-- .row -->
    </div> <!-- .container-fluid -->
</div><!-- 바디메인 END -->
    <script src="js/jquery-3.4.1.min.js"></script>          <!-- https://jquery.com/ -->
    <script src="js/jquery.singlePageNav.min.js"></script>  <!-- https://github.com/ChrisWojcik/single-page-nav -->
    <script src="js/parallax/parallax.min.js"></script>     <!-- https://pixelcog.github.io/parallax.js/ -->
    <script src="js/imagesloaded.pkgd.min.js"></script>     <!-- https://imagesloaded.desandro.com/ -->
    <script src="js/isotope.pkgd.min.js"></script>          <!-- https://isotope.metafizzy.co/ -->
    <script src="js/jquery.magnific-popup.min.js"></script> <!-- https://dimsemenov.com/plugins/magnific-popup/ -->
    <script src="slick/slick.min.js"></script>              <!-- https://kenwheeler.github.io/slick/ -->
    <script src="js/templatemo-script.js"></script>
 </body>
 </html>