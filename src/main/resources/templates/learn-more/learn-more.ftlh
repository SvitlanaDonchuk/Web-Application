<#import "../parts/common.ftlh" as c>

<style type="text/css">
    <#include "../profileSettings/profile.css">
    <#include "learn-more.css">
</style>

<@c.page>
    <p class="learn-more_title-text">
        <br>Welcome to <a class="learn-more_footer-a" href="/">[\WEB]</a>
        <br>Registered users may have different roles: user or administrator
    </p>
    <div class="learn-more-page">
        <p class="learn-more_title-text">
            On the "Messages" page you can:
        </p>
        <ul class="learn-more_ul">
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                Add a new message by clicking on the appropriate button
            </li>
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                See a list of all user messages and press the heart to like
            </li>
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                Filter messages by tag
            </li>
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                Visit another user's page by clicking on the author of the message and subscribe to this user
            </li>
        </ul>
    </div>
    <div class="learn-more-page">
        <p class="learn-more_title-text">
            On the "My messages" page you can:
        </p>
        <ul class="learn-more_ul">
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                Check your profile with the number if subscribers and subscriptions and the list of your messages
            </li>
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                Select a message to edit by clicking on the "change" button ang going to the update your message form
            </li>
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                Delete a message
            </li>
        </ul>
    </div>
    <div class="learn-more-page">
        <p class="learn-more_title-text">
            On the "Profile settings":
        </p>
        <ul class="learn-more_ul">
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                You can change your email and password
            </li>
        </ul>
    </div>
    <div class="learn-more-page">
        <p class="learn-more_title-text">
            The administrator has one additional page "User list". On it you can:
        </p>
        <ul class="learn-more_ul">
            <li class="learn-more_li">
                <i class="fa fa-check fa_color">

                </i>See the list of all registered users
            </li>
            <li class="learn-more_li">
                <i class="fa fa-check fa_color"></i>
                By clicking on the "edit" button, go to the form to change the username and its roles
            </li>
        </ul>
    </div>
    <p class="learn-more_title-text">
        To start <a class="learn-more_footer-a" href="/login">sign in</a> to your account or <a class="learn-more_footer-a" href="/registration">create account</a>
    </p>
</@c.page>