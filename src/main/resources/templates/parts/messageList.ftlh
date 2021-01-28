<#include "security.ftlh">
<#import "pager.ftlh" as p>

<@p.pager url page></@p.pager>
<div class="row row-cols-1 row-cols-md-3 g-4">
    <#list page.content as message>
        <div class="card mx-2" style="width: 18rem; height: fit-content;" data-id="${message.id}">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top" />
            </#if>
            <div class="card-body">
                <span>${message.text}</span>
                <div class="mt-1">
                    <i>#${message.tag}</i>
                </div>
            </div>
            <div class="card-footer text-muted container">
                <div class="row">
                    <a class="col btn btn-outline-primary" href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <a class="col align-self-center d-flex justify-content-center align-items-center text-decoration-none"
                       href="/messages/${message.id}/likes">
                        <#if message.meLiked>
                            <i class="fas fa-heart"></i>
                        <#else>
                            <i class="far fa-heart"></i>
                        </#if>
                        ${message.likes}
                    </a>
                    <#if message.author.id == currentUserId>
                        <a class="col btn btn-primary" href="/user-messages/${message.author.id}?messageId=${message.id}">
                            Edit
                        </a>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        <p>No messages</p>
    </#list>
</div>
<@p.pager url page></@p.pager>