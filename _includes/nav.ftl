<#macro navMenu team logo>
<!-- Start Header Area -->
<header class="header navbar-area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="nav-inner">
                    <!-- Start Navbar -->
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="${blog_url!}">
                            <img src="<#if logo?? && logo!=''>${logo!}<#else>${theme_base!}/source/images/logo/white-logo.svg</#if>" alt="Logo">
                        </a>
                        <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                            <ul id="nav" class="navbar-nav ms-auto">
															<#if team != ''>
																<@menuTag method="listByTeam" team="${team!}">
																		<#list menus?sort_by('priority') as menu>
																			<li class="nav-item">
																				<a href="${menu.url}" 
																					class="page-scroll active"
																					aria-label="Toggle navigation"
																					target="${menu.target!}">${menu.name} </a>
																			</li>
																		</#list>
																</@menuTag>
															<#else>
																<@menuTag method="list">
																		<#list menus?sort_by('priority') as menu>
																			<li class="nav-item">
																				<a href="${menu.url}" 
																					class="page-scroll active"
																					aria-label="Toggle navigation"
																					target="${menu.target!}">${menu.name} </a>
																			</li>
																		</#list>
																</@menuTag>
															</#if>
                            </ul>
                        </div> 
                    </nav>
                    <!-- End Navbar -->
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</header>
<!-- End Header Area -->
</#macro>