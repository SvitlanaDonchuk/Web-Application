<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "main.css">
    <#include "../parts/login/login.css">
    <#include "../profileSettings/profile.css">
    <#include "../parts/messageEdit/messageEdit.css">
</style>

<@c.page>
    <div class="search">
        <form class="search-form" method="get" action="/main">
            <label>
                <input class="search-form-input" type="text" name="filter" value="${filter!}" placeholder="Filter by tag" />
            </label>
            <button type="submit" class="search-form-button">Search</button>
        </form>
    </div>
    <#include "../parts/messageEdit/addNewMessage.ftlh" />
    <#include "../parts/messageList/messageList.ftlh" />
</@c.page>
