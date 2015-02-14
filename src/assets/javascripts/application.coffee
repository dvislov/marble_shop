$(document).ready ->

  # Edit vcard data
  $("[data-action='change-form-edit-state']").click ->
    $("[data-object='vcard-form']").toggleClass('editable')

    if $(".vcard-form input[type='submit']").attr('disabled')
      $(".vcard-form input[type='submit']").removeAttr('disabled')
    else
      $(".vcard-form input[type='submit']").attr('disabled', 'disabled')


    $('.vcard-name').focus();


    if $('.vcard-input, .vcard-textarea').attr('readonly')
      $('.vcard-input, .vcard-textarea').removeAttr('readonly')
    else
      $('.vcard-input, .vcard-textarea').attr('readonly', 'readonly')

    if ($("[data-object='vcard-form']").hasClass('editable'))
      $('.vcard-input, .vcard-textarea').parents('.control-group').show()
    else
      $('.vcard-input').each ->
        if ($(this).val() == "")
          $(this).parents('.control-group').hide()
      if ($('.vcard-textarea').val() == "")
        $('.vcard-textarea').parents('.control-group').hide()


  # Clear inputs by click-on-cross
  $('[data-action="clear-self-input-value"]').click ->
    $(this).prev('.vcard-input').attr('value', '')
    $(this).prev('.vcard-textarea').val('')

  # Toggle vcard form
  $('[data-action="change-form-open-state"]').click ->
    $('.vcard-editor').slideToggle()
