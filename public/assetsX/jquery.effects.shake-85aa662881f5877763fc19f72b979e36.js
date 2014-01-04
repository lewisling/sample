//= require jquery.effects.core
/*!
 * jQuery UI Effects Shake 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Shake
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.shake=function(t){return this.queue(function(){var n=e(this),r=["position","top","bottom","left","right"],i=e.effects.setMode(n,t.options.mode||"effect"),s=t.options.direction||"left",u=t.options.distance||20,a=t.options.times||3,f=t.duration||t.options.duration||140;e.effects.save(n,r),n.show(),e.effects.createWrapper(n);var l=s=="up"||s=="down"?"top":"left",c=s=="up"||s=="left"?"pos":"neg",h={},p={},d={};h[l]=(c=="pos"?"-=":"+=")+u,p[l]=(c=="pos"?"+=":"-=")+u*2,d[l]=(c=="pos"?"-=":"+=")+u*2,n.animate(h,f,t.options.easing);for(var v=1;v<a;v++)n.animate(p,f,t.options.easing).animate(d,f,t.options.easing);n.animate(p,f,t.options.easing).animate(h,f/2,t.options.easing,function(){e.effects.restore(n,r),e.effects.removeWrapper(n),t.callback&&t.callback.apply(this,arguments)}),n.queue("fx",function(){n.dequeue()}),n.dequeue()})}})(jQuery);