<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "../profileSettings/profile.css">
    <#include "greeting.css">
</style>

<@c.page>
    <p class="title-text">
        <br>Hello, guest
        <br>Welcome to application like Twitter(with limited functionality)
    </p>
    <div class="learn-more">
        <button class="learn-more-button">
            <a class="learn-more-button_text" href="/learn-more">
                Learn more!
            </a>
        </button>
    </div>
</@c.page>