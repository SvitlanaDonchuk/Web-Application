<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form class="form-inline" method="get" action="/main">
                <label>
                    <input class="form-control" type="text" name="filter" value="${filter!}" placeholder="Search by tag" />
                </label>
                <button type="submit" class="btn btn-primary mb-1">Search</button>
            </form>
        </div>
    </div>

    <#include "parts/messageEdit.ftlh" />
    <#include "parts/messageList.ftlh" />
</@c.page>
