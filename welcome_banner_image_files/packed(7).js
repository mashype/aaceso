
/**
 * ./work/im-startup/assets/scripts/static/init/init.js
 * Generated: 2014-03-03 17:32:35 +0000
 */


function flexBuilder(e,t,i){jQuery(function(){this.delay=!1,e.touchwipe({wipeLeft:function(){jQuery("."+t+"-next").trigger("click")},wipeRight:function(){jQuery("."+t+"-prev").trigger("click")}}),(1==e.attr("data-autoplay")||"true"==e.attr("data-autoplay"))&&e.attr("data-delay")&&(this.delay=e.attr("data-delay")),e.find(".im-transform").addClass("im-in-viewport");var r=parseInt(this.delay);e.jCarouselLite({btnNext:"."+t+"-next",btnPrev:"."+t+"-prev",auto:r,speed:500,pauseOnHover:!0,easing:"easeInOutCirc",circular:!0,visible:i,scroll:1})})}function addAnimation(e,t){e.removeClass().addClass(t),window.setTimeout(function(){e.removeClass(t)},1300)}"object"==typeof Application&&Application.Tweets.init();var options={};options.defaults={flex:{works:{root:jQuery(".wp-carousel"),name:"wp-carousel",el:jQuery(".wp-carousel ul li"),total:jQuery(".wp-carousel ul li").length,limit:4},partners:{root:jQuery(".partners"),name:"partners",el:jQuery(".partners .partners-wrap span2"),total:jQuery(".partners .partners-wrap span2").length,limit:6},events:{root:jQuery(".wp-events"),name:"wp-events",el:jQuery(".wp-events ul li"),total:jQuery(".wp-events ul li").length,limit:4}}},jQuery(".video, .slide-content, .video-shortcode, .embedded").fitVids(),options.defaults.flex.works.total<options.defaults.flex.works.limit&&(options.defaults.flex.works.limit=0),options.defaults.flex.partners.total<options.defaults.flex.partners.limit&&(options.defaults.flex.partners.limit=0),options.defaults.flex.events.total<options.defaults.flex.events.limit&&(options.defaults.flex.events.limit=0),options.defaults.flex.works.total>0&&flexBuilder(options.defaults.flex.works.root,options.defaults.flex.works.name,options.defaults.flex.works.limit),options.defaults.flex.partners.total>0&&flexBuilder(options.defaults.flex.partners.root,options.defaults.flex.partners.name,options.defaults.flex.partners.limit),options.defaults.flex.events.total>0,jQuery(document).ready(function(){jQuery(".flexslider").flexslider({animation:"slide",easing:"easeInOutCirc",pauseOnHover:!0,slideDirection:"horizontal",after:function(){irishCall.animate()},end:function(){irishCall.animate()},added:function(){irishCall.deAnimate()}}),jQuery(".flex-direction-nav li a.flex-next").html('<i class="fa-icon-chevron-right"></i>'),jQuery(".flex-direction-nav li a.flex-prev").html('<i class="fa-icon-chevron-left"></i>'),jQuery(".flexslider2").flexslider({animation:"slide",slideDirection:"horizontal",start:function(e){var t=e.slides.eq(0).height();e.height(t)},before:function(e){var t=e.slides.eq(e.animatingTo).height();t!=e.height()&&e.animate({height:t},300)}}),jQuery(".loop_module.blog.blog_layout1 .loop_content.blog").each(function(){jQuery(this).find(".meta_post_tag a").length>3&&jQuery(this).find(".meta_post_tag").css({"float":"left",clear:"left"})});var e=jQuery("#footerwrap").outerHeight(),t=jQuery(".accordion > .inner").hide();jQuery("a[rel^='prettyPhoto'], a[rel^='lightbox']").prettyPhoto({overlay_gallery:!1,social_tools:"",deeplinking:!1,theme:"light_rounded"}),jQuery(".entry a img").click(function(){var e=jQuery(this).attr("title");jQuery(".entry a").has("img").attr("title",e)}),jQuery("a[class^='prettyPhoto']").prettyPhoto({opacity:.5,theme:"light_rounded",show_title:!1,horizontal_padding:20,deeplinking:!1,social_tools:!1}),jQuery("span.AT").text("@"),jQuery("#footerwrap").css({height:e}),jQuery(".closeParent").click(function(){jQuery(this).parent().slideUp("slow")}),jQuery(".progress-bars").each(function(){var e;e=0,jQuery(this).find(".scorebar .scorebar-inner.has_animation").each(function(){var t=jQuery(this);e+=300,setTimeout(function(){t.animate({width:t.attr("data-score")+"%"},500)},e),e+=300})}),jQuery("img.loadOnVisible").lazyload({threshold:200,effect:"fadeIn"}),jQuery("#primary-nav .nav-search-box .search-button").click(function(){var e=jQuery(this).parent().find("input.search-input"),t=jQuery(this);"inactive"==t.attr("data-state")?(t.attr("data-state","active"),e.animate({opacity:1,width:"150px"},500)):(t.attr("data-state","inactive"),e.animate({opacity:0,width:"0px"},500))}),jQuery("a[href='#top']").click(function(){return jQuery("html, body").animate({scrollTop:0},"slow"),!1}),jQuery("#testimonials").cycle({fx:"scrollUp",easing:"easeInOutCirc",before:function(){jQuery(this).find(".author").animate({opacity:0},300)},after:function(){jQuery(this).find(".author").animate({opacity:1},300)}}),jQuery(".accordion > .title > a").click(function(){var e=jQuery(this);return $target=e.parent().next(),e.parent().hasClass("active")?(t.slideUp(500,"easeOutCirc"),e.parent().removeClass("active")):(t.slideUp(500,"easeOutCirc"),$target.slideDown(500,"easeOutCirc"),e.parent().parent().find(".title").removeClass("active"),e.parent().addClass("active")),!1}),jQuery(".toggle .title").toggle(function(){jQuery(this).addClass("active").closest(".toggle").find(".inner").slideDown(500,"easeOutCirc")},function(){jQuery(this).removeClass("active").closest(".toggle").find(".inner").slideUp(500,"easeOutCirc")}),jQuery(".alert-message a").click(function(){return jQuery(this).parent().slideUp(),!1}),jQuery(window).load(function(){jQuery("#footerwrap").stickyFooter()}),jQuery("ul.share_this_list li a.socialBookmark").click(function(){var e=675,t=400,i=this.href,r=(jQuery(window).width()-e)/2,a=(jQuery(window).height()-t)/2,n="status=1,width="+e+",height="+t+",top="+a+",left="+r;return window.open(i,"sharethis",n),!1})});var menuItemState="fold";jQuery(".widget_nav_menu ul.menu li ul.sub-menu").slideUp(),jQuery(".widget_nav_menu ul.menu li a").click(function(){var e=jQuery(this).parent().find("ul.sub-menu");return null!=e.html()?("fold"==menuItemState?(e.slideDown(),menuItemState="unfold"):(e.slideUp(),menuItemState="fold"),!1):void 0}),jQuery("#back-to-top a[href*=#]").click(function(){if(location.pathname.replace(/^\//,"")==this.pathname.replace(/^\//,"")&&location.hostname==this.hostname){var e=jQuery(this.hash);if(e=e.length&&e||jQuery("[name="+this.hash.slice(1)+"]"),e.length){var t=e.offset().top;return jQuery("html,body").animate({scrollTop:t},600),!1}}}),/*!
 * jQuery Cookie Plugin
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2011, Klaus Hartl
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.opensource.org/licenses/GPL-2.0
 */
function(e){e.cookie=function(t,i,r){if(arguments.length>1&&(!/Object/.test(Object.prototype.toString.call(i))||null===i||void 0===i)){if(r=e.extend({},r),(null===i||void 0===i)&&(r.expires=-1),"number"==typeof r.expires){var a=r.expires,n=r.expires=new Date;n.setDate(n.getDate()+a)}return i=String(i),document.cookie=[encodeURIComponent(t),"=",r.raw?i:encodeURIComponent(i),r.expires?"; expires="+r.expires.toUTCString():"",r.path?"; path="+r.path:"",r.domain?"; domain="+r.domain:"",r.secure?"; secure":""].join("")}r=i||{};for(var o,s=r.raw?function(e){return e}:decodeURIComponent,l=document.cookie.split("; "),u=0;o=l[u]&&l[u].split("=");u++)if(s(o[0])===t)return s(o[1]||"");return null}}(jQuery),function(e){var t;e.fn.extend({stickyFooter:function(){function e(){var e=jQuery(document.body).height()-jQuery("#sticky-footer-push").height();if(e<jQuery(window).height()){var i=jQuery(window).height()-e;!jQuery("#sticky-footer-push").length>0&&jQuery(t).before('<div id="sticky-footer-push"></div>'),jQuery("#sticky-footer-push").height(i)}}t=this,e(),jQuery(window).scroll(e).resize(e)}})}(jQuery);