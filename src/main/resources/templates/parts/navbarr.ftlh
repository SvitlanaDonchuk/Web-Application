<#include "security.ftlh">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Web</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Home</a>
                </li>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/main">Messages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user-messages/${currentUserId}">My messages</a>
                    </li>
                </#if>
                <#if isAdmin>
                    <li class="nav-item">
                        <a class="nav-link" href="/user">User List</a>
                    </li>
                </#if>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/profile">Profile</a>
                    </li>
                </#if>
            </ul>
            <div class="navbar-text me-3">
                <#if user??>
                    ${name}
                <#else>
                    Please, login
                </#if>
            </div>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button class="btn btn-primary" type="submit">
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