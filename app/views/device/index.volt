<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading head-border">
                <div>Devices</div>
                <div>
                    <button class="btn btn-success" type="submit"
                            onclick="modal.showform('/device/new', {}, 'Create new device')">Create new device
                    </button>
                    <form class="search-content" action="index.html" method="post">
                        <input class="form-control" name="keyword" placeholder="Search..." type="text">
                    </form>
                </div>
            </header>
            <table class="table table-striped custom-table table-hover">
                <thead>
                <tr>
                    <th><i class="fa fa-bookmark-o"></i> Id</th>
                    <th class="hidden-xs"><i class="fa fa-building-o"></i> Name</th>
                    <th><i class="fa fa-bar-chart-o"></i> Description</th>
                    <th class="hidden-xs"><i class="fa fa-cogs"></i> Action</th>
                </tr>
                </thead>
                <tbody>
                {% for item in devices %}
                    <tr>
                        <td><a href="#">{{ item.id }}</a></td>
                        <td class="hidden-xs">{{ item.name }}</td>
                        <td>{{ item.desc }}</td>
                        <td class="hidden-xs">
                            <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                            <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                            <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                        </td>
                    </tr>
                {% endfor %}
                </tbody>
            </table>
        </section>
        {% include "layouts/paging.volt" %}
    </div>
</div>
