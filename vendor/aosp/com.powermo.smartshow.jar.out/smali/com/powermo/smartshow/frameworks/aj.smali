.class final Lcom/powermo/smartshow/frameworks/aj;
.super Landroid/view/InputEventReceiver;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/ai;


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/ai;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/aj;->a:Lcom/powermo/smartshow/frameworks/ai;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    return-void
.end method

.method public onBatchedInputEventPending()V
    .locals 0

    invoke-super {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/aj;->a:Lcom/powermo/smartshow/frameworks/ai;

    invoke-virtual {v3, v1}, Lcom/powermo/smartshow/frameworks/ai;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/powermo/smartshow/frameworks/aj;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "SwitchGestureDetector"

    const-string v4, "Exception caught by drag handleMotion"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, v2}, Lcom/powermo/smartshow/frameworks/aj;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v2}, Lcom/powermo/smartshow/frameworks/aj;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
