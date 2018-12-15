# 自动生成PHP的MVC文件

### 执行:
    cd createmvc
    chmod a+x createmvc.sh
     
    ./createmvc.sh Users user users
    ./createmvc.sh CoinHistories coin_history coin_histories
    mkdir temp
    
### 生成完毕 将TABLENAMEController.php TABLENAME.php TABLENAME文件夹 放到对应位置

### 将生成的temp/TABLENAME/中的table文件放到task任务中

    在项目终端中执行:
    
    php cli.php db migrate
    php cli.php TAKSNAME field
     
    生成的字符串"{{simple_table(...)}}"替换view/index.view对应的{{{{simple_table()}}
    