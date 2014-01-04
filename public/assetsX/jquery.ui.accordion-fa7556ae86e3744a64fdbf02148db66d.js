//= require jquery.ui.core
//= require jquery.ui.widget
/*!
 * jQuery UI Accordion 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Accordion
 *
 * Depends:
 *	jquery.ui.core.js
 *	jquery.ui.widget.js
 */
(function(e,t){e.widget("ui.accordion",{options:{active:0,animated:"slide",autoHeight:!0,clearStyle:!1,collapsible:!1,event:"click",fillSpace:!1,header:"> li > :first-child,> :not(li):even",icons:{header:"ui-icon-triangle-1-e",headerSelected:"ui-icon-triangle-1-s"},navigation:!1,navigationFilter:function(){return this.href.toLowerCase()===location.href.toLowerCase()}},_create:function(){var t=this,n=t.options;t.running=0,t.element.addClass("ui-accordion ui-widget ui-helper-reset").children("li").addClass("ui-accordion-li-fix"),t.headers=t.element.find(n.header).addClass("ui-accordion-header ui-helper-reset ui-state-default ui-corner-all").bind("mouseenter.accordion",function(){if(n.disabled)return;e(this).addClass("ui-state-hover")}).bind("mouseleave.accordion",function(){if(n.disabled)return;e(this).removeClass("ui-state-hover")}).bind("focus.accordion",function(){if(n.disabled)return;e(this).addClass("ui-state-focus")}).bind("blur.accordion",function(){if(n.disabled)return;e(this).removeClass("ui-state-focus")}),t.headers.next().addClass("ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom");if(n.navigation){var r=t.element.find("a").filter(n.navigationFilter).eq(0);if(r.length){var i=r.closest(".ui-accordion-header");i.length?t.active=i:t.active=r.closest(".ui-accordion-content").prev()}}t.active=t._findActive(t.active||n.active).addClass("ui-state-default ui-state-active").toggleClass("ui-corner-all").toggleClass("ui-corner-top"),t.active.next().addClass("ui-accordion-content-active"),t._createIcons(),t.resize(),t.element.attr("role","tablist"),t.headers.attr("role","tab").bind("keydown.accordion",function(e){return t._keydown(e)}).next().attr("role","tabpanel"),t.headers.not(t.active||"").attr({"aria-expanded":"false","aria-selected":"false",tabIndex:-1}).next().hide(),t.active.length?t.active.attr({"aria-expanded":"true","aria-selected":"true",tabIndex:0}):t.headers.eq(0).attr("tabIndex",0),e.browser.safari||t.headers.find("a").attr("tabIndex",-1),n.event&&t.headers.bind(n.event.split(" ").join(".accordion ")+".accordion",function(e){t._clickHandler.call(t,e,this),e.preventDefault()})},_createIcons:function(){var t=this.options;t.icons&&(e("<span></span>").addClass("ui-icon "+t.icons.header).prependTo(this.headers),this.active.children(".ui-icon").toggleClass(t.icons.header).toggleClass(t.icons.headerSelected),this.element.addClass("ui-accordion-icons"))},_destroyIcons:function(){this.headers.children(".ui-icon").remove(),this.element.removeClass("ui-accordion-icons")},destroy:function(){var t=this.options;this.element.removeClass("ui-accordion ui-widget ui-helper-reset").removeAttr("role"),this.headers.unbind(".accordion").removeClass("ui-accordion-header ui-accordion-disabled ui-helper-reset ui-state-default ui-corner-all ui-state-active ui-state-disabled ui-corner-top").removeAttr("role").removeAttr("aria-expanded").removeAttr("aria-selected").removeAttr("tabIndex"),this.headers.find("a").removeAttr("tabIndex"),this._destroyIcons();var n=this.headers.next().css("display","").removeAttr("role").removeClass("ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content ui-accordion-content-active ui-accordion-disabled ui-state-disabled");return(t.autoHeight||t.fillHeight)&&n.css("height",""),e.Widget.prototype.destroy.call(this)},_setOption:function(t,n){e.Widget.prototype._setOption.apply(this,arguments),t=="active"&&this.activate(n),t=="icons"&&(this._destroyIcons(),n&&this._createIcons()),t=="disabled"&&this.headers.add(this.headers.next())[n?"addClass":"removeClass"]("ui-accordion-disabled ui-state-disabled")},_keydown:function(t){if(this.options.disabled||t.altKey||t.ctrlKey)return;var n=e.ui.keyCode,r=this.headers.length,i=this.headers.index(t.target),s=!1;switch(t.keyCode){case n.RIGHT:case n.DOWN:s=this.headers[(i+1)%r];break;case n.LEFT:case n.UP:s=this.headers[(i-1+r)%r];break;case n.SPACE:case n.ENTER:this._clickHandler({target:t.target},t.target),t.preventDefault()}return s?(e(t.target).attr("tabIndex",-1),e(s).attr("tabIndex",0),s.focus(),!1):!0},resize:function(){var t=this.options,n;if(t.fillSpace){if(e.browser.msie){var r=this.element.parent().css("overflow");this.element.parent().css("overflow","hidden")}n=this.element.parent().height(),e.browser.msie&&this.element.parent().css("overflow",r),this.headers.each(function(){n-=e(this).outerHeight(!0)}),this.headers.next().each(function(){e(this).height(Math.max(0,n-e(this).innerHeight()+e(this).height()))}).css("overflow","auto")}else t.autoHeight&&(n=0,this.headers.next().each(function(){n=Math.max(n,e(this).height("").height())}).height(n));return this},activate:function(e){this.options.active=e;var t=this._findActive(e)[0];return this._clickHandler({target:t},t),this},_findActive:function(t){return t?typeof t=="number"?this.headers.filter(":eq("+t+")"):this.headers.not(this.headers.not(t)):t===!1?e([]):this.headers.filter(":eq(0)")},_clickHandler:function(t,n){var r=this.options;if(r.disabled)return;if(!t.target){if(!r.collapsible)return;this.active.removeClass("ui-state-active ui-corner-top").addClass("ui-state-default ui-corner-all").children(".ui-icon").removeClass(r.icons.headerSelected).addClass(r.icons.header),this.active.next().addClass("ui-accordion-content-active");var i=this.active.next(),s={options:r,newHeader:e([]),oldHeader:r.active,newContent:e([]),oldContent:i},o=this.active=e([]);this._toggle(o,i,s);return}var u=e(t.currentTarget||n),a=u[0]===this.active[0];r.active=r.collapsible&&a?!1:this.headers.index(u);if(this.running||!r.collapsible&&a)return;var f=this.active,o=u.next(),i=this.active.next(),s={options:r,newHeader:a&&r.collapsible?e([]):u,oldHeader:this.active,newContent:a&&r.collapsible?e([]):o,oldContent:i},l=this.headers.index(this.active[0])>this.headers.index(u[0]);this.active=a?e([]):u,this._toggle(o,i,s,a,l),f.removeClass("ui-state-active ui-corner-top").addClass("ui-state-default ui-corner-all").children(".ui-icon").removeClass(r.icons.headerSelected).addClass(r.icons.header),a||(u.removeClass("ui-state-default ui-corner-all").addClass("ui-state-active ui-corner-top").children(".ui-icon").removeClass(r.icons.header).addClass(r.icons.headerSelected),u.next().addClass("ui-accordion-content-active"));return},_toggle:function(t,n,r,i,s){var o=this,u=o.options;o.toShow=t,o.toHide=n,o.data=r;var a=function(){if(!o)return;return o._completed.apply(o,arguments)};o._trigger("changestart",null,o.data),o.running=n.size()===0?t.size():n.size();if(u.animated){var f={};u.collapsible&&i?f={toShow:e([]),toHide:n,complete:a,down:s,autoHeight:u.autoHeight||u.fillSpace}:f={toShow:t,toHide:n,complete:a,down:s,autoHeight:u.autoHeight||u.fillSpace},u.proxied||(u.proxied=u.animated),u.proxiedDuration||(u.proxiedDuration=u.duration),u.animated=e.isFunction(u.proxied)?u.proxied(f):u.proxied,u.duration=e.isFunction(u.proxiedDuration)?u.proxiedDuration(f):u.proxiedDuration;var l=e.ui.accordion.animations,c=u.duration,h=u.animated;h&&!l[h]&&!e.easing[h]&&(h="slide"),l[h]||(l[h]=function(e){this.slide(e,{easing:h,duration:c||700})}),l[h](f)}else u.collapsible&&i?t.toggle():(n.hide(),t.show()),a(!0);n.prev().attr({"aria-expanded":"false","aria-selected":"false",tabIndex:-1}).blur(),t.prev().attr({"aria-expanded":"true","aria-selected":"true",tabIndex:0}).focus()},_completed:function(e){this.running=e?0:--this.running;if(this.running)return;this.options.clearStyle&&this.toShow.add(this.toHide).css({height:"",overflow:""}),this.toHide.removeClass("ui-accordion-content-active"),this.toHide.length&&(this.toHide.parent()[0].className=this.toHide.parent()[0].className),this._trigger("change",null,this.data)}}),e.extend(e.ui.accordion,{version:"1.8.23",animations:{slide:function(t,n){t=e.extend({easing:"swing",duration:300},t,n);if(!t.toHide.size()){t.toShow.animate({height:"show",paddingTop:"show",paddingBottom:"show"},t);return}if(!t.toShow.size()){t.toHide.animate({height:"hide",paddingTop:"hide",paddingBottom:"hide"},t);return}var r=t.toShow.css("overflow"),i=0,s={},o={},u=["height","paddingTop","paddingBottom"],a,f=t.toShow;a=f[0].style.width,f.width(f.parent().width()-parseFloat(f.css("paddingLeft"))-parseFloat(f.css("paddingRight"))-(parseFloat(f.css("borderLeftWidth"))||0)-(parseFloat(f.css("borderRightWidth"))||0)),e.each(u,function(n,r){o[r]="hide";var i=(""+e.css(t.toShow[0],r)).match(/^([\d+-.]+)(.*)$/);s[r]={value:i[1],unit:i[2]||"px"}}),t.toShow.css({height:0,overflow:"hidden"}).show(),t.toHide.filter(":hidden").each(t.complete).end().filter(":visible").animate(o,{step:function(e,n){n.prop=="height"&&(i=n.end-n.start===0?0:(n.now-n.start)/(n.end-n.start)),t.toShow[0].style[n.prop]=i*s[n.prop].value+s[n.prop].unit},duration:t.duration,easing:t.easing,complete:function(){t.autoHeight||t.toShow.css("height",""),t.toShow.css({width:a,overflow:r}),t.complete()}})},bounceslide:function(e){this.slide(e,{easing:e.down?"easeOutBounce":"swing",duration:e.down?1e3:200})}}})})(jQuery);