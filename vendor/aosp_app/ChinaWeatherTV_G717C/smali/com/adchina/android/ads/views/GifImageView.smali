.class public Lcom/adchina/android/ads/views/GifImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/adchina/android/ads/GifEngine;

.field private b:Ljava/util/Timer;

.field private c:Landroid/os/Handler;

.field private d:F

.field private e:Z

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/GifImageView;->e:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/GifImageView;->e:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/GifImageView;->e:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/GifImageView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/GifEngine;->a([B)Lcom/adchina/android/ads/GifEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    invoke-static {p1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    invoke-static {p1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    invoke-static {p1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    throw v0
.end method

.method private c()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->c:Landroid/os/Handler;

    return-void
.end method

.method private d()V
    .locals 6

    const/16 v0, 0x64

    iget v1, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const-wide v0, 0x408f400000000000L

    iget v2, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    move v4, v0

    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->b:Ljava/util/Timer;

    new-instance v1, Lcom/adchina/android/ads/views/al;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/al;-><init>(Lcom/adchina/android/ads/views/GifImageView;)V

    const-wide/16 v2, 0x0

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_0
    move v4, v0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v1}, Lcom/adchina/android/ads/GifEngine;->d()Lcom/adchina/android/ads/g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v1}, Lcom/adchina/android/ads/GifEngine;->d()Lcom/adchina/android/ads/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adchina/android/ads/g;->a()I

    move-result v1

    if-gt v1, v0, :cond_1

    :goto_0
    const/high16 v1, 0x447a

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v1, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/GifImageView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0}, Lcom/adchina/android/ads/GifEngine;->b()I

    move-result v1

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0}, Lcom/adchina/android/ads/GifEngine;->c()I

    move-result v0

    :cond_0
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, Lcom/adchina/android/ads/Utils;->setSuitableBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0}, Lcom/adchina/android/ads/GifEngine;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->f()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/GifImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/GifImageView;->b(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->e()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->f()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/adchina/android/ads/Utils;->setSuitableBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/adchina/android/ads/GifEngine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->f()V

    iput-object p1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->e()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->f()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->d()V

    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->f()V

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/GifImageView;->b(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->e()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->f()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    const/16 v0, 0x64

    const/high16 v7, 0x3f80

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v1}, Lcom/adchina/android/ads/GifEngine;->d()Lcom/adchina/android/ads/g;

    move-result-object v3

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v1}, Lcom/adchina/android/ads/GifEngine;->e()V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->f()V

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v1}, Lcom/adchina/android/ads/GifEngine;->b()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v1}, Lcom/adchina/android/ads/GifEngine;->c()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-boolean v1, p0, Lcom/adchina/android/ads/views/GifImageView;->e:Z

    if-nez v1, :cond_3

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->a()I

    move-result v1

    if-gt v1, v0, :cond_7

    :goto_1
    const/high16 v1, 0x447a

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v1, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iput v0, p0, Lcom/adchina/android/ads/views/GifImageView;->d:F

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/GifImageView;->d()V

    :cond_3
    :goto_2
    return v12

    :cond_4
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget-object v2, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v2}, Lcom/adchina/android/ads/GifEngine;->b()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget-object v5, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v5}, Lcom/adchina/android/ads/GifEngine;->c()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v1, v2

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_3
    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->c()I

    move-result v5

    mul-int/2addr v5, v1

    iget-object v6, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v6}, Lcom/adchina/android/ads/GifEngine;->b()I

    move-result v6

    div-int/2addr v5, v6

    iget-object v6, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->d()I

    move-result v6

    mul-int/2addr v6, v2

    iget-object v7, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v7}, Lcom/adchina/android/ads/GifEngine;->c()I

    move-result v7

    div-int/2addr v6, v7

    iget-object v7, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/2addr v1, v9

    iget-object v9, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v9}, Lcom/adchina/android/ads/GifEngine;->b()I

    move-result v9

    div-int/2addr v1, v9

    add-int/2addr v1, v5

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v2, v9

    iget-object v9, p0, Lcom/adchina/android/ads/views/GifImageView;->a:Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v9}, Lcom/adchina/android/ads/GifEngine;->c()I

    move-result v9

    div-int/2addr v2, v9

    add-int/2addr v2, v6

    invoke-direct {v8, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Lcom/adchina/android/ads/g;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v7, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/GifImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
