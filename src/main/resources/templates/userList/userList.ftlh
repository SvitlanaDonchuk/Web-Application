<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "userList.css">
    <#include "../profileSettings/profile.css">
</style>

<@c.page>
    <div class="title-text">
        List of users
    </div>
    <div class="list-users">
        <table class="list-users_table">
            <thead>
            <tr>
                <th class="list-users_table-th">Name</th>
                <th class="list-users_table-th">Role</th>
                <th class="list-users_table-th"></th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td class="list-users_table-td">${user.username!"null or missing"}</td>
                    <td class="list-users_table-td"><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td class="list-users_table-td-edit"><a class="list-users_table-additional-td" href="/user/${user.id}">Edit</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</@c.page>