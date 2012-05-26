(function($) {
  $(function () {

    // this is sort of inelegant but markdown wraps
    // code in <pre><code> and we need to get rid of
    // the <code> parts
    $('pre:has(code)').addClass('brush: ruby').each(function () {
      $(this).html($('code', this).html());
    });
    SyntaxHighlighter.defaults['gutter'] = false;
    SyntaxHighlighter.defaults['tab-size'] = 2;
    SyntaxHighlighter.defaults['toolbar'] = false;
    SyntaxHighlighter.all();

  })
})(jQuery.noConflict());
