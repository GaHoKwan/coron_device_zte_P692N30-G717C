.class public Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;
.super Lcom/android/server/StubFullSmartShowContext;


# static fields
.field public static MAX_LOCAL_SCREEN_COUNT:I

.field public static MAX_SCREEN_COUNT:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/String;


# instance fields
.field a:I

.field b:Z

.field private j:I

.field private k:Landroid/content/Context;

.field private l:I

.field private m:Landroid/hardware/display/DisplayManager;

.field private n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

.field private o:[I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/Rect;

.field private s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field private t:[I

.field private final u:Ljava/util/HashMap;

.field private v:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v4, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_SCREEN_COUNT:I

    sput v3, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    const-string v0, "FullSmartShowContextImpl"

    sput-object v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->i:Ljava/lang/String;

    sput v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->f:I

    sput v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->e:I

    sput v3, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->h:I

    sput v4, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->g:I

    sput v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->c:I

    sput v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/StubFullSmartShowContext;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->r:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-boolean v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->u:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    iput-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->k:Landroid/content/Context;

    iput v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a:I

    iput-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->m:Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->r:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    aput v3, v0, v1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->o:[I

    return-void
.end method

.method private d(I)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->f:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    :cond_2
    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->h:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    sget v0, Lcom/powermo/smartshow/frameworks/d;->ANIMATION_LEVEL:I

    return v0
.end method

.method public a(I)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->g(I)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->k:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/content/res/Configuration;Z)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Landroid/content/res/Configuration;Z)V

    return-void
.end method

.method public a(Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    return-void
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGlobalOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFocusExcludeRegion(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method public adjustFrames(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->j:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/ad;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->ENABLE_IME_FLOATING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowMagnificationSpecLocked()Lcom/android/server/wm/MagnificationSpec;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowMagnificationSpecLocked()Lcom/android/server/wm/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    iget v4, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->j:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    const/16 v5, 0x10

    if-ne v0, v5, :cond_2

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    add-int/2addr v4, v5

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget v4, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->l:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    sub-int v1, v4, v1

    const/16 v3, 0x30

    if-eq v0, v3, :cond_3

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public allowIMEFullscreen()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/powermo/smartshow/frameworks/d;->ENABLE_IME_FLOATING:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public allowMultiActiveInstance(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allowMultiInstance(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allowMultiWindow(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 1

    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_SCREEN_COUNT:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->h(I)Z

    move-result v0

    goto :goto_0
.end method

.method public beginLayout(IIII)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    add-int/2addr v2, p3

    invoke-direct {v1, p3, v4, v2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Landroid/graphics/Rect;)V

    :goto_0
    iget v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->l:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->q:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->j:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->p:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->ENABLE_IME_FLOATING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->p:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->q:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ah;->a(Landroid/graphics/Rect;II)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a:I

    :goto_1
    iput v4, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->l:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->j:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/2addr v2, p4

    invoke-direct {v1, v4, p4, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a:I

    goto :goto_1
.end method

.method public bindAudio(Ljava/lang/String;II)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method c()I
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public c(I)I
    .locals 2

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->c:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->d:I

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public canRotateRemoteDisplay(I)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(I)Z

    move-result v0

    return v0
.end method

.method public finishLayout()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    iget v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->j:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/powermo/smartshow/frameworks/ad;->a(Z)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->ENABLE_IME_FLOATING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->r:Landroid/graphics/Rect;

    iget v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->j:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->l:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ah;->b(Landroid/graphics/Rect;II)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a:I

    goto :goto_1
.end method

.method public getAmSmartShowStub()Lcom/android/server/am/IAmSmartShowStub;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/l;->b()Lcom/android/server/am/IAmSmartShowStub;

    move-result-object v0

    return-object v0
.end method

.method public getConfigDiff(IILjava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->a(IILjava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContextId(Landroid/os/IBinder;)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->getContextId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getCurrentRemoteDisplayConfiguration(I)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b(I)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRemoteDisplayRotation(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->c(I)I

    move-result v0

    return v0
.end method

.method public getDisplayId(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/l;->c(I)I

    move-result v0

    return v0
.end method

.method public getDisplayId(ILjava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->a(ILjava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->c:I

    aget v1, v1, v2

    if-ne v1, p1, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->u:Ljava/util/HashMap;

    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->d:I

    aget v1, v1, v2

    if-ne v1, p1, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->u:Ljava/util/HashMap;

    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1, p1}, Lcom/powermo/smartshow/frameworks/ad;->e(I)Landroid/graphics/Rect;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->m:Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_4

    sget-object v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->i:Ljava/lang/String;

    const-string v2, "invalid display manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->m:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    :goto_2
    if-nez v0, :cond_0

    sget-object v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public getDstDisplayId(ILjava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->b(ILjava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFocusedDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->b()I

    move-result v0

    return v0
.end method

.method public getFocusedScreen()I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->c()I

    move-result v0

    return v0
.end method

.method public getForcedRect(ILandroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 2

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->d(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->u:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getIdlerActivity(II)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/powermo/smartshow/frameworks/d;->getConfiguredIdler(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodVariables()[I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->b:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/powermo/smartshow/frameworks/d;->ENABLE_IME_FLOATING:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/ad;->d()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->o:[I

    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->o:[I

    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->o:[I

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->o:[I

    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->o:[I

    const/4 v1, 0x4

    iget v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->q:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->o:[I

    goto :goto_0
.end method

.method public getMaxLocalScreen()I
    .locals 1

    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    return v0
.end method

.method public getMaxScreen()I
    .locals 1

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->DISABLE_REMOTE_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_SCREEN_COUNT:I

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->getMode()I

    move-result v0

    return v0
.end method

.method public getParameter(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreen(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h(I)I

    move-result v0

    return v0
.end method

.method public getSmartBarRect(II)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->b(II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/am/a;

    invoke-direct {v0, p1}, Lcom/android/server/am/a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v1, v0}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->c(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpecialDisplayId(IZ)I
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->c:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->d:I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWmSmartShowStub()Lcom/android/server/wm/IWmSmartShowStub;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ah;->b()Lcom/android/server/wm/IWmSmartShowStub;

    move-result-object v0

    return-object v0
.end method

.method public initSpecialSize([I)I
    .locals 12

    const/4 v10, 0x3

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v4, p1, v0

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->f:I

    :goto_1
    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->g:I

    if-gt v0, v2, :cond_6

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    const/4 v5, 0x4

    aget v2, v2, v5

    sget v5, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->f:I

    if-eq v0, v5, :cond_1

    sget v5, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->h:I

    if-ne v0, v5, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    sget v5, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->e:I

    if-eq v0, v5, :cond_3

    sget v5, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->f:I

    if-ne v0, v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v5, v5, v6

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v5, v5, v3

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v7, v7, v1

    iget-object v8, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v8, v8, v10

    sub-int/2addr v7, v8

    invoke-virtual {v4, v1, v2, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->u:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v5, v5, v3

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v7, v7, v10

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v7, v7, v1

    invoke-virtual {v4, v1, v2, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v5, v5, v1

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    aget v7, v7, v3

    iget-object v8, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->v:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-virtual {v4, v1, v2, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->k:Landroid/content/Context;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SmartShowContext Context null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->k:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->m:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v9

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v2, v4, :cond_8

    move v8, v3

    :goto_3
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->u:Ljava/util/HashMap;

    sget v3, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v11, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->c:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v8, :cond_9

    add-int/lit8 v7, v9, 0x1

    rem-int/lit8 v7, v7, 0x4

    :goto_4
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManager;->addVirtualDisplay(IIIIIII)I

    move-result v2

    aput v2, v10, v11

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->u:Ljava/util/HashMap;

    sget v3, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->t:[I

    sget v11, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->d:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v8, :cond_a

    move v7, v9

    :goto_5
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManager;->addVirtualDisplay(IIIIIII)I

    move-result v0

    aput v0, v10, v11

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->a([I)V

    return v1

    :cond_8
    move v8, v1

    goto :goto_3

    :cond_9
    move v7, v9

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v9, 0x3

    rem-int/lit8 v7, v7, 0x4

    goto :goto_5
.end method

.method public interceptHomeKey()Z
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->START_REAL_HOME:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd_exit_multiwindow"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->k:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->DETECT_DOUBLE_HOME:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.IDLER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->k:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b()V

    goto :goto_1
.end method

.method public isForcedOrientation(ILjava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->c(ILjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/android/server/am/a;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/server/am/a;

    invoke-virtual {p2}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v2, p1, v1, v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needSkipOrientation(ILjava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->d(ILjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public perform(IILjava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->b(IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public saveVariables([I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->j:I

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->l:I

    return-void
.end method

.method public setAudioForceLocal(Z)I
    .locals 4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_AUDIO_FORCE_LOCAL:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->perform(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextAndTaskId(II)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->setContextAndTaskId(II)V

    return-void
.end method

.method public setFocusedScreen(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->i(I)V

    return-void
.end method

.method public setInputMethodRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldKeepTranslucent(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->n:Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null DisplayPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateConfiguration(ILandroid/content/res/Configuration;)V
    .locals 2

    iget v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->b:Z

    :goto_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->b:Z

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->b:Z

    goto :goto_0
.end method

.method public updateData([B)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->updateData([B)V

    return-void
.end method

.method public updateFocusedDisplayId()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->s:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->m()V

    return-void
.end method
