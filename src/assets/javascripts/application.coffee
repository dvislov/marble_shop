$(document).ready ->

  # Edit vcard data
  $("[data-action='change-form-edit-state']").click ->
    $("[data-object='vcard-form']").toggleClass('editable')

    if $('.vcard-input').attr('readonly')
      $('.vcard-input').removeAttr('readonly')
    else
      $('.vcard-input').attr('readonly', 'readonly')

  # Clear inputs by click-on-cross
  $('[data-action="clear-self-input-value"]').click ->
    $(this).prev('.vcard-input').attr('value', '')
    $(this).prev('.vcard-textarea').val('')

  # Toggle vcar form
  $('[data-action="change-form-open-state"]').click ->
    $('.vcard-editor').slideToggle()
