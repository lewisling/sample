(function() {

  jQuery(function() {
    return $('#products').dataTable({
      sPaginationType: "full_numbers",
      bJQueryUI: true
    });
  });

}).call(this);
