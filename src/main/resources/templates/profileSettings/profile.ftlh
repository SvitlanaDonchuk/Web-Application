<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "../parts/login/login.css">
    <#include "profile.css">
</style>

<@c.page>
    <div class="login-form">
        <div class="title-text">
            ${username}
        </div>
    </div>
    ${message!}
    <form class="login-form" method="post">
        <div class="login-form-input">
            <label class="label">
                Password change:
                <input type="password" name="password"
                       class="change-form-input_form-control"
                       placeholder="Password"
                />
            </label>
        </div>
        <div class="login-form-input">
            <label class="label">
            Email change:
            <input type="email" name="email"
                       class="change-form-input_form-control"
                       placeholder="some@some.com"
                       value="${email!''}"
                />
            </label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="profile-button" type="submit">
            Save
        </button>
    </form>
</@c.page>