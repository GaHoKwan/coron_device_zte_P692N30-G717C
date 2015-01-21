.class public Lcom/adchina/android/ads/views/AdVideoPlayerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/view/SurfaceHolder;

.field private c:Landroid/view/SurfaceView;

.field private d:Landroid/widget/Button;

.field private e:Z

.field private f:Z

.field private g:Lcom/adchina/android/ads/views/GifImageView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->e:Z

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->f:Z

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->i:I

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->j:I

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->l:Z

    return-void
.end method

.method private b()V
    .locals 9

    const/16 v7, 0xd

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/high16 v4, 0x4280

    const/high16 v5, 0x4200

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->i:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->j:I

    iget v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->j:I

    iget v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setId(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    :cond_1
    invoke-static {p0, v4}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    if-nez v3, :cond_2

    new-instance v3, Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/adchina/android/ads/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/adchina/android/ads/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v3}, Lcom/adchina/android/ads/views/GifImageView;->bringToFront()V

    :cond_2
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v1, v3}, Lcom/adchina/android/ads/views/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v2

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->isExists(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_3
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDefaultLoadingGifPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adchina/android/ads/Utils;->loadAssetsInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/views/GifImageView;->a(Ljava/io/InputStream;)V

    :goto_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->bringToFront()V

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v2

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->isExists(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_4
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDefaultCloseImgPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    new-instance v2, Lcom/adchina/android/ads/views/r;

    invoke-direct {v2, p0}, Lcom/adchina/android/ads/views/r;-><init>(Lcom/adchina/android/ads/views/AdVideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-static {p0, v5}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v5}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    :cond_6
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getVideoHeight()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getVideoWidth()I

    move-result v1

    if-gtz v1, :cond_c

    :cond_7
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    mul-int/lit8 v1, v0, 0x4

    div-int/lit8 v1, v1, 0x3

    :goto_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    new-instance v1, Lcom/adchina/android/ads/views/s;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/s;-><init>(Lcom/adchina/android/ads/views/AdVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/views/GifImageView;->a(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_b
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getVideoWidth()I

    move-result v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getVideoWidth()I

    move-result v2

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v0, v2

    invoke-static {p0, v0}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_2
.end method

.method private c()V
    .locals 3

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->l:Z

    invoke-static {}, Lcom/adchina/android/ads/controllers/s;->a()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ArgName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/adchina/android/ads/controllers/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->e:Z

    invoke-static {}, Lcom/adchina/android/ads/controllers/s;->a()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/s;->t()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->finish()V

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->e:Z

    invoke-static {}, Lcom/adchina/android/ads/controllers/s;->a()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/s;->d()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAdWindowBackgroundColor()I

    move-result v1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getAdWindowBackgroundOpacity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adchina/android/ads/Utils;->setWindowBackgroundColor(Landroid/view/Window;II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b()V

    if-eqz p1, :cond_0

    const-string v0, "Seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->e:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/adchina/android/ads/controllers/s;->a()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/s;->c()V

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->e:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->finish()V

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->c:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adchina/android/ads/controllers/s;->a()Lcom/adchina/android/ads/controllers/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/s;->b()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "Seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    const-string v0, "Seek"

    iget v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ADUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->g:Lcom/adchina/android/ads/views/GifImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/views/GifImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->b:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdChinaError"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdChinaError"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AdChinaError"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
