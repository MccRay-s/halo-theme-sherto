<#include "module/macro.ftl">
<@layout title="${metas.title!}" team="${metas.team!}">
    <!-- Start Hero Area -->
    <section id="home" class="hero-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-content">
                        <h1 class="wow fadeInLeft" data-wow-delay=".4s">${metas.title!}</h1>
                        <p class="wow fadeInLeft" data-wow-delay=".6s">${metas.desc!}</p>
                        <#--  <div class="button wow fadeInLeft" data-wow-delay=".8s">
                            <a href="javascript:void(0)" class="btn"><i class="lni lni-android-original"></i>Android 下载</a>
                            <a href="javascript:void(0)" class="btn"><i class="lni lni-apple"></i> IOS 下载</a>
                        </div>  -->
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="hero-image wow fadeInRight" data-wow-delay=".4s">
                        <img src="${theme_base!}/source/images/styb_banner.png" alt="#">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Area -->

    <!-- Start Features Area -->
    <section id="features" class="features section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <#--  <h3 class="wow zoomIn" data-wow-delay=".2s">Features</h3>  -->
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">产品特点</h2>
                        <p class="wow fadeInUp" data-wow-delay=".6s">让创业更简单，让业务更好做</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Feature -->
                    <div class="single-feature wow fadeInUp" data-wow-delay=".2s">
                        <#--  <i class="lni lni-cloud-upload"></i>  -->
                        <div class="features-img">
                          <img class="lni lni-cloud-upload" src="${theme_base!}/source/images/gxjb.png">
                        </div>
                        <h3>百元上百度首页</h3>
                        <div class="feature-desc">深度聚焦上百度首页的SEO方法，有效提升目标客户的精准访问量和转化率。</div>
                    </div>
                    <!-- End Single Feature -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Feature -->
                    <div class="single-feature wow fadeInUp" data-wow-delay=".4s">
                        <#--  <i class="lni lni-lock"></i>  -->
                        <div class="features-img">
                          <img class="lni lni-cloud-upload" src="${theme_base!}/source/images/gxrd.png">
                        </div>
                        <h3>自然排名，打造高信任度</h3>
                        <div class="feature-desc">相对于推送广告位，有榜致力于打造自然排名，客户信任度更高</div>
                    </div>
                    <!-- End Single Feature -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Feature -->
                    <div class="single-feature wow fadeInUp" data-wow-delay=".6s">
                        <#--  <i class="lni lni-reload"></i>  -->
                        <div class="features-img">
                          <img class="lni lni-cloud-upload" src="${theme_base!}/source/images/gwdx.png">
                        </div>
                        <h3>关键词排名稳定</h3>
                        <div class="feature-desc">纯白帽优化让关键词稳定排在搜索引擎首页</div>
                    </div>
                    <!-- End Single Feature -->
                </div>
            </div>
        </div>
    </section>
    <!-- End Features Area -->


    <!-- Start Call To Action Area -->
    <section id="aboutus" class="section call-action">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-12">
            <div class="cta-content">
              <h2
                class="wow fadeInUp"
                data-wow-delay=".2s"
                style="
                  visibility: visible;
                  animation-delay: 0.2s;
                  animation-name: fadeInUp;
                "
              >
                关于商徒有榜
              </h2>
              <p
                class="wow fadeInUp"
                data-wow-delay=".4s"
                style="
                  visibility: visible;
                  animation-delay: 0.4s;
                  animation-name: fadeInUp;
                "
              >商徒有榜是基于搜索引擎推广，关键词排名，深度聚焦网站关键词优化上百度首页的SEO方法，有效提升目标客户的精准访问量和转化率。
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Call To Action Area -->

    <#--  行业资讯 start  -->
    <section id="overview" class="news section">
      <div class="container">
        <div class="row">
          <div class="col-12">
              <div class="section-title">
                  <h2 class="wow fadeInUp" data-wow-delay=".4s">行业知识</h2>
              </div>
          </div>
          <div class="new-post">
            <div class="row gx-3 gy-4">
              <@postTag method="listByCategorySlug" categorySlug="styb-hyzs">
                <#list posts as post>
                  <#if post_index lt 5>
                  <div class="col-lg-<#if post_index lt 2>6<#else>4</#if> col-md-12 col-12 post-warp">
                    <div class="post-item wow fadeInRight <#if post_index == 0>item-first</#if>"
                      data-wow-delay=".5s"
                      style="visibility: visible;animation-delay: 0.5s;animation-name: fadeInRight;">
                      <h6><a href="${blog_url!}${post.fullPath!}">${post.title!}</a></h6>
                      <p class="post-time">${post.createTime!}</p>
                      <p>${post.summary!}</p>
                    </div>
                  </div>
                  </#if>
                      <#--  <a href="${post.fullPath!}">${post.title!}</a>  -->
                </#list>
              </@postTag>
            </div>
          </div>
        </div>
      </div>
    </section>
    <#--  行业资讯 end  -->


    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top">
      <i class="lni lni-chevron-up"></i>
    </a>
</@layout>
