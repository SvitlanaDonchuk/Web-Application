<#include "../security.ftlh">
<#import "../pager/pager.ftlh" as p>

<style type="text/css">
    <#include "messageList.css">
</style>

<@p.pager url page></@p.pager>
<div class="message-list">
    <#list page.content as message>
        <div class="message-list-card" data-id="${message.id}">
            <div class="" style="text-align: center;">
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="message-list-card-img" />
                </#if>
            </div>
            <div class="message-list-card-body">
                <span>${message.text}</span>
                <div class="mt-1">
                    <i>#${message.tag}</i>
                </div>
            </div>
            <div class="message-list-card-footer">
                <div class="message-list-card-footer-user-row">
                    <a class="message-list-card-footer-user-row-button" href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <a class="message-list-card-footer-user-likes"
                       href="/messages/${message.id}/likes">
                        <#if message.meLiked>
                            <i class="fas fa-heart heat-color"></i>
                        <#else>
                            <i class="far fa-heart heat-color"></i>
                        </#if>
                        ${message.likes}
                    </a>
                    <#if message.author.id == currentUserId>
                        <a class="message-list-card-footer-user-row-button button-edit" href="/user-messages/${message.author.id}?messageId=${message.id}">
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