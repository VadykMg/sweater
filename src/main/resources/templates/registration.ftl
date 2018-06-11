<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    Регістрація
     ${message?ifExists}
    <@l.login "/registration">
    </@l.login>

</@c.page>
