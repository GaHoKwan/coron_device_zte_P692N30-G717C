.class public Lcom/android/server/wm/c;
.super Lcom/android/server/wm/a;


# instance fields
.field a:I

.field b:Lcom/android/server/wm/WindowManagerService;

.field final c:Landroid/view/SurfaceSession;

.field d:Landroid/view/Surface;

.field e:Landroid/view/animation/Animation;

.field final f:Landroid/view/animation/Transformation;

.field final g:[F

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Landroid/graphics/Matrix;

.field private l:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/a;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wm/c;->i:Z

    iput-boolean v0, p0, Lcom/android/server/wm/c;->h:Z

    iput-object v1, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/c;->f:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/c;->k:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/c;->g:[F

    iput-object p1, p0, Lcom/android/server/wm/c;->b:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/c;->c:Landroid/view/SurfaceSession;

    iget-object v0, p0, Lcom/android/server/wm/c;->b:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/c;->l:I

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/c;->j:I

    iput p4, p0, Lcom/android/server/wm/c;->a:I

    return-void
.end method

.method private a(II)I
    .locals 1

    sub-int v0, p2, p1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/c;->a(II)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/c;->l:I

    iget v2, p0, Lcom/android/server/wm/c;->j:I

    iget-object v3, p0, Lcom/android/server/wm/c;->k:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/c;->a(IIILandroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/server/wm/c;->k:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/c;->a(Landroid/graphics/Matrix;FLandroid/view/Surface;)V

    return-void
.end method

.method private a(IIILandroid/graphics/Matrix;)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x42b4

    invoke-virtual {p4, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v0, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x4334

    invoke-virtual {p4, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x4387

    invoke-virtual {p4, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v0, p2

    invoke-virtual {p4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/view/Surface;Landroid/view/animation/Transformation;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/c;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/android/server/wm/c;->g:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/Surface;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/Surface;->setMatrix(FFFF)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Surface;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Matrix;FLandroid/view/Surface;)V
    .locals 5

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/c;->g:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/view/Surface;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/c;->g:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/view/Surface;->setMatrix(FFFF)V

    invoke-virtual {p3, p2}, Landroid/view/Surface;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/c;->i:Z

    return v0
.end method

.method public a(J)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/c;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/c;->h:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/c;->b(J)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/c;->i:Z

    iput-boolean v0, p0, Lcom/android/server/wm/c;->h:Z

    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public b(J)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/c;->f:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/c;->i:Z

    return v0
.end method

.method public c()V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/c;->b:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/c;->b:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/wm/c;->j:I

    :goto_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/c;->l:I

    :goto_2
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/c;->c:Landroid/view/SurfaceSession;

    const-string v2, "MultiWindowAnimation"

    iget v3, p0, Lcom/android/server/wm/c;->l:I

    iget v4, p0, Lcom/android/server/wm/c;->j:I

    const/4 v5, -0x1

    const v6, 0x30004

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    :goto_3
    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/wm/c;->l:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/server/wm/c;->j:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    iget-object v0, p0, Lcom/android/server/wm/c;->b:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/c;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MultiWindowAnimation"

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/c;->i:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/c;->i:Z

    iget v0, p0, Lcom/android/server/wm/c;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/c;->b:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/wm/b;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/android/server/wm/c;->l:I

    iget v2, p0, Lcom/android/server/wm/c;->j:I

    iget v3, p0, Lcom/android/server/wm/c;->l:I

    iget v4, p0, Lcom/android/server/wm/c;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/c;->a:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/c;->b:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/server/wm/b;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/c;->b()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/c;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/c;->f:Landroid/view/animation/Transformation;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/c;->a(Landroid/view/Surface;Landroid/view/animation/Transformation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/c;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    goto :goto_0
.end method
