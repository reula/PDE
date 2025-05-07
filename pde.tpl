<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>{{:title}}</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Basic code cell styling -->
  <style>
    body {
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      max-width: 800px;
      margin: auto;
      padding: 2rem;
      background: white;
      color: #333;
    }

    pre code {
      background-color: #f7f7f7;
      padding: 0.75em;
      display: block;
      overflow-x: auto;
      border-left: 3px solid #ccc;
    }

    .footer {
      margin-top: 4rem;
      font-size: 0.9em;
      color: #888;
      border-top: 1px solid #ddd;
      padding-top: 1rem;
    }

    h1.title {
      font-size: 2em;
      border-bottom: 2px solid #ccc;
      padding-bottom: 0.3em;
    }
  </style>

  <!-- Syntax highlighting (Pygments) -->
  {{{:highlighting-css}}}

  <!-- MathJax (LaTeX support) -->
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

  <div class="footer">
    <p>
      Published from <a href="{{{:weave_source}}}">{{{:weave_source}}}</a>
      using <a href="http://github.com/JunoLab/Weave.jl">Weave.jl</a> {{:weave_version}} on {{:weave_date}}.
    </p>
  </div>
</body>
</html>
