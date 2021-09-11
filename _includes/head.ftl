<#macro head title>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="google-site-verification" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    <@global.head />

    <title>${title}</title>
    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="${theme_base!}/source/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${theme_base!}/source/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="${theme_base!}/source/css/animate.css" />
    <link rel="stylesheet" href="${theme_base!}/source/css/tiny-slider.css" />
    <link rel="stylesheet" href="${theme_base!}/source/css/glightbox.min.css" />
    <link rel="stylesheet" href="${theme_base!}/source/css/main.css" />
    
</head>
</#macro>
