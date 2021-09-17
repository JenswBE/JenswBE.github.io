<!DOCTYPE html>
<html lang="en" id="top">
<head>

  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta charset="utf-8">
  <title>Jensw.be</title>
  <meta name="description" content="Portfolio of Jens Willemsens">
  <meta name="author" content="Jens Willemsens">

  <!-- Mobile Specific Metas
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Favicon
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="apple-touch-icon" sizes="57x57" href="assets/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="assets/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="assets/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="assets/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="assets/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="assets/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="assets/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="assets/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="assets/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png">
  <link rel="manifest" href="assets/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  
  <!-- Fonts
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">
  
  <!-- Stylesheets
  –––––––––––––––––––––––––––––––––––––––––––––––––– --> 
  <link href="assets/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="assets/css/skeleton.css" rel="stylesheet" type="text/css">
  <link href="assets/css/custom.css" rel="stylesheet" type="text/css">

  <!-- GoatCounter
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <script data-goatcounter="https://stats.jensw.be/count" async defer src="https://stats.jensw.be/count.js"></script>
</head>
<body>

  <!-- Primary Page Layout
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <div class="container">
    
    <div class="card mt-3">
      <div class="row">
        <div class="twelve columns">
          <div class="center-text" id="contact">
            <p id="avatar"><img src="assets/img/jens.jpg" title="Jens Willemsens"/></p>
            <p id="name">Jens Willemsens</p>
            <p><a id="email" href="mailto:contact@jensw.be">contact@jensw.be</a></p>
          </div>
          <div id="interests">
            <p class="title">Interests</p>
            <p>
              Linux, web and system development and tinkering.
              I'm always in for any try-outs and small projects.
              Just send me an email and we will see!
            </p>
          </div>
        </div>
      </div>
    </div>

    %for project in data['projects']['projects']:
      <div class="card">
        <div class="row">
          <div class="twelve columns">
            <div class="project">
              <div class="center-text">
                <div class="project-logo-box">
                  <img class="project-logo"
                      src="assets/img/${project['logo']['file']}"
                      title="${project['logo']['alt']}"
                      %if not loop.first:
                        style="padding-top: 20px;"
                      %endif
                  />
                </div>
                
                <p class="title">${project['name']}</p>
                <p>
                  ${project['scope']} -
                  <a target="_blank" href="${project['url']}" class="link">
                    ${project['url']}
                  </a>
                </p>
                <p>${project['description']}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    %endfor

    <div class="row">
      <p><a id="to-top" href="#top" title="To top of page" class="button button-primary">To top</a></p>
    </div>

  </div>

  <!-- End Document
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
</body>
</html>
