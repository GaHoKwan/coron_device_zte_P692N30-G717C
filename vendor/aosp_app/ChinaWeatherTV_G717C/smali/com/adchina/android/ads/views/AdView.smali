.class public Lcom/adchina/android/ads/views/AdView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

.field private mContentView:Lcom/adchina/android/ads/views/ContentView;

.field private mOriginVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    const/16 v0, 0x8

    iput v0, p0, Lcom/adchina/android/ads/views/AdView;->mOriginVisibility:I

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/AdView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    const/16 v0, 0x8

    iput v0, p0, Lcom/adchina/android/ads/views/AdView;->mOriginVisibility:I

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/AdView;->initView(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/adchina/android/ads/views/AdView;->loadAdAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    const/16 v0, 0x8

    iput v0, p0, Lcom/adchina/android/ads/views/AdView;->mOriginVisibility:I

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/AdView;->initView(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adchina/android/ads/views/AdView;->startBannerAd(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/AdEngine;->initAdEngine(Landroid/content/Context;)Lcom/adchina/android/ads/AdEngine;

    new-instance v0, Lcom/adchina/android/ads/views/ContentView;

    invoke-direct {v0, p1, p0}, Lcom/adchina/android/ads/views/ContentView;-><init>(Landroid/content/Context;Lcom/adchina/android/ads/views/AdView;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/views/ContentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/views/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private loadAdAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-string v0, "adspace_id"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoStart"

    invoke-interface {p2, v3, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "log"

    invoke-interface {p2, v3, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adchina/android/ads/views/AdView;->startBannerAd(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private startBannerAd(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/adchina/android/ads/views/AdView;->setAdSpaceId(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/adchina/android/ads/AdManager;->setLogMode(Z)V

    new-instance v0, Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-direct {v0, p1, p2}, Lcom/adchina/android/ads/controllers/AdViewController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/views/AdView;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->r()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getaHeight()I
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->l()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getaWidth()I
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->k()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->h()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const-string v0, "AdView onDetachedFromWindow"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/controllers/AdViewController;->b(Lcom/adchina/android/ads/views/AdView;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/adchina/android/ads/views/AdView;->mOriginVisibility:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/views/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->b()V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdView;->mOriginVisibility:I

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/adchina/android/ads/views/AdView;->mOriginVisibility:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a()V

    goto :goto_1
.end method

.method public setAdBannerListener(Lcom/adchina/android/ads/AdBannerListener;)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/AdBannerListener;)V

    return-void
.end method

.method public setAdSpaceId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setContent(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setContent(Lcom/adchina/android/ads/GifEngine;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(Lcom/adchina/android/ads/GifEngine;)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContent([B)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/adchina/android/ads/GifEngine;->a([B)Lcom/adchina/android/ads/GifEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/ContentView;->a(Lcom/adchina/android/ads/GifEngine;)V

    :cond_0
    return-void
.end method

.method public setContent_html5(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContent_ihtml5(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setController(Lcom/adchina/android/ads/controllers/AdViewController;)V
    .locals 1

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(Lcom/adchina/android/ads/controllers/AdViewController;)V

    return-void
.end method

.method public setDefaultImage(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdView;->setDefaultImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setPenColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mContentView:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/ContentView;->a(I)V

    :cond_0
    return-void
.end method

.method public setaHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->b(I)V

    :cond_0
    return-void
.end method

.method public setaWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0, p0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/views/AdView;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->r()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdView;->mAdViewController:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/AdViewController;->s()V

    :cond_0
    return-void
.end method
