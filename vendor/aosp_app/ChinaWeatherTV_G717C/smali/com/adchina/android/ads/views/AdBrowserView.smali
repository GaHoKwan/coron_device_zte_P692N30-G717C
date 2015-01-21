.class public Lcom/adchina/android/ads/views/AdBrowserView;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final A:Ljava/lang/String;

.field final B:Ljava/lang/String;

.field final C:Ljava/lang/String;

.field private D:Lcom/adchina/android/ads/views/AdWebView;

.field private E:Lcom/adchina/android/ads/views/GifImageView;

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Lcom/adchina/android/ads/controllers/BaseController;

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Landroid/os/Handler;

.field private N:Landroid/widget/FrameLayout;

.field private O:Landroid/widget/FrameLayout;

.field private P:Landroid/widget/FrameLayout;

.field private Q:Landroid/view/View;

.field private R:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/FrameLayout;

.field c:Landroid/widget/LinearLayout;

.field d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

.field e:Landroid/widget/ImageButton;

.field f:Landroid/widget/ImageButton;

.field g:Landroid/widget/ImageButton;

.field h:Landroid/widget/ImageButton;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/graphics/drawable/Drawable;

.field k:Landroid/graphics/Bitmap;

.field l:Landroid/graphics/Bitmap;

.field m:Landroid/graphics/Bitmap;

.field n:Landroid/graphics/Bitmap;

.field o:Landroid/graphics/Bitmap;

.field p:Landroid/graphics/Bitmap;

.field q:Landroid/graphics/Bitmap;

.field r:I

.field s:I

.field t:I

.field u:Z

.field final v:Ljava/lang/String;

.field final w:Ljava/lang/String;

.field final x:Ljava/lang/String;

.field final y:Ljava/lang/String;

.field final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->F:I

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->G:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->H:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->J:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->K:Z

    iput v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->r:I

    iput v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->s:I

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->t:I

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->u:Z

    const-string v0, "adchina_back.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->v:Ljava/lang/String;

    const-string v0, "adchina_bg.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->w:Ljava/lang/String;

    const-string v0, "adchina_finish.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->x:Ljava/lang/String;

    const-string v0, "adchina_go.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->y:Ljava/lang/String;

    const-string v0, "adchina_handleclose.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->z:Ljava/lang/String;

    const-string v0, "adchina_handleopen.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->A:Ljava/lang/String;

    const-string v0, "adchina_refresh.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->B:Ljava/lang/String;

    const-string v0, "adchina_stop.png"

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->C:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/AdBrowserView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->M:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 7

    const/high16 v6, 0x4280

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdBrowserView;->setContentView(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->c()V

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    if-nez v0, :cond_4

    new-instance v0, Lcom/adchina/android/ads/views/AdWebView;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/AdWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->J:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/AdWebView;->setBackgroundColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/AdWebView;->setScrollBarStyle(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->N:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->N:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->O:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->O:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->O:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->N:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->P:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->P:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    new-instance v1, Lcom/adchina/android/ads/views/j;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/j;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    new-instance v1, Lcom/adchina/android/ads/views/k;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/k;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/views/AdWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    const-string v5, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    new-instance v1, Lcom/adchina/android/ads/views/b;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/b;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    invoke-static {p0, v6}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v6}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    if-nez v2, :cond_5

    new-instance v2, Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adchina/android/ads/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->a:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/adchina/android/ads/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v2}, Lcom/adchina/android/ads/views/GifImageView;->bringToFront()V

    :cond_5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->isExists(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDefaultLoadingGifPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->a(Ljava/io/InputStream;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->a(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/AdBrowserView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->Q:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/AdBrowserView;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->R:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method static synthetic b(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/GifImageView;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    return-object v0
.end method

.method private b()V
    .locals 10

    const/4 v9, -0x2

    const/16 v6, 0x11

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v2, v0, 0x4

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/adchina/android/ads/views/AdBrowserView;->r:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->r:I

    const/high16 v3, 0x3f80

    invoke-direct {v1, v9, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->s:I

    iget v7, p0, Lcom/adchina/android/ads/views/AdBrowserView;->r:I

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/ImageButton;

    invoke-direct {v6, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    new-instance v6, Landroid/widget/ImageButton;

    invoke-direct {v6, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->g:Landroid/widget/ImageButton;

    new-instance v6, Landroid/widget/ImageButton;

    invoke-direct {v6, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    new-instance v6, Landroid/widget/ImageButton;

    invoke-direct {v6, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->i:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->g:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->i:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->g:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->i:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdBrowserView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->g:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->i:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->g:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->i:Landroid/widget/ImageButton;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->f:Landroid/widget/ImageButton;

    new-instance v2, Lcom/adchina/android/ads/views/c;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/views/c;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->g:Landroid/widget/ImageButton;

    new-instance v2, Lcom/adchina/android/ads/views/d;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/views/d;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->h:Landroid/widget/ImageButton;

    new-instance v2, Lcom/adchina/android/ads/views/e;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/views/e;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->i:Landroid/widget/ImageButton;

    new-instance v2, Lcom/adchina/android/ads/views/f;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/views/f;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->s:I

    iget v3, p0, Lcom/adchina/android/ads/views/AdBrowserView;->r:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/adchina/android/ads/views/AdSlidingDrawer;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    invoke-direct {v1, p0, v2, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->r:I

    invoke-direct {v1, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->s:I

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->setClickable(Z)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    new-instance v3, Lcom/adchina/android/ads/views/g;

    invoke-direct {v3, p0, v1}, Lcom/adchina/android/ads/views/g;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(Lcom/adchina/android/ads/views/o;)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    new-instance v3, Lcom/adchina/android/ads/views/h;

    invoke-direct {v3, p0, v1, v0}, Lcom/adchina/android/ads/views/h;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;Landroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {v2, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(Lcom/adchina/android/ads/views/n;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "closeAdBrowserView"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->stopLoading()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->clearHistory()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->freeMemory()V

    iput-object v3, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/views/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iput-object v3, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->Q:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->Q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->O:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->Q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/adchina/android/ads/views/AdBrowserView;->Q:Landroid/view/View;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->R:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_2
    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->d()V

    :cond_3
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    return-void
.end method

.method static synthetic d(Lcom/adchina/android/ads/views/AdBrowserView;)Lcom/adchina/android/ads/views/AdWebView;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    return-object v0
.end method

.method static synthetic e(Lcom/adchina/android/ads/views/AdBrowserView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->Q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/adchina/android/ads/views/AdBrowserView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->O:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/adchina/android/ads/views/AdBrowserView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->R:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic h(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->b()V

    return-void
.end method

.method static synthetic i(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/adchina/android/ads/controllers/BaseController;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->I:Lcom/adchina/android/ads/controllers/BaseController;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdBrowserView;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->a()Lcom/adchina/android/ads/AdFsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->a()Lcom/adchina/android/ads/AdFsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adchina/android/ads/AdFsListener;->onStartFullScreenLandPage()V

    :cond_0
    const-string v0, "\u8fdb\u5165 AdBrowserView"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->b:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v0, Lcom/adchina/android/ads/views/a;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/a;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->M:Landroid/os/Handler;

    new-instance v0, Lcom/adchina/android/ads/views/i;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/views/i;-><init>(Lcom/adchina/android/ads/views/AdBrowserView;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/i;->start()V

    const-string v0, ""

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "browserurl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "isopenweb"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->G:Z

    const-string v2, "isbanner"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->H:Z

    const-string v2, "istransparent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->J:Z

    const-string v2, "downloadtrack"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->L:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->G:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/adchina/android/ads/views/AdWebView;->y:Lcom/adchina/android/ads/views/AdBrowserView;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/adchina/android/ads/views/AdWebView;->y:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-virtual {v1}, Lcom/adchina/android/ads/views/AdBrowserView;->finish()V

    :cond_2
    invoke-static {p0}, Lcom/adchina/android/ads/views/AdWebView;->setOpenWebPage(Lcom/adchina/android/ads/views/AdBrowserView;)V

    :cond_3
    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->a()V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "adBrowseview onDestroy"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->a()Lcom/adchina/android/ads/AdFsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->b()Lcom/adchina/android/ads/controllers/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/h;->a()Lcom/adchina/android/ads/AdFsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adchina/android/ads/AdFsListener;->onEndFullScreenLandpage()V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->k:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->m:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->n:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->o:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->q:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iput-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->E:Lcom/adchina/android/ads/views/GifImageView;

    :cond_8
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->G:Z

    if-eqz v0, :cond_9

    invoke-static {v2}, Lcom/adchina/android/ads/views/AdWebView;->setOpenWebPage(Lcom/adchina/android/ads/views/AdBrowserView;)V

    :cond_9
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    :try_start_0
    const-string v0, "onDownloadStart"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v1}, Lcom/adchina/android/ads/views/AdWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    const-class v0, Landroid/content/Context;

    const-string v1, "DOWNLOAD_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdBrowserView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.app.DownloadManager$Request"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v0, "setAllowedNetworkTypes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "NETWORK_MOBILE"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "NETWORK_WIFI"

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setAllowedOverRoaming"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "setMimeType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setShowRunningNotification"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setVisibleInDownloadsUi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v0, "setDestinationInExternalPublicDir"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".apk"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v9, ".apk"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".apk"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    :goto_1
    const-class v0, Landroid/os/Environment;

    const-string v4, "DIRECTORY_DOWNLOADS"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/adchina/android/ads/Utils;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/download"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object p3, v4, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "setTitle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "\u4e0b\u8f7d\u5e94\u7528"

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v4, "android.app.DownloadManager"

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "enqueue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->L:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdBrowserView;->L:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad_download_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/views/AdBrowserView;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->L:Ljava/lang/String;

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v8, ".apk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".apk"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "AdChinaError"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    :try_start_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "video/mp4"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/views/AdBrowserView;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_8
    move-object p3, v0

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v1}, Lcom/adchina/android/ads/views/AdWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdBrowserView;->D:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v1}, Lcom/adchina/android/ads/views/AdWebView;->goBack()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdBrowserView;->c()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
