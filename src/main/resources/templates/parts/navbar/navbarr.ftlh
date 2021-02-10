<#include "../security.ftlh">

<style type="text/css">
    <#include "../login/login.css">
    <#include "navbar.css">
</style>

<nav class="navigation-bar">
    <div class="navigation-bar-container">
        <div class="navigation-bar-container-content" id="navbarSupportedContent">
            <a class="navigation-bar-container-content_a navigation-bar-container-content_additional-a" href="/">[\WEB]</a>
            <ul class="navigation-bar-container-content_ul" >
                <li class="navigation-bar-container-content_li">
                    <a class="navigation-bar-container-content_a" aria-current="page" href="/">Home</a>
                </li>
                <#if user??>
                    <li class="navigation-bar-container-content_li">
                        <a class="navigation-bar-container-content_a" aria-current="page" href="/main">Messages</a>
                    </li>
                    <li class="navigation-bar-container-content_li">
                        <a class="navigation-bar-container-content_a" href="/user-messages/${currentUserId}">My messages</a>
                    </li>
                </#if>
                <#if isAdmin>
                    <li class="navigation-bar-container-content_li">
                        <a class="navigation-bar-container-content_a" href="/user">User List</a>
                    </li>
                </#if>
                <#if user??>
                    <li class="navigation-bar-container-content_li">
                        <a class="navigation-bar-container-content_a" href="/user/profile">Profile settings</a>
                    </li>
                </#if>
            </ul>
            <div class="navigation-bar-container-content_additional-div">
                <#if user??>
                    ${name}
                <#else>
                    Please, login
                </#if>
            </div>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button class="login-button" type="submit">
                    <#if user??>
                        Sign Out
                    <#else>
                        Sign In
                    </#if>
                </button>
            </form>
        </div>
    </div>
</nav>