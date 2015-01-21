.class public Lcom/adchina/android/ads/views/FullScreenAdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Landroid/os/Handler;

.field private c:Lcom/adchina/android/ads/views/GifImageView;

.field private d:Lcom/adchina/android/ads/views/AdWebView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:I

.field private h:I

.field private i:Landroid/widget/Button;

.field private j:Landroid/graphics/Bitmap;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/FullScreenAdActivity;)I
    .locals 1

    iget v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    return v0
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x461c4000

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->g:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->h:I

    iget v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->h:I

    iget v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->setContentView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/adchina/android/ads/views/aj;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/views/aj;-><init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    :cond_1
    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adchina/android/ads/controllers/h;->t()I

    move-result v1

    iput v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    iget v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    if-gtz v1, :cond_2

    const/16 v1, 0xf

    iput v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->n:Ljava/lang/String;

    const-string v2, "ihtml5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->n:Ljava/lang/String;

    const-string v2, "html5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    if-nez v0, :cond_5

    new-instance v0, Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/adchina/android/ads/views/AdWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setController(Lcom/adchina/android/ads/controllers/BaseController;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->registerSensor()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    new-instance v1, Lcom/adchina/android/ads/views/ac;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/ac;-><init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setId(I)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->n:Ljava/lang/String;

    const-string v1, "html5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b()V

    :cond_4
    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/controllers/h;->a(Landroid/view/View;Lcom/adchina/android/ads/views/ak;)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    if-nez v0, :cond_8

    new-instance v0, Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/adchina/android/ads/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/views/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/views/GifImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, v6}, Lcom/adchina/android/ads/views/GifImageView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, v6}, Lcom/adchina/android/ads/views/GifImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/GifImageView;->setId(I)V

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v2

    invoke-static {v0, v2}, Lcom/adchina/android/ads/Utils;->isExists(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDefaultLoadingGifPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adchina/android/ads/Utils;->loadAssetsInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/GifImageView;->a(Ljava/io/InputStream;)V

    :goto_1
    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    new-instance v3, Lcom/adchina/android/ads/views/af;

    invoke-direct {v3, p0}, Lcom/adchina/android/ads/views/af;-><init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/adchina/android/ads/controllers/h;->a(Landroid/view/View;Lcom/adchina/android/ads/views/ak;)V

    :cond_8
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/GifImageView;->a(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/FullScreenAdActivity;I)V
    .locals 0

    iput p1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getFullScreenTimerBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getFullScreenTimerTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u5e7f\u544a\u5269\u4f59"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x42c4

    invoke-static {p0, v0}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    const/high16 v0, 0x4200

    invoke-static {p0, v0}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->isShowFullScreenTimer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->k:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    :cond_2
    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->c()V

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ArgName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/controllers/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/high16 v2, 0x4200

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->isExists(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDefaultCloseImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->j:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->j:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/adchina/android/ads/views/ah;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/ah;-><init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-static {p0, v2}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->i:Landroid/widget/Button;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->k:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->l:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    :cond_2
    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->d()V

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ArgName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/controllers/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->finish()V

    return-void
.end method

.method static synthetic d(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/adchina/android/ads/views/FullScreenAdActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic g(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->o:Z

    return-void
.end method

.method static synthetic h(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->h()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAdWindowBackgroundColor()I

    move-result v1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAdWindowBackgroundOpacity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adchina/android/ads/Utils;->setWindowBackgroundColor(Landroid/view/Window;II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "Time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const-string v0, "Time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    :cond_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "mAdType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->n:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->unregisterSensor()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d:Lcom/adchina/android/ads/views/AdWebView;

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->c:Lcom/adchina/android/ads/views/GifImageView;

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->k:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/adchina/android/ads/views/FullScreenAdActivity;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "Time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    const-wide/16 v2, 0x3e8

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->a:Ljava/util/Timer;

    new-instance v1, Lcom/adchina/android/ads/views/ai;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/ai;-><init>(Lcom/adchina/android/ads/views/FullScreenAdActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "Time"

    iget v1, p0, Lcom/adchina/android/ads/views/FullScreenAdActivity;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->h()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
