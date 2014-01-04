(function() {

  jQuery(function() {
    return $('#reviews').dataTable({
      sPaginationType: "full_numbers",
      bJQueryUI: true
    });
  });

}).call(this);
