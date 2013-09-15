$ ->
  if $(".post_form")
    checkTitleLength()
    checkMetadescLength()
    checkContentLength()
    $(document).on "keyup click blur focus change paste", "#post_page_title", ->
      checkTitleLength()

    $(document).on "keyup click blur focus change paste", "#post_meta_description", ->
      checkMetadescLength()

    $(document).on "keyup click blur focus change paste", "#post_body", ->
      checkContentLength()
      setPreview()


jQuery.fn.stripTags = ->
  @replaceWith @html().replace(/<\/?[^>]+>/g, "")

window.checkTitleLength = ->
  if $("#post_page_title").length > 0
    title = $("#post_page_title").val()
    $(".title_count").text "Characters: " + title.length + " - " + "Words: " + countWords(title)

window.checkMetadescLength = ->
  if $("#post_meta_description").length > 0
    metadesc = $("#post_meta_description").val()
    $(".meta_desc_count").text "Characters: " + metadesc.length + " - " + "Words: " + countWords(metadesc)

window.checkContentLength = ->
  if $("#post_body").length > 0
    content = $("#post_body").val().replace(/<\/?[^>]+>/g, "")
    $(".body_count").html "<acronym title='White spaces and line breaks not included in character count.'>Characters:</acronym> " + content.replace(/\s/g, "").length + " - " + "Words: " + countWords(content)

window.setPreview = ->
  $(".preview").html($("#post_body").val())

window.countWords = (s) ->
  s = s.replace(/(^\s*)|(\s*$)/g, "")
  s = s.replace(/[ ]{2,}/g, " ")
  s = s.replace(/\n /, "\n")
  s.split(" ").length