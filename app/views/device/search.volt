<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous">{{ link_to("device/index", "Go Back") }}</li>
            <li class="next">{{ link_to("device/new", "Create ") }}</li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Search result</h1>
</div>

{{ content() }}

<div class="row">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
            <th>Name</th>
            <th>Desc</th>

                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        {% if page.items is defined %}
        {% for device in page.items %}
            <tr>
                <td>{{ device.id }}</td>
            <td>{{ device.name }}</td>
            <td>{{ device.desc }}</td>

                <td>{{ link_to("device/edit/"~device.id, "Edit") }}</td>
                <td>{{ link_to("device/delete/"~device.id, "Delete") }}</td>
            </tr>
        {% endfor %}
        {% endif %}
        </tbody>
    </table>
</div>

<div class="row">
    <div class="col-sm-1">
        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
            {{ page.current~"/"~page.total_pages }}
        </p>
    </div>
    <div class="col-sm-11">
        <nav>
            <ul class="pagination">
                <li>{{ link_to("device/search", "First") }}</li>
                <li>{{ link_to("device/search?page="~page.before, "Previous") }}</li>
                <li>{{ link_to("device/search?page="~page.next, "Next") }}</li>
                <li>{{ link_to("device/search?page="~page.last, "Last") }}</li>
            </ul>
        </nav>
    </div>
</div>
