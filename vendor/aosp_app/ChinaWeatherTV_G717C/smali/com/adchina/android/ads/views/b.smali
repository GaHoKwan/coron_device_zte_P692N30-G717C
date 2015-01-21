.class final Lcom/adchina/android/ads/views/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdBrowserView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/b;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/b;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/b;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/b;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/b;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method
