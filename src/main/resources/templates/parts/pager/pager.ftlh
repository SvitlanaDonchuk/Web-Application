<#macro pager url page>
    <style type="text/css">
        <#include "pager.css">
    </style>

    <#if page.getTotalPages() gt 7>
        <#assign
        totalPages = page.getTotalPages()
        pageNumber = page.getNumber() + 1

        head = (pageNumber > 4)?then([1, -1], [1, 2, 3])
        tail = (pageNumber < totalPages - 3)?then([-1, totalPages], [totalPages - 2, totalPages - 1, totalPages])
        bodyBefore = (pageNumber > 4 && pageNumber < totalPages - 1)?then([pageNumber - 2, pageNumber - 1], [])
        bodyAfter = (pageNumber > 2 && pageNumber < totalPages - 3)?then([pageNumber + 1, pageNumber + 2], [])

        body = head + bodyBefore + (pageNumber > 3 && pageNumber < totalPages - 2)?then([pageNumber], []) + bodyAfter + tail
        >
    <#else>
        <#assign body = 1..page.getTotalPages()>
    </#if>
    <div class="pager-container">
        <div class="pager-container-row">
            <ul class="pager-container-pagination">
                <li class="pager-item disabled">
                    <a class="pager-link" href="#" tabindex="-1">Elements in page</a>
                </li>
                <#list [5, 10, 25, 50] as c>
                    <#if c == page.getSize()>
                        <li class="pager-item active">
                            <a class="pager-link" href="#" tabindex="-1">${c}</a>
                        </li>
                    <#else>
                        <li class="pager-item">
                            <a class="pager-link" href="${url}?page=${page.getNumber()}&size=${c}" tabindex="-1">${c}</a>
                        </li>
                    </#if>
                </#list>
            </ul>
            <ul class="pager-container-pagination">
                <li class="pager-item disabled">
                    <a class="pager-link" href="#" tabindex="-1">Page</a>
                </li>
                <#list body as p>
                    <#if (p - 1) == page.getNumber()>
                        <li class="pager-item active">
                            <a class="pager-link" href="#" tabindex="-1">${p}</a>
                        </li>
                    <#elseif p == -1>
                        <li class="pager-item disabled">
                            <a class="pager-link" href="#" tabindex="-1">...</a>
                        </li>
                    <#else>
                        <li class="pager-item">
                            <a class="pager-link" href="${url}?page=${p - 1}&size=${page.getSize()}" tabindex="-1">${p}</a>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
    </div>
</#macro>