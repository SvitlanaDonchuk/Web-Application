<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form class="form-inline" method="get" action="/main">
                <label>
                    <input class="form-control" type="text" name="filter" value="${filter!}" placeholder="Search by tag">
                </label>
                <button type="submit" class="btn btn-primary mb-1">Search</button>
            </form>
        </div>
    </div>
    <a class="btn btn-primary my-2" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse <#if message??>show</#if>" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group mt-3">
                    <input type="text" name="text" value="<#if message??>${message.text}</#if>"
                           class="form-control ${(textError??)?string('is-invalid', '')}"
                           placeholder="Enter a message"/>
                    <#if textError??>
                        <div class="invalid-feedback">
                            ${textError}
                        </div>
                    </#if>
                </div>
                <div class="form-group mt-3">
                    <input type="text" name="tag" value="<#if message??>${message.tag}</#if>"
                           class="form-control ${(tagError??)?string('is-invalid', '')}"
                           placeholder="Tag"/>
                    <#if tagError??>
                        <div class="invalid-feedback">
                            ${tagError}
                        </div>
                    </#if>
                </div>
                <div class="form-group mt-3">
                    <div class="custom-file-input">
                        <input class="form-control"type="file" name="file">
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button class="btn btn-primary my-3" type="submit">Add</button>
            </form>
        </div>
    </div>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <#list messages as message>
            <div class="card mx-3" style="width: 18rem;">
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="m-2">
                    <span>${message.text}</span>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted">
                    ${message.authorName}
                </div>
            </div>
        <#else>
            <div>
                <p>No message</p>
            </div>
        </#list>
    </div>
</@c.page>
