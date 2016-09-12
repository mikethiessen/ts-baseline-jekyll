<!DOCTYPE html>
<html class="livingcss">
<head>
  <title>{{title}}</title>

  <!-- critical path css -->
  {{> mainStylesheet}}
  <!-- /critical path css -->

  <!-- user styles -->
  {{#each globalStylesheets}}
  <link rel="stylesheet" href="{{this}}">
  {{/each}}
  <!-- /user styles -->

  <script src="https://cdn.jsdelivr.net/webcomponentsjs/0.7.21/webcomponents-lite.min.js"></script>
</head>
<body class="livingcss">
  <!-- webcomponent -->
  <!--
    inlining polymer makes this section really long, but inlining it prevents FOUC and
    makes all examples the correct size when created for determining scroll positions
   -->
  {{> polymer}}
  <!-- /webcomponent -->

  <div class="livingcss__wrapper">

    <header class="livingcss__header">
      <div class="livingcss__header-title-container livingcss__inverse-text">
        <h1 class="livingcss__container livingcss__header-title"><a href="{{navbar.0.url}}">{{title}}</a></h1>
      </div>

      {{#if navbar}}
      <div class="livingcss__main-nav-container">
        <nav class="livingcss__container livingcss__main-nav">
        {{#each navbar}}
          <a class="livingcss__nav-link livingcss__nav-link--main {{#if selected}}livingcss__nav-link--active{{/if}}" href="{{url}}">{{name}}</a>
        {{/each}}
        </nav>
      </div>

      <button class="livingcss__menu livingcss__inverse-text">{{{menuButtonHTML}}}</button>
      {{/if}}
    </header>

    <div class="livingcss__container livingcss__content">

      <main class="livingcss__main" role="main">

        {{#each sections}}
        <article class="livingcss__article" id="{{id}}">
          <h1 class="livingcss__article-title">{{name}}</h1>
          {{~> section}}

          {{#children}}
          {{~> childSection}}
          {{/children}}
        </article>
        {{/each}}

      </main>

      <nav class="livingcss__nav">
        <div class="livingcss__nav-container">
        {{#each sections}}
          <a class="livingcss__nav-link" href="#{{id}}">{{name}}</a>
        {{/each}}
        </div>
      </nav>

    </div>

    <footer class="livingcss__footer livingcss__inverse-text">
      <div class="livingcss__container">{{{footerHTML}}}</div>
    </footer>

  </div>

  <!-- prism -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/prism/1.4.1/themes/prism.css">
  <script src="https://cdn.jsdelivr.net/prism/1.4.1/prism.js"></script>
  <script src="https://cdn.jsdelivr.net/prism/1.4.1/components/prism-markup.min.js"></script>
  <!-- /prism -->

  <!-- user scripts -->
  {{#each scripts}}
  <script src="{{this}}"></script>
  {{/each}}
  <!-- /user scripts -->

  {{> mainScript}}

</body>
</html>