<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "subscriptions.css">
    <#include "../profileSettings/profile.css">
    <#include "../userList/userList.css">
</style>

<@c.page>
    <div class="title-text">
        ${userChannel.username}
    </div>
    <div class="list-users">
        <table class="list-users_table">
            <thead>
            <tr>
                <th class="list-users_table-th">${type}</th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td class="list-users_table-td">
                        <a class="subscriptions_table-additional-td" href="/user-messages/${user.id}">${user.getUsername()}</a>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</@c.page>