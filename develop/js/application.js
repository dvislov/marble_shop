(function() {
  $(document).ready(function() {
    $("[data-action='change-form-edit-state']").click(function() {
      $("[data-object='vcard-form']").toggleClass('editable');
      if ($('.vcard-input').attr('readonly')) {
        return $('.vcard-input').removeAttr('readonly');
      } else {
        return $('.vcard-input').attr('readonly', 'readonly');
      }
    });
    $('[data-action="clear-self-input-value"]').click(function() {
      $(this).prev('.vcard-input').attr('value', '');
      return $(this).prev('.vcard-textarea').val('');
    });
    return $('[data-action="change-form-open-state"]').click(function() {
      return $('.vcard-editor').slideToggle();
    });
  });

}).call(this);
