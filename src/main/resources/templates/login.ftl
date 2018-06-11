<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
Авторизація
    <@l.login "/login">
    </@l.login>
<a href="/registration">Регістрація</a>
</@c.page>