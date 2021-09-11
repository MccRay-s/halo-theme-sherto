<#macro layout title team>
<!DOCTYPE html>
<html class="no-js" lang="zh">
<#include "../_includes/head.ftl">
<@head title="${title}"></@head>
<body>
<!-- Preloader -->
<div class="preloader">
    <div class="preloader-inner">
        <div class="preloader-icon">
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- /End Preloader -->
<#include "../_includes/nav.ftl">
<@navMenu team="${team}" logo="/upload/2021/08/%E8%B5%84%E6%BA%90%2062-4ea3dc50fe79438ba164a83ae77992ab.png"></@navMenu>
<#nested >
<#include "../_includes/footer.ftl">
</body>
</html>
</#macro>

