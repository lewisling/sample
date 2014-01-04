//= require jquery.effects.core
/*!
 * jQuery UI Effects Explode 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Explode
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.explode=function(t){return this.queue(function(){var n=t.options.pieces?Math.round(Math.sqrt(t.options.pieces)):3,r=t.options.pieces?Math.round(Math.sqrt(t.options.pieces)):3;t.options.mode=t.options.mode=="toggle"?e(this).is(":visible")?"hide":"show":t.options.mode;var i=e(this).show().css("visibility","hidden"),s=i.offset();s.top-=parseInt(i.css("marginTop"),10)||0,s.left-=parseInt(i.css("marginLeft"),10)||0;var u=i.outerWidth(!0),a=i.outerHeight(!0);for(var f=0;f<n;f++)for(var l=0;l<r;l++)i.clone().appendTo("body").wrap("<div></div>").css({position:"absolute",visibility:"visible",left:-l*(u/r),top:-f*(a/n)}).parent().addClass("ui-effects-explode").css({position:"absolute",overflow:"hidden",width:u/r,height:a/n,left:s.left+l*(u/r)+(t.options.mode=="show"?(l-Math.floor(r/2))*(u/r):0),top:s.top+f*(a/n)+(t.options.mode=="show"?(f-Math.floor(n/2))*(a/n):0),opacity:t.options.mode=="show"?0:1}).animate({left:s.left+l*(u/r)+(t.options.mode=="show"?0:(l-Math.floor(r/2))*(u/r)),top:s.top+f*(a/n)+(t.options.mode=="show"?0:(f-Math.floor(n/2))*(a/n)),opacity:t.options.mode=="show"?1:0},t.duration||500);setTimeout(function(){t.options.mode=="show"?i.css({visibility:"visible"}):i.css({visibility:"visible"}).hide(),t.callback&&t.callback.apply(i[0]),i.dequeue(),e("div.ui-effects-explode").remove()},t.duration||500)})}})(jQuery);