.class final Lcom/adchina/android/ads/views/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdBrowserView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/c;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/c;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/adchina/android/ads/views/c;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget v1, v1, Lcom/adchina/android/ads/views/AdBrowserView;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/c;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/c;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/c;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/c;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->goBack()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
