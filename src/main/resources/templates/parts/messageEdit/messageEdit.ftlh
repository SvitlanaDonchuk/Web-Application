<style type="text/css">
    <#include "../login/login.css">
    <#include "../../profileSettings/profile.css">
    <#include "messageEdit.css">
</style>

<div class="messageEdit">
    <div class="messageEdit-handler">
        <label for="pseudoBtn" class="messageEdit-handler-button">
            Edit message
        </label>
        <input type="checkbox" id="pseudoBtn" />
        <div class="messageEdit-form" id="collapseExample">
            <form class="login-form" method="post" enctype="multipart/form-data">
                <div class="login-form-input">
                    <input type="text" name="text" value="<#if message??>${message.text}</#if>"
                           class="login-form-input_form-control ${(textError??)?string('is-invalid', '')} messageEdit-additional"
                           placeholder="Enter a message" />
                    <#if textError??>
                        <div class="invalid-feedback">
                            ${textError}
                        </div>
                    </#if>
                </div>
                <div class="login-form-input">
                    <input type="text" name="tag" value="<#if message??>${message.tag}</#if>"
                           class="login-form-input_form-control ${(tagError??)?string('is-invalid', '')} messageEdit-additional"
                           placeholder="Tag" />
                    <#if tagError??>
                        <div class="invalid-feedback">
                            ${tagError}
                        </div>
                    </#if>
                </div>
                <div class="custom-file-input" >
                    <input class="form-control" type="file" name="file">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />
                <div class="login-form-input">
                    <button type="submit" class="messageEdit-handler-button align-right">Save message</button>
                </div>
            </form>
        </div>
    </div>
</div>