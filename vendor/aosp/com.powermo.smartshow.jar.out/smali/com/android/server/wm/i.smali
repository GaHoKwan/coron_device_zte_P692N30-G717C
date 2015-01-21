.class public Lcom/android/server/wm/i;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/android/server/wm/MagnificationSpec;

.field d:Lcom/android/server/wm/WindowManagerService;

.field e:I

.field f:I

.field g:Lcom/android/server/FullSmartShowContext;

.field h:Lcom/android/server/wm/WindowState;

.field i:Lcom/android/server/wm/WmStub;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WmStub;)V
    .locals 6

    const/16 v5, 0x835

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/MagnificationSpec;

    invoke-direct {v0}, Lcom/android/server/wm/MagnificationSpec;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", should be WindowState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x837

    if-ne v0, v3, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/i;->b:Z

    iget-boolean v0, p0, Lcom/android/server/wm/i;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v5, :cond_5

    iput v1, p0, Lcom/android/server/wm/i;->f:I

    :goto_1
    iput v1, p0, Lcom/android/server/wm/i;->e:I

    :cond_2
    iput-object p3, p0, Lcom/android/server/wm/i;->i:Lcom/android/server/wm/WmStub;

    iput-object p2, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    invoke-static {}, Landroid/content/SmartShowContextWrapper;->getDefaultContext()Landroid/content/SmartShowContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SmartShowContextWrapper;->getBaseContext()Landroid/content/SmartShowContext;

    move-result-object v0

    check-cast v0, Lcom/android/server/FullSmartShowContext;

    iput-object v0, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x514

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/i;->a:Z

    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iput v2, p0, Lcom/android/server/wm/i;->f:I

    goto :goto_1
.end method

.method private a(IIIILandroid/graphics/Rect;)F
    .locals 5

    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-ge v0, v1, :cond_0

    mul-int v0, p2, p3

    div-int v1, v0, p1

    int-to-float v0, p3

    int-to-float v2, p1

    div-float/2addr v0, v2

    move v2, p3

    :goto_0
    sub-int v3, p4, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p3, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v1, v3

    invoke-virtual {p5, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v0

    :cond_0
    mul-int v0, p1, p4

    div-int v1, v0, p2

    int-to-float v0, p4

    int-to-float v2, p2

    div-float/2addr v0, v2

    move v2, v1

    move v1, p4

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x838

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    const v1, 0x493e0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public a(Landroid/graphics/Region;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasEnableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/i;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    invoke-virtual {v0}, Lcom/android/server/wm/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v0, v0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v0, v0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v1, v1, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10

    const/4 v9, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x838

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/i;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    iget v1, p0, Lcom/android/server/wm/i;->f:I

    iget v2, p0, Lcom/android/server/wm/i;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FullSmartShowContext;->getSmartBarRect(II)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/wm/i;->i:Lcom/android/server/wm/WmStub;

    iget v1, v1, Lcom/android/server/wm/WmStub;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDstDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowMagnificationSpecLocked()Lcom/android/server/wm/MagnificationSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v2, v0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    iget v3, v0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    iget v0, v0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/i;->a:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v6

    if-eq v1, v0, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {v2, v1}, Lcom/android/server/FullSmartShowContext;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {v2, v0}, Lcom/android/server/FullSmartShowContext;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/i;->a(IIIILandroid/graphics/Rect;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDefaultExternalDisplay()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/i;->i:Lcom/android/server/wm/WmStub;

    iget v4, v4, Lcom/android/server/wm/WmStub;->e:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    :goto_1
    and-int/lit16 v1, v6, 0x600

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {p0}, Lcom/android/server/wm/i;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/android/server/FullSmartShowContext;->isForcedOrientation(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/i;->a(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getHeightOfStatusBar()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v2, v1, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    iget-object v3, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getHeightOfStatusBar()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x4000

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, v1, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    :cond_6
    invoke-virtual {p3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/FullSmartShowContext;->adjustFrames(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDefaultExternalDisplay()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/wm/i;->i:Lcom/android/server/wm/WmStub;

    iget v1, v1, Lcom/android/server/wm/WmStub;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    goto :goto_2
.end method

.method a(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v3, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public b()V
    .locals 7

    const/16 v1, 0x7db

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-direct {p0}, Lcom/android/server/wm/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/FullSmartShowContext;->setInputMethodRect(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDefaultExternalDisplay()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/FullSmartShowContext;->getInputMethodVariables()[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v0, v2, v4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    aget v0, v2, v6

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    cmpl-float v3, v1, v0

    if-lez v3, :cond_2

    move v1, v0

    :cond_2
    const/high16 v0, 0x3f80

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    const-string v0, "WindowSmartShowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " it\'s scaleRate should not >1.0f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " dstWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, v2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " dstHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    aget v3, v2, v5

    iget-object v4, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_4

    aget v3, v2, v5

    iget-object v4, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_4

    aget v0, v2, v5

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    const/4 v5, 0x1

    aget v2, v2, v5

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    invoke-virtual {v3, v1, v4, v0}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowMagnificationSpecLocked()Lcom/android/server/wm/MagnificationSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget v2, v0, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    iget v3, v0, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    iget v0, v0, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/MagnificationSpec;->initialize(FFF)V

    goto/16 :goto_0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAppSmartShowData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/android/server/wm/MagnificationSpec;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/i;->c:Lcom/android/server/wm/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->hasEnableMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindowLw(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindowLw(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasEnableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalTop:I

    if-ge v1, v2, :cond_0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalLeft:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/i;->g:Lcom/android/server/FullSmartShowContext;

    const-string v1, "SMALLEST_DISPLAY_NEVER"

    invoke-virtual {p0}, Lcom/android/server/wm/i;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FullSmartShowContext;->isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->hasEnableMultiWindow()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/i;->a:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x838

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/i;->d:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFloatingWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/i;->b:Z

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/i;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
