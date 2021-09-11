<#include "module/macro.ftl">
<@layout title="${blog_title!}" team="商徒聚客">
    <div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 offset-lg-2 col-md-12 col-12">
						<div class="breadcrumbs-content">
							<h1 class="page-title">${post.title!}</h1>
						</div>
						<ul class="breadcrumb-nav">
						<#list categories as category>
							<li><a href="javaScript:void(0);">${category.name!}</a></li>
						</#list>
							<#--  <li><a href="index.html">Home</a></li>
							<li>Blog Single Sidebar</li>  -->
						</ul>
					</div>
				</div>
			</div>
    </div>
		<section class="section blog-single">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-12 col-12">
						<div class="single-inner">
							<div class="post-details">
								<div class="main-content-head">
									<div class="meta-information">
										<h2 class="post-title">
											<a href="${post.fullPath!}">${post.title!}</a>
										</h2>

										<ul class="meta-info">
											<li>
												<a href="javascript:void(0)">
													<img src="${user.avatar!default('')}" alt="#" />${user.nickname!}
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<i class="lni lni-calendar"></i>${post.createTime!}
												</a>
											</li>
											<li>
												<a href="javascript:void(0)"
													><i class="lni lni-tag"></i> ${post.commentCount}条评论</a
												>
											</li>
											<li>
												<a href="javascript:void(0)"
													><i class="lni lni-timer"></i>${post.wordCount}字</a
												>
											</li>
										</ul>
									</div>
									<div class="post-thumbnils">
										<img src="${post.thumbnail}" alt="#" />
									</div>
									<div class="detail-inner">
										${post.formatContent!}
									</div>
								</div>
								<#include "module/comment.ftl">
								<@comment post=post type="post" />
								<#--  <div class="post-comments">
									<h3 class="comment-title"><span>文章评论</span></h3>
									<ul class="comments-list">
										<li>
											<div class="comment-img">
												<img src="${user.avatar!default('')}" alt="img" />
											</div>
											<div class="comment-desc">
												<div class="desc-top">
													<h6>Arista Williamson</h6>
													<span class="date">19th May 2023</span>
													<a href="javascript:void(0)" class="reply-link"
														><i class="lni lni-reply"></i>Reply</a
													>
												</div>
												<p>
													Donec aliquam ex ut odio dictum, ut consequat leo
													interdum. Aenean nunc ipsum, blandit eu enim sed,
													facilisis convallis orci. Etiam commodo lectus quis
													vulputate tincidunt. Mauris tristique velit eu magna
													maximus condimentum.
												</p>
											</div>
										</li>
										<li class="children">
											<div class="comment-img">
												<img src="${user.avatar!default('')}" alt="img" />
											</div>
											<div class="comment-desc">
												<div class="desc-top">
													<h6>Rosalina Kelian</h6>
													<span class="date">15th May 2023</span>
													<a href="javascript:void(0)" class="reply-link"
														><i class="lni lni-reply"></i>Reply</a
													>
												</div>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipisicing elit,
													sed do eiusmod tempor incididunt ut labore et dolore magna
													aliqua. Ut enim.
												</p>
											</div>
										</li>
										<li>
											<div class="comment-img">
												<img src="${user.avatar!default('')}" alt="img" />
											</div>
											<div class="comment-desc">
												<div class="desc-top">
													<h6>Alex Jemmi</h6>
													<span class="date">12th May 2023</span>
													<a href="javascript:void(0)" class="reply-link"
														><i class="lni lni-reply"></i>Reply</a
													>
												</div>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipisicing elit,
													sed do eiusmod tempor incididunt ut labore et dolore magna
													aliqua. Ut enim ad minim veniam.
												</p>
											</div>
										</li>
									</ul>
								</div>
								<div class="comment-form">
									<h3 class="comment-reply-title">发表评论</h3>
									<form action="#" method="POST">
										<div class="row">
											<div class="col-lg-6 col-12">
												<div class="form-box form-group">
													<input
														type="text"
														name="name"
														class="form-control form-control-custom"
														placeholder="Website URL"
													/>
												</div>
											</div>
											<div class="col-lg-6 col-12">
												<div class="form-box form-group">
													<input
														type="text"
														name="email"
														class="form-control form-control-custom"
														placeholder="Your Name"
													/>
												</div>
											</div>
											<div class="col-lg-6 col-12">
												<div class="form-box form-group">
													<input
														type="email"
														name="email"
														class="form-control form-control-custom"
														placeholder="Your Email"
													/>
												</div>
											</div>
											<div class="col-lg-6 col-12">
												<div class="form-box form-group">
													<input
														type="text"
														name="name"
														class="form-control form-control-custom"
														placeholder="Phone Number"
													/>
												</div>
											</div>
											<div class="col-12">
												<div class="form-box form-group">
													<textarea
														name="#"
														class="form-control form-control-custom"
														placeholder="Your Comments"
													></textarea>
												</div>
											</div>
											<div class="col-12">
												<div class="button">
													<button type="submit" class="btn">Post Comment</button>
												</div>
											</div>
										</div>
									</form>
								</div>  -->
							</div>
						</div>
					</div>
					<aside class="col-lg-4 col-md-12 col-12">
						<div class="sidebar blog-grid-page">
							<div class="widget search-widget">
								<h5 class="widget-title">搜索文章</h5>
								<form action="#">
									<input type="text" placeholder="输入内容进行搜索..." />
									<button type="submit"><i class="lni lni-search-alt"></i></button>
								</form>
							</div>

							<div class="widget popular-feeds">
								<h5 class="widget-title">推荐文章</h5>
								<div class="popular-feed-loop">
									<@postTag method="latest" top="5">
										<#list posts as post>
											<div class="single-popular-feed">
												<div class="feed-desc">
													<#--  <a class="feed-img" href="blog-single-sidebar.html">
														<img src="${post.thumbnail!'${theme_base}/source/images/post_default_thumbnail.jpg'}" alt="${post.title!}" />
													</a>  -->
													<#if post.categories?? && post.categories?size gt 0>
													<#list post.categories as categoryItem>
														<a href="${categoryItem.fullPath!}" class="cetagory">${categoryItem.name!}</a>
													</#list>
													</#if>
													<h6 class="post-title">
														<a href="${post.fullPath!}">${post.title!}</a>
													</h6>
													<span class="time"><i class="lni lni-calendar"></i> ${post.createTime!}</span>
												</div>
											</div>
										</#list>
									</@postTag>
								</div>
							</div>

							<#--  <div class="widget categories-widget">
								<h5 class="widget-title">分类</h5>
								<ul class="custom">
									<@categoryTag method="list">
										<#list categories as category>
											<li><a href="${category.fullPath!}">${category.name!}（${category.postCount!}）</a></li>
										</#list>
									</@categoryTag>
								</ul>
							</div>  -->

							<div class="widget popular-tag-widget">
								<h5 class="widget-title">标签</h5>
								<div class="tags">
								<#if post.tags?? && post.tags?size gt 0>
								<#list post.tags as tagitem>
									<a href="javaScript:void(0);">${tagitem.name!}</a>
								</#list>
								</#if>
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>
		</section>

    <#--  <article>
        ${post.formatContent!}
    </article>  -->
    
</@layout>
