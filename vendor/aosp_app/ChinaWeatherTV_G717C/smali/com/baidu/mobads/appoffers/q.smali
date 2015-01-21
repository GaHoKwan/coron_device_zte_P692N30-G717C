.class Lcom/baidu/mobads/appoffers/q;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<html lang=\"en-US\"><head><meta charset=\"UTF-8\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<meta name=\"viewport\" content=\"width=480,initial-scale=0.66,minimum-scale=0.66,maximum-scale=0.66\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<title>error</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<style type=\"text/css\"> *{ -webkit-tap-highlight-color: rgba(255, 255, 255, 0);} body, ul, li, p, h1, h2, div{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "margin: 0; padding: 0;} #error{position: absolute;height: 100%;width: 100%;left: 0;padding-top: 64px;box-sizing: border-box;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "display: table;}#error .error_cell{display: table-cell;vertical-align: middle;text-align: center;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "#error h2{font-size: 24px;color: #373737;margin-bottom: 15px;} #error .btn{font-size: 18px;width: 102px;height: 46px;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</style></head><body><div id=\"error\"><div class=\"error_cell\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<h2>\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u73af\u5883...</h2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<button class=\"btn\" id=\"resetNetworkBtn\" onclick=\"MobadsSdk.setNetworkState();\">\u8bbe\u7f6e\u7f51\u7edc</button>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<button class=\"btn\" onclick=\"location.reload();\">\u91cd\u65b0\u52a0\u8f7d</button>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</div></div></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "openApp"

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "openAppAndGivePoints"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/baidu/mobads/appoffers/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-lez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3, p2}, Lcom/baidu/mobads/appoffers/a;->a(Landroid/content/Context;Ljava/lang/String;JI)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "SDK"

    aput-object v3, v2, v1

    const-string v3, "add points success"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/baidu/mobads/appoffers/s;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u4efb\u52a1\u5b8c\u6210\uff0c\u589e\u52a0\u4e86%d%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/mobads/appoffers/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "SDK"

    aput-object v3, v2, v1

    const-string v3, "add point fail"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "installApp"

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
