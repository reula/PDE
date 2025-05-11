<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>{{:title}}</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Use same CSS as the main site -->
  <link rel="stylesheet" href="/css/tufte.css">
  <link rel="stylesheet" href="/css/weave.css">
  <link rel="stylesheet" href="/css/adjust.css">
  <link rel="stylesheet" href="/css/franklin.css">
  <link rel="stylesheet" href="/css/latex.css">
  

  <!-- Highlight.js and KaTeX are handled by Franklin -->
  <!-- Add MathJax for LaTeX in standalone HTMLs -->
  <script>
    window.MathJax = {
      tex: { inlineMath: [['$', '$'], ['\\(', '\\)']] },
      svg: { fontCache: 'global' }
    };
  </script>
  <script src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js" async></script>
</head>

<body>
  {{#:title}}<h1 class="title">{{:title}}</h1>{{/:title}}

  {{{ :body }}}

  <footer>
    <p>
      Published from <a href="{{{:weave_source}}}">{{{:weave_source}}}</a>
      using <a href="http://github.com/JunoLab/Weave.jl">Weave.jl</a> {{:weave_version}} on {{:weave_date}}.
    </p>
  </footer>
</body>
</html>
