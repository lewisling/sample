//= require jquery.effects.core
/*!
 * jQuery UI Effects Bounce 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Bounce
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.bounce=function(t){return this.queue(function(){var n=e(this),r=["position","top","bottom","left","right"],i=e.effects.setMode(n,t.options.mode||"effect"),s=t.options.direction||"up",u=t.options.distance||20,a=t.options.times||5,f=t.duration||250;/show|hide/.test(i)&&r.push("opacity"),e.effects.save(n,r),n.show(),e.effects.createWrapper(n);var l=s=="up"||s=="down"?"top":"left",c=s=="up"||s=="left"?"pos":"neg",u=t.options.distance||(l=="top"?n.outerHeight(!0)/3:n.outerWidth(!0)/3);i=="show"&&n.css("opacity",0).css(l,c=="pos"?-u:u),i=="hide"&&(u/=a*2),i!="hide"&&a--;if(i=="show"){var h={opacity:1};h[l]=(c=="pos"?"+=":"-=")+u,n.animate(h,f/2,t.options.easing),u/=2,a--}for(var p=0;p<a;p++){var d={},v={};d[l]=(c=="pos"?"-=":"+=")+u,v[l]=(c=="pos"?"+=":"-=")+u,n.animate(d,f/2,t.options.easing).animate(v,f/2,t.options.easing),u=i=="hide"?u*2:u/2}if(i=="hide"){var h={opacity:0};h[l]=(c=="pos"?"-=":"+=")+u,n.animate(h,f/2,t.options.easing,function(){n.hide(),e.effects.restore(n,r),e.effects.removeWrapper(n),t.callback&&t.callback.apply(this,arguments)})}else{var d={},v={};d[l]=(c=="pos"?"-=":"+=")+u,v[l]=(c=="pos"?"+=":"-=")+u,n.animate(d,f/2,t.options.easing).animate(v,f/2,t.options.easing,function(){e.effects.restore(n,r),e.effects.removeWrapper(n),t.callback&&t.callback.apply(this,arguments)})}n.queue("fx",function(){n.dequeue()}),n.dequeue()})}})(jQuery);