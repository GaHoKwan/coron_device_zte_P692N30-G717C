.class public Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;
.super Ljava/lang/Object;
.source "PanoramaDrawer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaDrawer"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvasHeight:I

.field private mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

.field private mCanvasWidth:I

.field private mColorBitmap:Landroid/graphics/Bitmap;

.field private mColorDrawer:Z

.field private mFrameBufferID:[I

.field private mFree:Z

.field private mNormalBufferID:[I

.field private mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

.field private mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

.field private mTexCoordsBufferID:[I

.field private mTexEnvMode:[I

.field private mTextureID:[I

.field private mVertexBufferID:[I


# direct methods
.method public constructor <init>(ILcom/mediatek/gallery3d/panorama/PanoramaConfig;)V
    .locals 6
    .parameter "color"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorDrawer:Z

    .line 31
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFree:Z

    .line 33
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    .line 34
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    .line 35
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    .line 36
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    .line 37
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    .line 45
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexEnvMode:[I

    .line 60
    iput-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    iget v1, p2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    iget v2, p2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewHeight:I

    div-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 65
    iput-boolean v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorDrawer:Z

    .line 66
    iput-object p2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    .line 67
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewHeight:I

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getInstance(II)Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    .line 69
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    aput v5, v1, v4

    .line 70
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    aput v5, v1, v4

    .line 71
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    aput v5, v1, v4

    .line 72
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    aput v5, v1, v4

    .line 73
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    aput v5, v1, v4

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V
    .locals 4
    .parameter "bitmap"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorDrawer:Z

    .line 31
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFree:Z

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    .line 37
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexEnvMode:[I

    .line 48
    iput-object p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object p2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    .line 50
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewHeight:I

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getInstance(II)Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    .line 52
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    aput v3, v0, v2

    .line 53
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    aput v3, v0, v2

    .line 54
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    aput v3, v0, v2

    .line 55
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    aput v3, v0, v2

    .line 56
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    aput v3, v0, v2

    .line 57
    return-void
.end method

.method private beginRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 7
    .parameter "canvas"
    .parameter "texture"

    .prologue
    const v1, 0x8d40

    const/4 v5, 0x0

    .line 259
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->save()V

    .line 260
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 261
    .local v0, gl11ep:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    aget v2, v2, v5

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 262
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    invoke-static {v2, v3, v5}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 265
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getCanvasWidth()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasWidth:I

    .line 266
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getCanvasHeight()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasHeight:I

    .line 267
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v2

    const/16 v3, 0x2300

    const/16 v4, 0x2200

    iget-object v6, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexEnvMode:[I

    invoke-interface {v2, v3, v4, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 271
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 272
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 274
    :cond_1
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 276
    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    .line 277
    return-void
.end method

.method private checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 5
    .parameter "gl11ep"

    .prologue
    .line 289
    const v2, 0x8d40

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 290
    .local v1, status:I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 291
    const-string v0, ""

    .line 292
    .local v0, msg:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 315
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :pswitch_1
    const-string v0, "FRAMEBUFFER_FORMATS"

    .line 295
    goto :goto_0

    .line 297
    :pswitch_2
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    .line 298
    goto :goto_0

    .line 300
    :pswitch_3
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    .line 301
    goto :goto_0

    .line 303
    :pswitch_4
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    .line 304
    goto :goto_0

    .line 306
    :pswitch_5
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    .line 307
    goto :goto_0

    .line 309
    :pswitch_6
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    .line 310
    goto :goto_0

    .line 312
    :pswitch_7
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    .line 317
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void

    .line 292
    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private draw(Ljavax/microedition/khronos/opengles/GL11;FZ)V
    .locals 10
    .parameter "gl"
    .parameter "degree"
    .parameter "isBitmapTarget"

    .prologue
    .line 321
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 322
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v3, v3, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 326
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 327
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 328
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFovy:F

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3dcccccd

    const/high16 v3, 0x447a

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 331
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 332
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 333
    if-eqz p3, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCameraDistance:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 340
    :goto_0
    const v0, 0x8892

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 341
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 342
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 344
    const v0, 0x8892

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 345
    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 346
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 348
    const v0, 0x8892

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 349
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 350
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 352
    const v0, 0x8d65

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 353
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 354
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 355
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 357
    const/16 v0, 0x1702

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 358
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 361
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 362
    neg-float v0, p2

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mRotateDegree:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glRotatef(FFFF)V

    .line 363
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getVertexCount()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 364
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCameraDistance:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x4080

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    goto/16 :goto_0
.end method

.method private endRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 280
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 281
    .local v0, gl11ep:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const v1, 0x8d40

    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 282
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    iget-object v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexEnvMode:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 283
    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasWidth:I

    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasHeight:I

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 284
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 285
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restoreAll()V

    .line 286
    return-void
.end method

.method private pepareDataBuffer(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 9
    .parameter "gl"

    .prologue
    const v8, 0x88e4

    const/4 v7, -0x1

    const/4 v6, 0x1

    const v5, 0x8892

    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    aget v2, v2, v4

    if-ne v2, v7, :cond_0

    .line 202
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    invoke-static {v6, v2, v4}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 203
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    aget v2, v2, v4

    invoke-interface {p1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 204
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    aget v2, v2, v4

    if-ne v2, v7, :cond_1

    .line 209
    new-array v0, v6, [I

    .line 210
    .local v0, buffer:[I
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    invoke-static {v6, v2, v4}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 211
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    aget v2, v2, v4

    invoke-interface {p1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 212
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 216
    .end local v0           #buffer:[I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    aget v2, v2, v4

    if-ne v2, v7, :cond_2

    .line 217
    new-array v0, v6, [I

    .line 218
    .restart local v0       #buffer:[I
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    invoke-static {v6, v2, v4}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 219
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    aget v2, v2, v4

    invoke-interface {p1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 220
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaMesh:Lcom/mediatek/gallery3d/panorama/PanoramaMesh;

    iget-object v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v3, v3, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mOriginWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v4, v4, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mNewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaMesh;->getTexCoordsBuffer(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 223
    .local v1, texCoordsBuffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v5, v2, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 227
    .end local v0           #buffer:[I
    .end local v1           #texCoordsBuffer:Ljava/nio/FloatBuffer;
    :cond_2
    return-void
.end method

.method private prepareTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v6, 0x0

    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 230
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 231
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 232
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    aget v0, v0, v3

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 234
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorDrawer:Z

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    iput-object v6, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    iput-object v6, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    .line 247
    :cond_1
    const/16 v0, 0x2800

    invoke-interface {p1, v2, v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 249
    const/16 v0, 0x2801

    invoke-interface {p1, v2, v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 251
    const/16 v0, 0x2802

    invoke-interface {p1, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 253
    const/16 v0, 0x2803

    invoke-interface {p1, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 256
    :cond_2
    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private declared-synchronized readPixels(Ljavax/microedition/khronos/opengles/GL11;)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "gl"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    mul-int/2addr v1, v2

    new-array v9, v1, [I

    .line 149
    .local v9, b:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    mul-int/2addr v1, v2

    new-array v10, v1, [I

    .line 150
    .local v10, bt:[I
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    .line 151
    .local v8, ib:Ljava/nio/IntBuffer;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v22

    .line 153
    .local v22, start:J
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v4, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v5, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL11;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    .line 156
    .local v11, end:J
    const-string v1, "Gallery2/PanoramaDrawer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<readPixels> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v3, v3, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v3, v3, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], glReadPixels cost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v11, v22

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    if-ge v15, v1, :cond_1

    .line 159
    const/16 v16, 0x0

    .local v16, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    move/from16 v0, v16

    if-ge v0, v1, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    mul-int/2addr v1, v15

    add-int v1, v1, v16

    aget v18, v9, v1

    .line 161
    .local v18, pix:I
    shr-int/lit8 v1, v18, 0x10

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    .line 162
    .local v17, pb:I
    shl-int/lit8 v1, v18, 0x10

    const/high16 v2, 0xff

    and-int v20, v1, v2

    .line 163
    .local v20, pr:I
    const v1, -0xff0100

    and-int v1, v1, v18

    or-int v1, v1, v20

    or-int v19, v1, v17

    .line 164
    .local v19, pix1:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    sub-int/2addr v1, v15

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    mul-int/2addr v1, v2

    add-int v1, v1, v16

    aput v19, v10, v1

    .line 159
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 158
    .end local v17           #pb:I
    .end local v18           #pix:I
    .end local v19           #pix1:I
    .end local v20           #pr:I
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 167
    .end local v16           #j:I
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v13

    .line 168
    .local v13, end2:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 170
    .local v21, sb:Landroid/graphics/Bitmap;
    const-string v1, "Gallery2/PanoramaDrawer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<readPixels> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v3, v3, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mPanoramaConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v3, v3, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], covert buffer to bitmap cost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v13, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-object v21

    .line 148
    .end local v8           #ib:Ljava/nio/IntBuffer;
    .end local v9           #b:[I
    .end local v10           #bt:[I
    .end local v11           #end:J
    .end local v13           #end2:J
    .end local v15           #i:I
    .end local v21           #sb:Landroid/graphics/Bitmap;
    .end local v22           #start:J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized drawOnBitmap(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;F)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "canvas"
    .parameter "targetTexture"
    .parameter "degree"

    .prologue
    const/4 v8, 0x0

    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFree:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "Gallery2/PanoramaDrawer"

    const-string v2, "<drawOnBitmap> Has been free, not render, return null"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return-object v8

    .line 121
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 123
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->pepareDataBuffer(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 124
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->prepareTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->beginRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :try_start_3
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->draw(Ljavax/microedition/khronos/opengles/GL11;FZ)V

    .line 136
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->readPixels(Ljavax/microedition/khronos/opengles/GL11;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 141
    .local v8, res:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->endRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #res:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 128
    :catch_0
    move-exception v7

    .line 129
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "Gallery2/PanoramaDrawer"

    const-string v2, "<drawOnBitmap> beginRenderTarget fail"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->endRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized drawOnTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;F)V
    .locals 3
    .parameter "canvas"
    .parameter "targetTexture"
    .parameter "degree"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFree:Z

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "Gallery2/PanoramaDrawer"

    const-string v2, "<drawOnTexture> Has been free, not render, return"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 100
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->pepareDataBuffer(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 101
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->prepareTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->beginRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    :try_start_3
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->draw(Ljavax/microedition/khronos/opengles/GL11;FZ)V

    .line 113
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->endRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "Gallery2/PanoramaDrawer"

    const-string v2, "<drawOnTexture> beginRenderTarget fail"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->endRenderTarget(Lcom/android/gallery3d/ui/GLCanvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized freeResources()V
    .locals 3

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFree:Z

    .line 178
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->unloadTexture(I)Z

    .line 180
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteBuffer(I)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteBuffer(I)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteBuffer(I)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteFrameBufferOES(I)V

    .line 184
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mVertexBufferID:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mNormalBufferID:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 187
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTexCoordsBufferID:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mFrameBufferID:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_2
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorBitmap:Landroid/graphics/Bitmap;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->unloadTexture(I)Z

    .line 88
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mColorDrawer:Z

    .line 89
    iput-object p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 90
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->mTextureID:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
