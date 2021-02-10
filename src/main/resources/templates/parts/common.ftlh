<#macro page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Java Web Application</title>
        <link rel="stylesheet" href="/static/style.css" />

        <script src="https://kit.fontawesome.com/3a100917fe.js" crossorigin="anonymous"></script>
        <script src="https://www.google.com/recaptcha/api.js"></script>
    </head>
    <body>
    <#include "navbar/navbarr.ftlh">
    <div class="navigation-bar-container mt-4">
        <#nested>
    </div>
    </body>
    </html>
</#macro>