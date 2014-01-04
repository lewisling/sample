//= require jquery.effects.core
/*!
 * jQuery UI Effects Transfer 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Transfer
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.transfer=function(t){return this.queue(function(){var n=e(this),r=e(t.options.to),i=r.offset(),s={top:i.top,left:i.left,height:r.innerHeight(),width:r.innerWidth()},u=n.offset(),a=e('<div class="ui-effects-transfer"></div>').appendTo(document.body).addClass(t.options.className).css({top:u.top,left:u.left,height:n.innerHeight(),width:n.innerWidth(),position:"absolute"}).animate(s,t.duration,t.options.easing,function(){a.remove(),t.callback&&t.callback.apply(n[0],arguments),n.dequeue()})})}})(jQuery);