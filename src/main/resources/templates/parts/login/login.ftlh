<#macro login path isRegisterForm>
    <form action="${path}" method="post" class="login-form">
        <#if !isRegisterForm>
        <div class="registration_title-text">
            Sign in to your account
        </div>
        </#if>
        <div class="login-form-input ifError">
            <#if usernameError??>
                <div class="login-form-input_invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
            <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                   class="login-form-input_form-control ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="User name" />
        </div>
        <div class="login-form-input ifError">
            <#if passwordError??>
                <div class="login-form-input_invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
            <input type="password" name="password"
                   class="login-form-input_form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Password" />
        </div>
        <#if isRegisterForm>
            <div class="login-form-input ifError">
                <#if password2Error??>
                    <div class="login-form-input_invalid-feedback">
                        ${password2Error}
                    </div>
                </#if>
                <input type="password" name="password2"
                       class="login-form-input_form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Password" />
            </div>
            <div class="login-form-input ifError">
                <#if emailError??>
                    <div class="login-form-input_invalid-feedback">
                        ${emailError}
                    </div>
                </#if>
                <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                       class="login-form-input_form-control ${(emailError??)?string('is-invalid', '')}"
                       placeholder="some@some.com" />
            </div>
            <div class="login-form-input">
                <#if captchaError??>
                    <div class="login-form-input_alert login-form-input_alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
                <div class="g-recaptcha" data-sitekey="6LfNvDsaAAAAAITy67yDQw3m1wFE6pynRXK9JS1k"></div>
            </div>
        </#if>
        <div class="login-form-input">
            <button class="login-button login-form-input_submit" type="submit">
                <#if isRegisterForm>
                    Create
                <#else>
                    Sign In
                </#if>
            </button>
        </div>
        <#if !isRegisterForm>
            <div class="login-form-input">
                <div class="footer">
                    <p class="messageEdit-form">Don’t have an account?</p>
                    <a class="login-form-input_registration" href="/registration">Sign Up</a>
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    </form>
</#macro>