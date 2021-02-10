<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "userEdit.css">
    <#include "../parts/login/login.css">
    <#include "../profileSettings/profile.css">
</style>

<@c.page>
    <div class="title-text">
        User editor
    </div>
    <form class="login-form" action="/user" method="post">
        <div class="label">
            <label class="user-edit_label">
                Name change:
                <input class="change-form-input_form-control" type="text" name="username" value="${user.username}" />
            </label>
        </div>
        <#list roles as role>
            <div class="box">
                <label class="checkbox">
                    <input class="checkbox-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} />
                    <svg class="checkbox-check" width="17" height="17">
                        <polyline points="15 4 6 13 3 9"></polyline>
                    </svg>
                </label>
                <div class="role-text">
                    ${role}
                </div>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId" />
        <input type="hidden" value="${_csrf.token}" name="_csrf" />
        <button class="profile-button" type="submit">
            Save
        </button>
    </form>
</@c.page>