<a href="/admin/%D/new" class="modal_action">新建</a>

<form>

    <label for="id_eq">用户id查询</label>
    <input type="text" name="%S[id_eq]" id="id_eq" style="width: 100px" value="{{ %S_id }}">

    <label for="mobile_cont">手机号</label>
    <input type="text" name="%S[mobile_cont]" id="mobile_cont">

    <label for="uid_cont">UID</label>
    <input type="text" name="%S[uid_cont]" id="uid_cont"><br><br>

    <label for="status_eq">状态</label>
    <select name="%S[status_eq]" id="status_eq">
        {{ options(%P.STATUS) }}
    </select>

    <label for="auth_status_eq">认证状态</label>
    <select name="%S[auth_status_eq]" id="auth_status_eq">
        {{ options(%P.AUTH_STATUS) }}
    </select>

    <label for="face_auth_status_eq">人脸识别认证状态</label>
    <select name="%S[face_auth_status_eq]" id="face_auth_status_eq">
        {{ options(%P.FACE_AUTH_STATUS) }}
    </select>

    <label for="%S_level_id_eq">会员级别</label>
    <select name="%S[%S_level_id_eq]" id="%S_level_id_eq">
        {{ options(%S_levels , '' ,'id','level_name_text') }}
    </select>

    <label for="escrow_status_eq">担保状态</label>
    <select name="%S[escrow_status_eq]" id="escrow_status_eq">
        {{ options(%P.ESCROW_STATUS) }}
    </select>

    <label for="escrow_status_eq">更新级别</label>
    <select name="%S[release_level_eq]" id="release_level_eq">
        {{ options(%P.RELEASE_LEVEL) }}
    </select>

    <button type="submit" class=" btn btn-default">搜索</button>
</form>

{% macro link(%S) %}
{% endmacro %}

{{ simple_table(%D,[
    'ID':'id',
    '链接':'link',
]) }}