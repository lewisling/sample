//= require jquery.effects.core
/*!
 * jQuery UI Effects Fold 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Fold
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.fold=function(t){return this.queue(function(){var n=e(this),r=["position","top","bottom","left","right"],i=e.effects.setMode(n,t.options.mode||"hide"),s=t.options.size||15,u=!!t.options.horizFirst,a=t.duration?t.duration/2:e.fx.speeds._default/2;e.effects.save(n,r),n.show();var f=e.effects.createWrapper(n).css({overflow:"hidden"}),l=i=="show"!=u,c=l?["width","height"]:["height","width"],h=l?[f.width(),f.height()]:[f.height(),f.width()],p=/([0-9]+)%/.exec(s);p&&(s=parseInt(p[1],10)/100*h[i=="hide"?0:1]),i=="show"&&f.css(u?{height:0,width:s}:{height:s,width:0});var d={},v={};d[c[0]]=i=="show"?h[0]:s,v[c[1]]=i=="show"?h[1]:0,f.animate(d,a,t.options.easing).animate(v,a,t.options.easing,function(){i=="hide"&&n.hide(),e.effects.restore(n,r),e.effects.removeWrapper(n),t.callback&&t.callback.apply(n[0],arguments),n.dequeue()})})}})(jQuery);