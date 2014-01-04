//= require jquery.effects.core
/*!
 * jQuery UI Effects Fade 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Fade
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.fade=function(t){return this.queue(function(){var n=e(this),r=e.effects.setMode(n,t.options.mode||"hide");n.animate({opacity:r},{queue:!1,duration:t.duration,easing:t.options.easing,complete:function(){t.callback&&t.callback.apply(this,arguments),n.dequeue()}})})}})(jQuery);