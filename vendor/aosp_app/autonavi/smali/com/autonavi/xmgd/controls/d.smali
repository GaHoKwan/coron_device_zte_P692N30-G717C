.class public Lcom/autonavi/xmgd/controls/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljavax/microedition/khronos/egl/EGLContext;

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLConfig;

.field private g:Ljavax/microedition/khronos/opengles/GL10;

.field private h:Ljavax/microedition/khronos/egl/EGLSurface;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lcom/autonavi/xmgd/controls/d;->a:I

    iput v3, p0, Lcom/autonavi/xmgd/controls/d;->b:I

    iput-boolean v6, p0, Lcom/autonavi/xmgd/controls/d;->i:Z

    iput v6, p0, Lcom/autonavi/xmgd/controls/d;->j:I

    iput v6, p0, Lcom/autonavi/xmgd/controls/d;->k:I

    iput v6, p0, Lcom/autonavi/xmgd/controls/d;->l:I

    iput v6, p0, Lcom/autonavi/xmgd/controls/d;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->n:Landroid/graphics/Bitmap;

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[EglProvider] EglProvider"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-array v0, v7, [I

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v0, 0x5

    new-array v2, v0, [I

    const/16 v0, 0x3025

    aput v0, v2, v6

    const/16 v0, 0x10

    aput v0, v2, v4

    const/16 v0, 0x3040

    aput v0, v2, v7

    iget v0, p0, Lcom/autonavi/xmgd/controls/d;->b:I

    aput v0, v2, v8

    const/16 v0, 0x3038

    aput v0, v2, v3

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v5, v4, [I

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget-object v0, v3, v6

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v0, v8, [I

    iget v1, p0, Lcom/autonavi/xmgd/controls/d;->a:I

    aput v1, v0, v6

    aput v7, v0, v4

    const/16 v1, 0x3038

    aput v1, v0, v7

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/d;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->c:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->g:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private b(IIII)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v8, 0x0

    mul-int v0, p3, p4

    new-array v9, v0, [I

    mul-int v0, p3, p4

    new-array v10, v0, [I

    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->g:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v1, v8

    :goto_0
    if-ge v1, p4, :cond_1

    move v0, v8

    :goto_1
    if-ge v0, p3, :cond_0

    mul-int v2, v1, p3

    add-int/2addr v2, v0

    aget v2, v9, v2

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v2, 0x10

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    const v5, -0xff0100

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    sub-int v3, p4, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p3

    add-int/2addr v3, v0

    aput v2, v10, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "/sdcard/autonavidata60tob/test.png"

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/controls/d;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/d;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/d;->i:Z

    iput p1, p0, Lcom/autonavi/xmgd/controls/d;->j:I

    iput p2, p0, Lcom/autonavi/xmgd/controls/d;->k:I

    iput p3, p0, Lcom/autonavi/xmgd/controls/d;->l:I

    iput p4, p0, Lcom/autonavi/xmgd/controls/d;->m:I

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/d;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/d;->i:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/controls/d;->j:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/controls/d;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/controls/d;->l:I

    iget v1, p0, Lcom/autonavi/xmgd/controls/d;->j:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/autonavi/xmgd/controls/d;->m:I

    iget v2, p0, Lcom/autonavi/xmgd/controls/d;->k:I

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/autonavi/xmgd/controls/d;->j:I

    iget v3, p0, Lcom/autonavi/xmgd/controls/d;->k:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/autonavi/xmgd/controls/d;->b(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/d;->n:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/d;->i:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->n:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iput-object v5, p0, Lcom/autonavi/xmgd/controls/d;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->c:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/d;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iput-object v5, p0, Lcom/autonavi/xmgd/controls/d;->c:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/d;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v5, p0, Lcom/autonavi/xmgd/controls/d;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method
