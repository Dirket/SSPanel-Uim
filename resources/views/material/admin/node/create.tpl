{include file='admin/main.tpl'}

<script src="//cdn.staticfile.org/jsoneditor/9.9.0/jsoneditor.min.js"></script>
<link href="//cdn.staticfile.org/jsoneditor/9.9.0/jsoneditor.min.css" rel="stylesheet" type="text/css">

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">添加节点</h1>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-sm-12">
            <section class="content-inner margin-top-no">
                <form id="main_form">
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="name">节点名称</label>
                                    <input class="form-control maxwidth-edit" id="name" type="text" name="name">
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="server">节点地址</label>
                                    <input class="form-control maxwidth-edit" id="server" type="text" name="server">
                                    <p class="form-control-guide"><i class="material-icons">info</i>如果填写为域名，“节点IP”会自动设置为解析的IP</p>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="server">节点IP</label>
                                    <input class="form-control maxwidth-edit" id="node_ip" name="node_ip" type="text">
                                    <p class="form-control-guide"><i class="material-icons">info</i>如果“节点地址”填写为域名，则此处的值会被忽视
                                    </p>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="rate">流量比例</label>
                                    <input class="form-control maxwidth-edit" id="rate" type="text" name="rate"
                                           value="1">
                                </div>
                                <div class="form-group form-group-label">
                                    <label for="mu_only">
                                        <label class="floating-label" for="sort">单端口多用户启用</label>
                                        <select id="mu_only" class="form-control maxwidth-edit" name="is_multi_user">
                                            <option value="-1">只启用普通端口</option>
                                            <option value="1">只启用单端口多用户</option>
                                        </select>
                                    </label>
                                </div>
                                <div class="form-group form-group-label">
                                    <div class="checkbox switch">
                                        <label for="type">
                                            <input checked class="access-hide" id="type" type="checkbox"
                                                   name="type"><span class="switch-toggle"></span>是否显示
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">         
                                <div class="form-group">
                                    <dev id="custom_config"></dev>
                                    <p class="form-control-guide"><i class="material-icons">info</i>请参考 <a href="//wiki.sspanel.org/#/setup-custom-config" target="_blank">wiki.sspanel.org/#/setup-custom-config</a> 修改节点自定义配置
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="sort">节点类型</label>
                                    <select id="sort" class="form-control maxwidth-edit" name="sort">
                                        <option value="0">Shadowsocks</option>
                                        <option value="9">Shadowsocksr 单端口多用户（旧）</option>
                                        <option value="11">V2Ray</option>
                                        <option value="14">Trojan</option>
                                    </select>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="status">节点状态</label>
                                    <input class="form-control maxwidth-edit" id="status" type="text" name="status"
                                           value="可用">
                                </div>
                                
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="info">节点描述</label>
                                    <input class="form-control maxwidth-edit" id="info" type="text" name="info"
                                           value="无描述">
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="class">节点等级</label>
                                    <input class="form-control maxwidth-edit" id="class" type="text" value="0"
                                           name="class">
                                    <p class="form-control-guide"><i class="material-icons">info</i>不分级请填0，分级填写相应数字</p>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="group">节点群组</label>
                                    <input class="form-control maxwidth-edit" id="group" type="text" value="0"
                                           name="group">
                                    <p class="form-control-guide"><i class="material-icons">info</i>分组为数字，不分组请填0</p>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="node_bandwidth_limit">节点流量上限（GB）</label>
                                    <input class="form-control maxwidth-edit" id="node_bandwidth_limit" type="text"
                                           value="0" name="node_bandwidth_limit">
                                    <p class="form-control-guide"><i class="material-icons">info</i>不设上限请填0</p>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="bandwidthlimit_resetday">节点流量上限清空日</label>
                                    <input class="form-control maxwidth-edit" id="bandwidthlimit_resetday" type="text"
                                           value="1" name="bandwidthlimit_resetday">
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="node_speedlimit">节点限速（Mbps）</label>
                                    <input class="form-control maxwidth-edit" id="node_speedlimit" type="text" value="0"
                                           name="node_speedlimit">
                                    <p class="form-control-guide"><i class="material-icons">info</i>不限速填0，对于每个用户端口生效</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-10 col-md-push-1">
                                            <button id="submit" type="submit"
                                                    class="btn btn-block btn-brand waves-attach waves-light">添加
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                {include file='dialog.tpl'}
        </div>
    </div>
</main>

{include file='admin/footer.tpl'}

<script>
    const container = document.getElementById('custom_config');
    var options = {
        modes: ['code', 'tree'],
    };
    const editor = new JSONEditor(container, options);
{literal}
    $('#main_form').validate({
        ignore: ".jsoneditor *",
        rules: {
            name: {required: true},
            rate: {required: true},
            info: {required: true},
            group: {required: true},
            status: {required: true},
            node_speedlimit: {required: true},
            sort: {required: true},
            node_bandwidth_limit: {required: true},
            bandwidthlimit_resetday: {required: true}
        },
        submitHandler: () => {
            if ($$.getElementById('type').checked) {
                var type = 1;
            } else {
                var type = 0;
            }
{/literal}
            $.ajax({
                type: "POST",
                url: "/admin/node",
                dataType: "json",
                data: {
                    name: $$getValue('name'),
                    server: $$getValue('server'),
                    custom_config: editor.get(),
                    node_ip: $$getValue('node_ip'),
                    rate: $$getValue('rate'),
                    info: $$getValue('info'),
                    type,
                    group: $$getValue('group'),
                    status: $$getValue('status'),
                    node_speedlimit: $$getValue('node_speedlimit'),
                    sort: $$getValue('sort'),
                    class: $$getValue('class'),
                    node_bandwidth_limit: $$getValue('node_bandwidth_limit'),
                    bandwidthlimit_resetday: $$getValue('bandwidthlimit_resetday'),
                    mu_only: $$getValue('mu_only')
                },
                success: data => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        window.setTimeout("location.href=top.document.referrer", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `发生错误：${
                            jqXHR.status
                            }`;
                }
            });
        }
    });
</script>
