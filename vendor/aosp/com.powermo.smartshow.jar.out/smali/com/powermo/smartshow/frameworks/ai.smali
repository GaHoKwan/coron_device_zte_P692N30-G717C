.class Lcom/powermo/smartshow/frameworks/ai;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Landroid/graphics/Region;

.field c:Z

.field d:Landroid/view/InputChannel;

.field e:Lcom/powermo/smartshow/frameworks/aj;

.field f:I

.field g:Landroid/graphics/PointF;

.field h:F

.field private i:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ai;->f:I

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ai;->a:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->g:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ai;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ai;->c:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->b:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->i:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ai;->i:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->d:Landroid/view/InputChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->i:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "gestureMonitor"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->d:Landroid/view/InputChannel;

    new-instance v0, Lcom/powermo/smartshow/frameworks/aj;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ai;->d:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ai;->i:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->o:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/powermo/smartshow/frameworks/aj;-><init>(Lcom/powermo/smartshow/frameworks/ai;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->e:Lcom/powermo/smartshow/frameworks/aj;

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Region;)V
    .locals 2

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ai;->b:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->b:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ai;->b:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ai;->c:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ai;->c:Z

    goto :goto_0
.end method

.method a(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->b:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ai;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->i:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->d:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->e:Lcom/powermo/smartshow/frameworks/aj;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/aj;->dispose()V

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/ai;->e:Lcom/powermo/smartshow/frameworks/aj;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ai;->d:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v1, p0, Lcom/powermo/smartshow/frameworks/ai;->d:Landroid/view/InputChannel;

    :cond_0
    return-void
.end method
