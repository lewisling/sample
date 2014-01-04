//= require jquery.effects.core
/*!
 * jQuery UI Effects Clip 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Clip
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.clip=function(t){return this.queue(function(){var n=e(this),r=["position","top","bottom","left","right","height","width"],i=e.effects.setMode(n,t.options.mode||"hide"),s=t.options.direction||"vertical";e.effects.save(n,r),n.show();var u=e.effects.createWrapper(n).css({overflow:"hidden"}),a=n[0].tagName=="IMG"?u:n,f={size:s=="vertical"?"height":"width",position:s=="vertical"?"top":"left"},l=s=="vertical"?a.height():a.width();i=="show"&&(a.css(f.size,0),a.css(f.position,l/2));var c={};c[f.size]=i=="show"?l:0,c[f.position]=i=="show"?0:l/2,a.animate(c,{queue:!1,duration:t.duration,easing:t.options.easing,complete:function(){i=="hide"&&n.hide(),e.effects.restore(n,r),e.effects.removeWrapper(n),t.callback&&t.callback.apply(n[0],arguments),n.dequeue()}})})}})(jQuery);