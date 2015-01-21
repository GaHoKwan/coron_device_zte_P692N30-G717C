.class Lcom/baidu/mobads/appoffers/f;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/appoffers/e;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/f;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DownloaderTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onPageFinished"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DownloaderTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onPageStarted"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DownloaderTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onReceivedError"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/f;->a:Lcom/baidu/mobads/appoffers/e;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;I)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/f;->a:Lcom/baidu/mobads/appoffers/e;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u4e0esd\u5361\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DownloaderTask"

    aput-object v2, v0, v1

    const-string v1, "shouldOverrideUrlLoading"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3
.end method
