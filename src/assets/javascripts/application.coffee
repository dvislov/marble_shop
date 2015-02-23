$(document).ready ->

  # Edit vcard data
  $("[data-action='change-form-edit-state']").click ->
    $("[data-object='vcard-form']").toggleClass('editable')

    if $(".vcard-form input[type='submit']").attr('disabled')
      $(".vcard-form input[type='submit']").removeAttr('disabled')
    else
      $(".vcard-form input[type='submit']").attr('disabled', 'disabled')


    $('.vcard-name').focus();

    if ($('.vcard-site').val() == "")
      $('.vcard-site').val("www.marble-x.ru")

    if $('.vcard-input').attr('readonly')
      $('.vcard-input').removeAttr('readonly')
    else
      $('.vcard-input').attr('readonly', 'readonly')

    if ($("[data-object='vcard-form']").hasClass('editable'))
      $('.vcard-input').parents('.control-group').show()
    else
      $('.vcard-input').each ->
        if ($(this).val() == "")
          $(this).parents('.control-group').hide()


  # Clear inputs by click-on-cross
  $('[data-action="clear-self-input-value"]').click ->
    if ($(this).hasClass('controls-remove-address'))
      $('.vcard-address-line1, .vcard-address-line2').val("")
    else
      $(this).prev('.vcard-input').val("")

  # Toggle vcard form
  $('[data-action="change-form-open-state"]').click ->
    $('.vcard-editor').slideToggle()
