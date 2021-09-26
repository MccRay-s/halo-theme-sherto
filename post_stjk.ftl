<#include "module/macro.ftl">
<@layout title="${post.title!}" team="商徒聚客">
    <#--  <div class="breadcrumbs">
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
						</ul>
					</div>
				</div>
			</div>
    </div>  -->
		<section class="section blog-single">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-12">
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
													<i class="lni lni-calendar"></i>${user.createTime!}
												</a>
											</li>
											<li>
												<a href="javascript:void(0)"><i class="lni lni-timer"></i>${post.wordCount}字</a>
											</li>
											<#if post.tags?? && post.tags?size gt 0>
											<li>
												<a href="javascript:void(0)">
													<i class="lni lni-tag"></i><#list post.tags as tagitem>${tagitem.name!}|</#list>
												</a>
											</li>
											</#if>
											<#--  <li>
												<a href="javascript:void(0)"
													><i class="lni lni-tag"></i> ${post.commentCount}条评论</a
												>
											</li>  -->
											
										</ul>
									</div>
									<#--  <div class="post-thumbnils">
										<img src="${post.thumbnail}" alt="#" />
									</div>  -->
									<div class="detail-inner">
										${post.formatContent!}
									</div>
								</div>

								<#if tags?? && tags?size gt 0>
								<div class="post-comments">
									<h3 class="comment-title"><span>相关文章</span></h3>
									<ul class="comments-list">
										<#list tags as tag>
										<#if tag_index == 0>
											<@postTag method="listByTagId" tagId="${tag.id}">
											<#list posts as post>
												<li>
													<div class="comment-img">
														<img src="${post.thumbnail!'${theme_base}/source/images/post_default_thumbnail.png'}" alt="${post.title!}" />
													</div>
													<div class="comment-desc">
														<div class="desc-top">
															<h6><a href="${post.fullPath!}">${post.title!}</a></h6>
															<span class="date">${post.createTime!}</span>
															<#--  <a href="${post.fullPath!}" class="reply-link" target="view_window">
																<i class="lni lni-reply"></i>详情
															</a>  -->
														</div>
														<p>
															${post.summary!}
														</p>
													</div>
												</li>
											</#list>
											</@postTag>
										</#if>
										</#list>
									</ul>
								</div>

								<#elseif categories?? && categories?size gt 0>
								<div class="post-comments">
									<h3 class="comment-title"><span>${categories[0].name!}</span></h3>
									<ul class="comments-list">
										<#list categories as category>
										<#if category_index == 0>
											<@postTag method="listByCategoryId" categoryId="${category.id}">
											<#list posts as post>
												<li>
													<div class="comment-img">
														<img src="${post.thumbnail!'${theme_base}/source/images/post_default_thumbnail.png'}" alt="${post.title!}" />
													</div>
													<div class="comment-desc">
														<div class="desc-top">
															<h6><a href="${post.fullPath!}">${post.title!}</a></h6>
															<span class="date">${post.createTime!}</span>
															<#--  <a href="${post.fullPath!}" class="reply-link" target="view_window">
																<i class="lni lni-reply"></i>详情
															</a>  -->
														</div>
														<p>
															${post.summary!}
														</p>
													</div>
												</li>
											</#list>
											</@postTag>
										</#if>
										</#list>
									</ul>
								</div>
								</#if>
								<#--  <#include "module/comment.ftl">
								<@comment post=post type="post" />  -->
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
				</div>
			</div>
		</section>

    <#--  <article>
        ${post.formatContent!}
    </article>  -->
    
</@layout>
