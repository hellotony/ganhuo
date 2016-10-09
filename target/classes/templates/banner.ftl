<!--    导航   -->
<div class="menu">
    <ul>
    <#list modules as l>
        <li>
            <a href="http://${host}/module/${l.value}" title="${l.name!}">
                <em>${l.name}</em>
                <div class="v-num">
                    <span class="add_new">${l.count}+</span>
                </div>
            </a>
        </li>
    </#list>
    </ul>
</div>