.class Lcom/baidu/mobads/appoffers/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/appoffers/e;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/g;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/g;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DownloaderTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "web view load progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->c([Ljava/lang/Object;)I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/g;->a:Lcom/baidu/mobads/appoffers/e;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;I)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/g;->a:Lcom/baidu/mobads/appoffers/e;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u4e0esd\u5361\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/g;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DownloaderTask"

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
