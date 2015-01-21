.class Lcom/powermo/SmartBar/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ct;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x4220

    const/high16 v5, -0x3de0

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-object v3, v3, Lcom/powermo/SmartBar/ct;->k:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-object v4, v4, Lcom/powermo/SmartBar/ct;->k:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v4

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-object v0, v0, Lcom/powermo/SmartBar/ct;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v3}, Lcom/powermo/SmartBar/ct;->b(Lcom/powermo/SmartBar/ct;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-object v0, v0, Lcom/powermo/SmartBar/ct;->k:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ct;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ct;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ct;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ct;->a:Z

    if-eqz v0, :cond_1

    cmpl-float v0, v4, v7

    if-gtz v0, :cond_2

    cmpg-float v0, v4, v5

    if-ltz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ct;->a:Z

    if-nez v0, :cond_3

    cmpl-float v0, v3, v7

    if-gtz v0, :cond_2

    cmpg-float v0, v3, v5

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iput-boolean v8, v0, Lcom/powermo/SmartBar/ct;->j:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v0}, Lcom/powermo/SmartBar/ct;->c(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/da;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/powermo/SmartBar/da;->a(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v0}, Lcom/powermo/SmartBar/ct;->c(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/da;

    move-result-object v0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/powermo/SmartBar/da;->a(II)V

    :cond_3
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ct;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v0}, Lcom/powermo/SmartBar/ct;->c(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/da;

    move-result-object v0

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/da;->a(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v0}, Lcom/powermo/SmartBar/ct;->c(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/da;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powermo/SmartBar/da;->a(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v0, v0, Lcom/powermo/SmartBar/ct;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iput-boolean v6, v0, Lcom/powermo/SmartBar/ct;->j:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-object v0, v0, Lcom/powermo/SmartBar/ct;->k:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v0}, Lcom/powermo/SmartBar/ct;->a(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/db;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/db;->a(ILcom/powermo/SmartBar/ct;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iput-boolean v6, v0, Lcom/powermo/SmartBar/ct;->g:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    iget-object v0, v0, Lcom/powermo/SmartBar/ct;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v1}, Lcom/powermo/SmartBar/ct;->b(Lcom/powermo/SmartBar/ct;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-virtual {v0, v3, v4}, Lcom/powermo/SmartBar/ct;->a(FF)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/powermo/SmartBar/cw;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v0}, Lcom/powermo/SmartBar/ct;->a(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/db;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/powermo/SmartBar/db;->a(ILcom/powermo/SmartBar/ct;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
