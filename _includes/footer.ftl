<!-- Footer -->
<!-- ========================= JS here ========================= -->
<script src="${theme_base!}/source/js/bootstrap.min.js"></script>
<script src="${theme_base!}/source/js/wow.min.js"></script>
<script src="${theme_base!}/source/js/tiny-slider.js"></script>
<script src="${theme_base!}/source/js/glightbox.min.js"></script>
<script src="${theme_base!}/source/js/count-up.min.js"></script>
<script src="${theme_base!}/source/js/main.js"></script>
<script type="text/javascript">
    //====== counter up 
    var cu = new counterUp({
        start: 0,
        duration: 2000,
        intvalues: true,
        interval: 100,
        append: " ",
    });
    cu.start();
</script>
<#--
    公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
    包含：统计代码，底部信息
-->
<!-- Start Footer Area -->
    <footer id="footer" class="footer">
      <!-- Start Footer Top -->
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-12">
              <!-- Single Widget -->
              <div class="single-footer f-about">
                <div class="logo">
                  <a href="index.html">
                    <img src="/upload/2021/08/%E8%B5%84%E6%BA%90%2062-4ea3dc50fe79438ba164a83ae77992ab.png" alt="#" />
                  </a>
                </div>
                <p class="copyright-text">找客户 | 找资源 | 找老板 - 上商徒聚客</p>
                <p class="copyright-text">
                  Copyright © 商徒聚客 - 商徒 2021
                  <@global.footer />
                </p>
              </div>
              <!-- End Single Widget -->
            </div>
            <div class="col-lg-8 col-md-8 col-12">
              <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                  <!-- Single Widget -->
                  <div class="single-footer f-link center">
                    <h3>服务</h3>
                    <ul>
                      <li><a href="javascript:void(0)">商徒聚客</a></li>
                      <li><a href="javascript:void(0)">商徒来客</a></li>
                      <li><a href="javascript:void(0)">软文分发</a></li>
                      <li><a href="javascript:void(0)">搜索推广</a></li>
                    </ul>
                  </div>
                  <!-- End Single Widget -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                  <!-- Single Widget -->
                  <div class="single-footer f-link center">
                    <h3>公众号</h3>
                    <div class="footer-img">
                      <img src="/upload/2021/09/%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%8F%B7-e3ef6c54f702411d8880b6abe28d655b.jpg">
                    </div>
                  </div>
                  <!-- End Single Widget -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                  <!-- Single Widget -->
                  <div class="single-footer f-link center">
                    <h3>微信客服</h3>
                    <div class="footer-img">
                      <img src="/upload/2021/09/%E5%A4%9A%E4%BA%BA%E4%BA%8C%E7%BB%B4%E7%A0%81-7c22b2d106554f44944e7dda5fc86cf6.png">
                    </div>
                  </div>
                  <!-- End Single Widget -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--/ End Footer Top -->
    </footer>
    <!--/ End Footer Area -->
