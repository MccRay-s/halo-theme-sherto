<#--  <#include "module/macro.ftl">
<@layout title="${blog_title!}" team="商徒聚客">
    <h1>${post.title!}</h1>  -->
    <article>
        ${post.formatContent!}
    </article>
    <#--  <#include "module/comment.ftl">
    <@comment post=post type="post" />
</@layout>  -->
