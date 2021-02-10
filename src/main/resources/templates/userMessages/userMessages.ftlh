<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "../parts/login/login.css">
    <#include "../profileSettings/profile.css">
    <#include "userMessage.css">
    <#include "../main/main.css">
</style>
<@c.page>
    <div class="user">
        <div class="user-handler">
            <div class="user-handler-text">
                ${userChannel.username}
            </div>
            <#if !isCurrentUser>
                <div class="user-handler-button">
                    <#if isSubscriber>
                        <a class="action-button" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
                    <#else>
                        <a class="action-button subscribe-action-button" href="/user/subscribe/${userChannel.id}">Subscribe</a>
                    </#if>
                </div>
            </#if>
        </div>
        <div class="user-row">
            <div class="user-row-card">
                <div class="card-body">
                    <a class="card-title" href="/user/subscriptions/${userChannel.id}/list">Subscriptions</a>
                    <h3 class="card-text">
                        ${subscriptionsCount}
                    </h3>
                </div>
            </div>
            <div class="user-row-card">
                <div class="card-body">
                    <a class="card-title"  href="/user/subscribers/${userChannel.id}/list">Subscribers</a>
                    <h3 class="card-text">
                        ${subscribersCount}
                    </h3>
                </div>
            </div>
        </div>
    </div>
    <#if isCurrentUser??>
        <#include "../parts/messageEdit/messageEdit.ftlh" />
    </#if>
    <#include "../parts/messageList/messageList.ftlh" />
</@c.page>