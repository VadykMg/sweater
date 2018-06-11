<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div>
    <@l.logout>

    </@l.logout>
</div>
<div>
    <form method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="text" name = "text" placeholder="Введіть повідомлення"/>
        <input type="text" name="tag" placeholder="Тег">
        <button type="submit">Добавить</button>
    </form>
</div>
<div>Список повідомлень</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter}">
    <button type="submit">Найти</button>
</form>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
<#else> Сообщений нет
</#list>
</@c.page>