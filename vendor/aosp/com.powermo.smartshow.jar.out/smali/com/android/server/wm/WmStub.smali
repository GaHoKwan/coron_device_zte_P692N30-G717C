.class public Lcom/android/server/wm/WmStub;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/IWmSmartShowStub;


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_SWITCH:Z = false

.field public static final SMALL_WINDOW_HEIGHT:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "WmStub"


# instance fields
.field a:Ljava/util/ArrayList;

.field final b:Ljava/util/ArrayList;

.field public c:Z

.field d:Lcom/android/server/wm/DisplayContent;

.field public e:I

.field f:I

.field g:Lcom/android/server/wm/e;

.field final h:Ljava/util/HashMap;

.field final i:Ljava/util/HashMap;

.field private j:Landroid/content/Context;

.field private k:Lcom/android/server/StubFullSmartShowContext;

.field private l:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/FullSmartShowContext;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wm/WmStub;->e:I

    iput-boolean v0, p0, Lcom/android/server/wm/WmStub;->c:Z

    iput v0, p0, Lcom/android/server/wm/WmStub;->f:I

    iput-object p3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    check-cast p2, Lcom/android/server/StubFullSmartShowContext;

    iput-object p2, p0, Lcom/android/server/wm/WmStub;->k:Lcom/android/server/StubFullSmartShowContext;

    iput-object p1, p0, Lcom/android/server/wm/WmStub;->j:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/wm/WmStub;->i:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wm/WmStub;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/wm/WmStub;->h:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wm/WmStub;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Rect;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WmStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find display content for display:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getVirtualDisplayContentLocked(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "WmStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find virtual display:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/wm/VirtualDisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iput p2, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/DisplayInfo;->logicalLeft:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/DisplayInfo;->logicalTop:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a(Landroid/graphics/Rect;II)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->b()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WmStub;->k:Lcom/android/server/StubFullSmartShowContext;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/StubFullSmartShowContext;->getDstDisplayId(ILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->b()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDstDisplayId()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v2, v2, 0xc8

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->k:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v3, v1}, Lcom/android/server/StubFullSmartShowContext;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_1

    :cond_0
    iput v0, p0, Lcom/android/server/wm/WmStub;->e:I

    :goto_0
    return v0

    :cond_1
    sub-int v0, p2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v0, v3, :cond_2

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/server/wm/WmStub;->e:I

    :goto_1
    iget v0, p0, Lcom/android/server/wm/WmStub;->e:I

    goto :goto_0

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/server/wm/WmStub;->e:I

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/android/server/wm/WmStub;->e:I

    iget v0, p0, Lcom/android/server/wm/WmStub;->e:I

    goto :goto_0
.end method

.method public a(Landroid/view/IApplicationToken;)I
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WmStub;->i:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "WmStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-existing app token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/display/DisplayManagerService;->getParentForDisplay(I)I

    move-result v5

    if-gez v5, :cond_1

    if-lez v4, :cond_1

    move v1, v0

    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->c()Lcom/android/server/wm/e;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/wm/e;->a(IIZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->tryToRotateRemoteDisplayForAppLocked(Lcom/android/server/wm/AppWindowToken;)I

    move-result v0

    if-eqz v1, :cond_5

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->c()Lcom/android/server/wm/e;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/e;->a(Landroid/view/IApplicationToken;IZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->c()Lcom/android/server/wm/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/e;->b(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionFromWindowManager()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->c()Lcom/android/server/wm/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/e;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a()Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->d:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WmStub;->d:Lcom/android/server/wm/DisplayContent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->d:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WmStub;->i:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSmartShowData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/i;

    invoke-virtual {v1}, Lcom/android/server/wm/i;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->updateWindowDisplay()V

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;ZIZ)V
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WmStub;->i:Ljava/util/HashMap;

    monitor-enter v5

    if-lez v4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WmStub;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensExtLocked(Ljava/util/List;)V

    if-nez p2, :cond_3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v3, v7, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/WmStub;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    if-eqz p4, :cond_b

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WmStub;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    move v1, v2

    :goto_4
    if-ge v1, v4, :cond_9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_8
    invoke-virtual {v0, p3}, Lcom/android/server/wm/AppWindowToken;->setDisplayId(I)V

    iget-object v2, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0, p3, p2, p4}, Lcom/android/server/wm/WindowManagerService;->switchAppToDisplayLocked(Lcom/android/server/wm/AppWindowToken;IZZ)I

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    if-lez p3, :cond_a

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->checkRemoteRotationIfNeededLocked(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->updateInputWindows()V

    :goto_6
    monitor-exit v5

    goto/16 :goto_0

    :cond_b
    const-string v0, "WmStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch window: can not start to switch when other app transition is happening.  toBottom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " displayId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " force "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_c
    move v0, v1

    goto :goto_3
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WmStub;->c:Z

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x2000

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustLayer(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1}, Lcom/android/server/wm/i;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustTouchRegion(Ljava/lang/Object;Landroid/graphics/Region;)V
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/i;->a(Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Rect;II)I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/WmStub;->f:I

    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->b()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->b()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->refreshScreen(I)V

    :cond_1
    iput p2, p0, Lcom/android/server/wm/WmStub;->f:I

    iget v0, p0, Lcom/android/server/wm/WmStub;->e:I

    return v0
.end method

.method public b()Lcom/android/server/wm/WindowState;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->a()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getInputMethodTarget(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/IApplicationToken;)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/wm/WmStub;->i:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "WmStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update Application\'s source display: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateSrcDisplayId()V

    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->updateWindowDisplay()V

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public beginComputeFrame(Ljava/lang/Object;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/wm/i;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/android/server/wm/e;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->g:Lcom/android/server/wm/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WmStub;->k:Lcom/android/server/StubFullSmartShowContext;

    invoke-virtual {v0}, Lcom/android/server/StubFullSmartShowContext;->a()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/wm/e;

    iget-object v1, p0, Lcom/android/server/wm/WmStub;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/e;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;)V

    iput-object v0, p0, Lcom/android/server/wm/WmStub;->g:Lcom/android/server/wm/e;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WmStub;->g:Lcom/android/server/wm/e;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/server/wm/f;

    iget-object v1, p0, Lcom/android/server/wm/WmStub;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WmStub;->l:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/f;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;)V

    iput-object v0, p0, Lcom/android/server/wm/WmStub;->g:Lcom/android/server/wm/e;

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->b()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDstDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishComputeFrame(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1}, Lcom/android/server/wm/i;->b()V

    :cond_0
    return-void
.end method

.method public synthetic getSmartShowAnimation()Lcom/android/server/wm/ISmartShowAnimation;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WmStub;->c()Lcom/android/server/wm/e;

    move-result-object v0

    return-object v0
.end method

.method public getWindowMagnificationSpec(Ljava/lang/Object;)Lcom/android/server/wm/MagnificationSpec;
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1}, Lcom/android/server/wm/i;->d()Lcom/android/server/wm/MagnificationSpec;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClipNeeded(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WmStub;->c:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/server/wm/i;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1}, Lcom/android/server/wm/i;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public isFloatingWindow(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1}, Lcom/android/server/wm/i;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartBar(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/i;

    invoke-virtual {p1}, Lcom/android/server/wm/i;->g()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
