.class final Lcom/adchina/android/ads/views/ab;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/ContentView;


# direct methods
.method public constructor <init>(Lcom/adchina/android/ads/views/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/ab;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "Banner webview onPageFinish"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ab;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->a(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/ab;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->b(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->j()Lcom/adchina/android/ads/h;

    move-result-object v0

    const-string v1, "==onPageFinished"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ab;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->b(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ab;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->a(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ab;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->b(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->g()V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/ab;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->a(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setLoaded(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
