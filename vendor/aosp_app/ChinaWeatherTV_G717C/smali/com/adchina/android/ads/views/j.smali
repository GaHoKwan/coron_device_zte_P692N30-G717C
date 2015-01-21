.class final Lcom/adchina/android/ads/views/j;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdBrowserView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "adChina"

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "javascript:if(typeof sdkDeviceInfo != \'undefined\'){sdkDeviceInfo.fireEvent(\'notice\', {\'action\':\'setDisplay\',\'display\':\'android\'});}"

    iget-object v1, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v1}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v1}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-boolean v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->u:Z

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->b(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/GifImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->b(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/GifImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->b(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/GifImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->c(Lcom/adchina/android/ads/views/AdBrowserView;)V

    :cond_2
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->b(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/GifImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->b(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/GifImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->b(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/GifImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->c(Lcom/adchina/android/ads/views/AdBrowserView;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/views/j;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdBrowserView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
