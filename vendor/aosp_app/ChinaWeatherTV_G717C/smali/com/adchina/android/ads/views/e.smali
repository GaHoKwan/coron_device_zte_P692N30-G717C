.class final Lcom/adchina/android/ads/views/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdBrowserView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget v1, v1, Lcom/adchina/android/ads/views/AdBrowserView;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-boolean v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iput-boolean v3, v0, Lcom/adchina/android/ads/views/AdBrowserView;->u:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdBrowserView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->reload()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iput-boolean v2, v0, Lcom/adchina/android/ads/views/AdBrowserView;->u:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/e;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->stopLoading()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
