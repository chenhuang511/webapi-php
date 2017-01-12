<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous">{{ link_to("device", "Go Back") }}</li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>
        Edit device
    </h1>
</div>

{{ content() }}

{{ form("device/save", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}

<div class="form-group">
    <label for="fieldName" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
        {{ text_field("name", "size" : 30, "class" : "form-control", "id" : "fieldName") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldDesc" class="col-sm-2 control-label">Desc</label>
    <div class="col-sm-10">
        {{ text_field("desc", "size" : 30, "class" : "form-control", "id" : "fieldDesc") }}
    </div>
</div>


{{ hidden_field("id") }}

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        {{ submit_button('Send', 'class': 'btn btn-default') }}
    </div>
</div>

</form>
