.class public Lcom/android/server/wm/d;
.super Lcom/android/server/wm/a;


# instance fields
.field final a:Landroid/content/Context;

.field final b:I

.field c:Lcom/android/server/wm/ScreenRotationAnimation;

.field d:Lcom/android/server/wm/WindowManagerService;

.field final e:Landroid/view/SurfaceSession;

.field f:Lcom/android/server/wm/AppWindowToken;

.field g:F

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;IIZ)V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/wm/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/d;->h:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/wm/d;->g:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iput-object p1, p0, Lcom/android/server/wm/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/d;->d:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/d;->e:Landroid/view/SurfaceSession;

    iput p4, p0, Lcom/android/server/wm/d;->b:I

    iget-object v0, p0, Lcom/android/server/wm/d;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/d;->a:Landroid/content/Context;

    iget v5, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p3

    move/from16 v4, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;ZIIIII)V

    iput-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/view/animation/Transformation;
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    iget-object v0, p1, Lcom/android/server/wm/i;->h:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/IApplicationToken;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/d;->d:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "RotationAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-existing app token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iput-object v1, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/d;->d:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/d;->b:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/d;->e:Landroid/view/SurfaceSession;

    const-wide/16 v2, 0x2710

    iget v4, p0, Lcom/android/server/wm/d;->g:F

    iget v5, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JFII)Z

    return-void
.end method

.method public e()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/d;->d:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/d;->b:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteRotation:I

    iget-object v2, p0, Lcom/android/server/wm/d;->e:Landroid/view/SurfaceSession;

    const-wide/16 v3, 0x2710

    iget v5, p0, Lcom/android/server/wm/d;->g:F

    iget v6, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z

    goto :goto_0
.end method

.method public f()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/d;->c:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/d;->f:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, v4, :cond_4

    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
