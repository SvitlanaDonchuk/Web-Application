<#import "parts/common.ftlh" as c>
<#import "parts/login/login.ftlh" as l>

<style type="text/css">
    <#include "parts/login/login.css">
</style>

<@c.page>
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
        <div class="alertWidth login-form-input_alert login-form-input_alert-danger" role="alert">
            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </#if>
    <#if message??>
        <div class="alertWidth login-form-input_alert login-form-input_alert-${messageType}" role="alert">
            ${message}
        </div>
    </#if>
    <@l.login "/login" false/>
</@c.page>