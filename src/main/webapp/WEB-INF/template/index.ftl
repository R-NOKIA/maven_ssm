<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8" />
    <title>${token.username} —个人中心</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <link   rel="icon" href="${basePath}/favicon.ico" type="image/x-icon" />
    <link   rel="shortcut icon" href="${basePath}/favicon.ico" />
    <link href="${basePath}/static/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
    <link href="${basePath}/static/css/common/base.css?${_v}" rel="stylesheet"/>
    <script  src="${basePath}/static/js/common/jquery/jquery1.8.3.min.js"></script>
    <script  src="${basePath}/static/js/common/layer/layer.js"></script>
    <script  src="${basePath}/static/js/common/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body data-target="#one" data-spy="scroll">
<@_top.top 1/>
<div class="container" style="padding-bottom: 15px;min-height: 300px; margin-top: 40px;">
    <div class="row">
        <@_left.user 1/>
        <div class="col-md-10">
            <h2>个人资料</h2>
            <hr>
            <table class="table table-bordered">
                <tr>
                    <th>昵称</th>
                    <td>${token.username?default('未设置')}</td>
                </tr>
                <tr>
                    <th>Email/帐号</th>
                    <td>${token.id?default('未设置')}</td>
                </tr>
            </table>
        </div>
    </div>
    <#--/row-->
</div>
</body>
</html>