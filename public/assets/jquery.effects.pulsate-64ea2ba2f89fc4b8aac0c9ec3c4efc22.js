//= require jquery.effects.core
/*!
 * jQuery UI Effects Pulsate 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Pulsate
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.pulsate=function(t){return this.queue(function(){var n=e(this),r=e.effects.setMode(n,t.options.mode||"show"),i=(t.options.times||5)*2-1,s=t.duration?t.duration/2:e.fx.speeds._default/2,u=n.is(":visible"),a=0;u||(n.css("opacity",0).show(),a=1),(r=="hide"&&u||r=="show"&&!u)&&i--;for(var f=0;f<i;f++)n.animate({opacity:a},s,t.options.easing),a=(a+1)%2;n.animate({opacity:a},s,t.options.easing,function(){a==0&&n.hide(),t.callback&&t.callback.apply(this,arguments)}),n.queue("fx",function(){n.dequeue()}).dequeue()})}})(jQuery);