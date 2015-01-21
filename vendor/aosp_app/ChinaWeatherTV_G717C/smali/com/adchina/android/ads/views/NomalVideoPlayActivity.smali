.class public Lcom/adchina/android/ads/views/NomalVideoPlayActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/media/MediaPlayer;

.field b:Landroid/view/SurfaceView;

.field c:Landroid/view/SurfaceHolder;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/Button;

.field private i:Lcom/adchina/android/ads/views/GifImageView;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Z

.field private m:Landroid/net/Uri;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->k:I

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->l:Z

    return-void
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->b:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v4, v4}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    :goto_1
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a(II)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a(II)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x11

    const/4 v6, -0x2

    const/high16 v5, 0x4280

    const/high16 v4, 0x4200

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->d:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->setContentView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const-string v0, "Seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->k:I

    :cond_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->m:Landroid/net/Uri;

    :cond_3
    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->m:Landroid/net/Uri;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->b:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->c:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->c:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    if-nez v0, :cond_4

    new-instance v0, Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v5}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->isExists(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDefaultLoadingGifPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->a(Ljava/io/InputStream;)V

    :goto_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->j:Landroid/widget/TextView;

    if-nez v0, :cond_6

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->j:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->j:Landroid/widget/TextView;

    const-string v1, "  \u6b63\u5728\u7f13\u51b2..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    if-nez v0, :cond_8

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->isExists(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_7
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDefaultCloseImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/adchina/android/ads/views/am;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/am;-><init>(Lcom/adchina/android/ads/views/NomalVideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/adchina/android/ads/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getLoadingImg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->a(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->h:Landroid/widget/Button;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getCloseImg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->i:Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->k:I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->l:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iget v2, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->k:I

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

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

    iput v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->k:I

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->k:I

    const-string v0, "Seek"

    iget v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->m:Landroid/net/Uri;

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->c:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/NomalVideoPlayActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
