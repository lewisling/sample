//= require jquery.effects.core
/*!
 * jQuery UI Effects Slide 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Slide
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.slide=function(t){return this.queue(function(){var n=e(this),r=["position","top","bottom","left","right"],i=e.effects.setMode(n,t.options.mode||"show"),s=t.options.direction||"left";e.effects.save(n,r),n.show(),e.effects.createWrapper(n).css({overflow:"hidden"});var u=s=="up"||s=="down"?"top":"left",a=s=="up"||s=="left"?"pos":"neg",f=t.options.distance||(u=="top"?n.outerHeight(!0):n.outerWidth(!0));i=="show"&&n.css(u,a=="pos"?isNaN(f)?"-"+f:-f:f);var l={};l[u]=(i=="show"?a=="pos"?"+=":"-=":a=="pos"?"-=":"+=")+f,n.animate(l,{queue:!1,duration:t.duration,easing:t.options.easing,complete:function(){i=="hide"&&n.hide(),e.effects.restore(n,r),e.effects.removeWrapper(n),t.callback&&t.callback.apply(this,arguments),n.dequeue()}})})}})(jQuery);