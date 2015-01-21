.class public final Lcom/autonavi/xmgd/utility/Timer;
.super Landroid/os/Handler;


# static fields
.field public static final TIMER_PAUSE:I = 0x2

.field public static final TIMER_RUNNING:I = 0x1

.field public static final TIMER_STOP:I


# instance fields
.field private counter:I

.field private delayMillis:J

.field private lastTime:J

.field private status:I

.field private times:I

.field private who:Lcom/autonavi/xmgd/utility/Timer$ITimerListener;


# direct methods
.method public constructor <init>(JLcom/autonavi/xmgd/utility/Timer$ITimerListener;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/Timer;->who:Lcom/autonavi/xmgd/utility/Timer$ITimerListener;

    iput-wide p1, p0, Lcom/autonavi/xmgd/utility/Timer;->delayMillis:J

    iput-object p3, p0, Lcom/autonavi/xmgd/utility/Timer;->who:Lcom/autonavi/xmgd/utility/Timer$ITimerListener;

    return-void
.end method

.method private delay(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/Timer;->removeMessages(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/autonavi/xmgd/utility/Timer;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private doHandleMessage()V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->times:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    iget v1, p0, Lcom/autonavi/xmgd/utility/Timer;->times:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/Timer;->who:Lcom/autonavi/xmgd/utility/Timer$ITimerListener;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/Timer;->who:Lcom/autonavi/xmgd/utility/Timer$ITimerListener;

    iget v1, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    iget v2, p0, Lcom/autonavi/xmgd/utility/Timer;->times:I

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xmgd/utility/Timer$ITimerListener;->onTimer(II)V

    :cond_2
    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/xmgd/utility/Timer;->lastTime:J

    iget-wide v0, p0, Lcom/autonavi/xmgd/utility/Timer;->delayMillis:J

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/utility/Timer;->delay(J)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    return v0
.end method

.method public getDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xmgd/utility/Timer;->delayMillis:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->times:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/Timer;->doHandleMessage()V

    return-void
.end method

.method public pause()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resume()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    iget-wide v1, p0, Lcom/autonavi/xmgd/utility/Timer;->delayMillis:J

    invoke-direct {p0, v1, v2}, Lcom/autonavi/xmgd/utility/Timer;->delay(J)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/autonavi/xmgd/utility/Timer;->delayMillis:J

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/Timer;->doHandleMessage()V

    :cond_0
    return-void
.end method

.method public start(J)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/utility/Timer;->delay(J)V

    :cond_0
    return-void
.end method

.method public startWithTimes(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/xmgd/utility/Timer;->times:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/Timer;->start()V

    return-void
.end method

.method public startWithTimes(JI)V
    .locals 1

    iput p3, p0, Lcom/autonavi/xmgd/utility/Timer;->times:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xmgd/utility/Timer;->start(J)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/utility/Timer;->removeMessages(I)V

    iput v2, p0, Lcom/autonavi/xmgd/utility/Timer;->status:I

    iput v2, p0, Lcom/autonavi/xmgd/utility/Timer;->counter:I

    :cond_1
    return-void
.end method
