.class public final Lcom/adchina/android/ads/views/ContentView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Ljava/lang/StringBuffer;

.field private b:Landroid/graphics/Matrix;

.field private c:Lcom/adchina/android/ads/views/aa;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Typeface;

.field private i:Lcom/adchina/android/ads/GifEngine;

.field private j:Ljava/util/Timer;

.field private k:Lcom/adchina/android/ads/views/GifImageView;

.field private l:Lcom/adchina/android/ads/views/AdWebView;

.field private m:Lcom/adchina/android/ads/views/AdView;

.field private n:Lcom/adchina/android/ads/controllers/AdViewController;

.field private o:Landroid/widget/LinearLayout$LayoutParams;

.field private p:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->a:Ljava/lang/StringBuffer;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->b:Landroid/graphics/Matrix;

    sget-object v0, Lcom/adchina/android/ads/views/aa;->d:Lcom/adchina/android/ads/views/aa;

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->c:Lcom/adchina/android/ads/views/aa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/adchina/android/ads/views/ContentView;->d:I

    const/high16 v0, -0x100

    iput v0, p0, Lcom/adchina/android/ads/views/ContentView;->e:I

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->h:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->j:Ljava/util/Timer;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->m:Lcom/adchina/android/ads/views/AdView;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adchina/android/ads/views/AdView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->a:Ljava/lang/StringBuffer;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->b:Landroid/graphics/Matrix;

    sget-object v0, Lcom/adchina/android/ads/views/aa;->d:Lcom/adchina/android/ads/views/aa;

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->c:Lcom/adchina/android/ads/views/aa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/adchina/android/ads/views/ContentView;->d:I

    const/high16 v0, -0x100

    iput v0, p0, Lcom/adchina/android/ads/views/ContentView;->e:I

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->h:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->j:Ljava/util/Timer;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->m:Lcom/adchina/android/ads/views/AdView;

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    iput-object p2, p0, Lcom/adchina/android/ads/views/ContentView;->m:Lcom/adchina/android/ads/views/AdView;

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/views/ContentView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/views/ContentView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/views/ContentView;->setClickable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/views/AdWebView;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0}, Lcom/adchina/android/ads/GifEngine;->a()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    :cond_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->removeAllViews()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->p:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/views/ContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->registerSensor()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->o:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->p:Landroid/widget/LinearLayout$LayoutParams;

    const-string v0, "\u5b8b\u4f53"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->h:Landroid/graphics/Typeface;

    new-instance v0, Lcom/adchina/android/ads/views/GifImageView;

    invoke-direct {v0, p1}, Lcom/adchina/android/ads/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->o:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    new-instance v1, Lcom/adchina/android/ads/views/z;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/z;-><init>(Lcom/adchina/android/ads/views/ContentView;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/adchina/android/ads/views/AdWebView;

    invoke-direct {v0, p1}, Lcom/adchina/android/ads/views/AdWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->m:Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setActionButtonView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->p:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    new-instance v1, Lcom/adchina/android/ads/views/ab;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/ab;-><init>(Lcom/adchina/android/ads/views/ContentView;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/ContentView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/controllers/AdViewController;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0}, Lcom/adchina/android/ads/GifEngine;->a()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    :cond_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->removeAllViews()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->o:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/views/ContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdWebView;->unregisterSensor()V

    return-void
.end method

.method static synthetic c(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/views/AdView;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->m:Lcom/adchina/android/ads/views/AdView;

    return-object v0
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/adchina/android/ads/views/animations/AnimationManager;->a(Lcom/adchina/android/ads/views/ContentView;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/adchina/android/ads/views/ContentView;->d:I

    return-void
.end method

.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/adchina/android/ads/views/aa;->b:Lcom/adchina/android/ads/views/aa;

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->c:Lcom/adchina/android/ads/views/aa;

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->setSuitableBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/ContentView;->h:Landroid/graphics/Typeface;

    return-void
.end method

.method protected final a(Lcom/adchina/android/ads/GifEngine;)V
    .locals 2

    invoke-direct {p0}, Lcom/adchina/android/ads/views/ContentView;->b()V

    iput-object p1, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->a(Lcom/adchina/android/ads/GifEngine;)V

    sget-object v0, Lcom/adchina/android/ads/views/aa;->c:Lcom/adchina/android/ads/views/aa;

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->c:Lcom/adchina/android/ads/views/aa;

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/ContentView;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/controllers/AdViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/adchina/android/ads/views/ContentView;->a()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?1=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&sensor=1&display=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setController(Lcom/adchina/android/ads/controllers/BaseController;)V

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setLoaded(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/adchina/android/ads/views/animations/AnimationManager;->a(Lcom/adchina/android/ads/views/ContentView;)V

    return-void
.end method

.method protected final b(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-direct {p0}, Lcom/adchina/android/ads/views/ContentView;->b()V

    iput-object p1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/adchina/android/ads/views/aa;->b:Lcom/adchina/android/ads/views/aa;

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->c:Lcom/adchina/android/ads/views/aa;

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/ContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adchina/android/ads/views/ContentView;->m:Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v2}, Lcom/adchina/android/ads/views/AdView;->getaWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adchina/android/ads/views/ContentView;->m:Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v3}, Lcom/adchina/android/ads/views/AdView;->getaHeight()I

    move-result v3

    invoke-static {v1, p1, v2, v3}, Lcom/adchina/android/ads/Utils;->getBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->setSuitableBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/ContentView;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/adchina/android/ads/views/ContentView;->a()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?1=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&sensor=1&display=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->n:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setController(Lcom/adchina/android/ads/controllers/BaseController;)V

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdWebView;->setLoaded(Z)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->l:Lcom/adchina/android/ads/views/AdWebView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/adchina/android/ads/views/animations/AnimationManager;->a(Lcom/adchina/android/ads/views/ContentView;)V

    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/adchina/android/ads/views/aa;->a:Lcom/adchina/android/ads/views/aa;

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->c:Lcom/adchina/android/ads/views/aa;

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/ContentView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    iget v4, p0, Lcom/adchina/android/ads/views/ContentView;->e:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    iget v4, p0, Lcom/adchina/android/ads/views/ContentView;->d:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/adchina/android/ads/views/ContentView;->h:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/adchina/android/ads/views/ContentView;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v5, p0, Lcom/adchina/android/ads/views/ContentView;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/views/ContentView;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0}, Lcom/adchina/android/ads/GifEngine;->a()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/ContentView;->i:Lcom/adchina/android/ads/GifEngine;

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    iput p1, p0, Lcom/adchina/android/ads/views/ContentView;->e:I

    iget-object v0, p0, Lcom/adchina/android/ads/views/ContentView;->k:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/GifImageView;->setBackgroundColor(I)V

    return-void
.end method
