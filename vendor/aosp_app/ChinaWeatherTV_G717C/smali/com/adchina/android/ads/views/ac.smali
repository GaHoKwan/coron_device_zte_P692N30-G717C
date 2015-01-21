.class final Lcom/adchina/android/ads/views/ac;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/FullScreenAdActivity;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/ac;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/ac;)Lcom/adchina/android/ads/views/FullScreenAdActivity;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/ac;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, " webvie onPageFinish"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ac;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->g()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ac;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "html5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/views/ad;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/ad;-><init>(Lcom/adchina/android/ads/views/ac;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/ad;->a()V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/ac;->a:Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-static {v0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->g(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
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
