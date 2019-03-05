{% set f = simple_form(['admin',%S],['method':'post', 'class':'ajax_model_form']) %}
{{ f.select('code',['label':'Code','width':'50%','collection':%P.CODE]) }}
{{ f.input('rank',['label':'排名','width':'50%']) }}
{{ f.input('color',['label':'颜色','width':'50%']) }}
{{ f.input('name',['label':'名字','width':'50%']) }}
{{ f.file('icon', ['label': '图标', 'width': '50%']) }}
{{ f.select('user_status', ['label': '用户使用状态', 'collection': %P.USER_STATUS,'width': '50%']) }}
{{ f.select('acceptance_status', ['label': '承兑商使用状态', 'collection': %P.ACCEPTANCE_STATUS]) }}
{{ f.submit('保存') }}
{{ f.end }}
