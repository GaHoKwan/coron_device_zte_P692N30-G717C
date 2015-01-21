.class Lcom/powermo/SmartBar/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bz;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    const/4 v1, 0x1

    iget v2, p0, Lcom/powermo/SmartBar/cc;->b:F

    float-to-int v2, v2

    iget v3, p0, Lcom/powermo/SmartBar/cc;->c:F

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/powermo/SmartBar/bz;->a(ZIIZ)V

    return-void
.end method

.method private a()Z
    .locals 2

    iget v0, p0, Lcom/powermo/SmartBar/cc;->d:F

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const-wide/16 v6, 0x258

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/SmartBar/cc;->d:F

    iput v2, p0, Lcom/powermo/SmartBar/cc;->b:F

    iput v3, p0, Lcom/powermo/SmartBar/cc;->c:F

    iget-object v0, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v1}, Lcom/powermo/SmartBar/bz;->d(Lcom/powermo/SmartBar/bz;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->e(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cg;->a()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/powermo/SmartBar/cc;->b:F

    sub-float v0, v2, v0

    iget v1, p0, Lcom/powermo/SmartBar/cc;->b:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/powermo/SmartBar/cc;->c:F

    sub-float v1, v3, v1

    iget v4, p0, Lcom/powermo/SmartBar/cc;->c:F

    sub-float v4, v3, v4

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lcom/powermo/SmartBar/cc;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powermo/SmartBar/cc;->d:F

    iput v2, p0, Lcom/powermo/SmartBar/cc;->b:F

    iput v3, p0, Lcom/powermo/SmartBar/cc;->c:F

    invoke-direct {p0}, Lcom/powermo/SmartBar/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v1}, Lcom/powermo/SmartBar/bz;->d(Lcom/powermo/SmartBar/bz;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v5}, Lcom/powermo/SmartBar/cc;->a(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v2}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v3}, Lcom/powermo/SmartBar/bz;->d(Lcom/powermo/SmartBar/bz;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/powermo/SmartBar/cc;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/powermo/SmartBar/cc;->a(Z)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->e(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/cg;

    move-result-object v0

    const/16 v1, 0xdac

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/cg;->a(Lcom/powermo/SmartBar/cg;I)V

    goto :goto_0

    :cond_2
    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->a(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cf;->b()V

    iget-object v0, p0, Lcom/powermo/SmartBar/cc;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->a(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/cf;

    move-result-object v0

    const/16 v1, 0x14a

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/cf;->a(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
