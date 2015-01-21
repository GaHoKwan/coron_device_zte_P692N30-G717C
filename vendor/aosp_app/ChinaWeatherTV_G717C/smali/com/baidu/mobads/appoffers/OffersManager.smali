.class public final Lcom/baidu/mobads/appoffers/OffersManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPoints(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobads/appoffers/s;->a(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static getCurrencyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobads/appoffers/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPoints(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobads/appoffers/s;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static setAppSec(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/mobads/appoffers/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppSid(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/mobads/appoffers/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static showOffers(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/baidu/mobads/appoffers/c;->j(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/mobads/appoffers/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/baidu/mobads/appoffers/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/baidu/mobads/appoffers/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/baidu/mobads/appoffers/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u5148\u914d\u7f6eappId\u4e0eappSec||Open Failed, You need to config appId and appSec"

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->b(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    const/16 v3, 0x400

    if-eq v1, v3, :cond_2

    const-string v1, "isFullScreen"

    const-string v3, "false"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v1, "curl"

    const-string v3, "http://mobads.baidu.com/wall/wall.htm"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->b(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "isFullScreen"

    const-string v3, "true"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static subPoints(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobads/appoffers/s;->b(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
