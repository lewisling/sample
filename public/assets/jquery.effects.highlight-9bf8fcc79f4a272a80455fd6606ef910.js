//= require jquery.effects.core
/*!
 * jQuery UI Effects Highlight 1.8.23
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Effects/Highlight
 *
 * Depends:
 *	jquery.effects.core.js
 */
(function(e,t){e.effects.highlight=function(t){return this.queue(function(){var n=e(this),r=["backgroundImage","backgroundColor","opacity"],i=e.effects.setMode(n,t.options.mode||"show"),s={backgroundColor:n.css("backgroundColor")};i=="hide"&&(s.opacity=0),e.effects.save(n,r),n.show().css({backgroundImage:"none",backgroundColor:t.options.color||"#ffff99"}).animate(s,{queue:!1,duration:t.duration,easing:t.options.easing,complete:function(){i=="hide"&&n.hide(),e.effects.restore(n,r),i=="show"&&!e.support.opacity&&this.style.removeAttribute("filter"),t.callback&&t.callback.apply(this,arguments),n.dequeue()}})})}})(jQuery);