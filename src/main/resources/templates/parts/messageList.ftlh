<#include "security.ftlh">

<div class="row row-cols-1 row-cols-md-3 g-4">
    <#list messages as message>
        <div class="card mx-3" style="width: 18rem;">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?messageId=${message.id}">
                        Edit
                    </a>
                </#if>
            </div>
        </div>
    <#else>
        <p>No messages</p>
    </#list>
</div>