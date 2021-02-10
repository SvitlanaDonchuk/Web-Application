<#import "parts/common.ftlh" as c>
<#import "parts/login/login.ftlh" as l>

<style type="text/css">
    <#include "parts/login/login.css">
</style>

<@c.page>
    <div class="registration_title-text">
        Create an account
    </div>
    ${message!}
    <@l.login "/registration" true/>
</@c.page>
