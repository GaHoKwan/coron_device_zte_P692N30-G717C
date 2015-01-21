.class Lcom/autonavi/xmgd/navigator/cl;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/ck;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/ck;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/b;->e(Z)V

    return-void
.end method

.method private a([I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/b;->e(Z)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cl;->b([I)V

    return-void
.end method

.method private b([I)V
    .locals 13

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget v5, p1, v0

    const/4 v0, 0x1

    aget v4, p1, v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v0, p1

    const/4 v2, 0x2

    if-gt v0, v2, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v5, :cond_2

    if-lez v5, :cond_6

    const/4 v0, 0x1

    :goto_1
    move v3, v0

    :cond_2
    if-eqz v4, :cond_b

    if-lez v4, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v1, v5

    int-to-long v6, v5

    mul-long/2addr v1, v6

    int-to-long v6, v4

    int-to-long v8, v4

    mul-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v6, 0x407f400000000000L

    div-double/2addr v6, v1

    int-to-double v1, v5

    mul-double/2addr v1, v6

    double-to-int v2, v1

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v1, v6

    move v6, v4

    move v4, v0

    move v0, v5

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_3
    if-nez v0, :cond_3

    if-eqz v6, :cond_0

    :cond_3
    mul-int v1, v5, v0

    div-int/lit8 v1, v1, 0x64

    mul-int v7, v4, v6

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v8, v8, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v8}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v8, v8, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v8}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v8

    neg-int v1, v1

    neg-int v7, v7

    sget-object v9, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-interface {v8, v1, v7, v9}, Lcom/autonavi/xmgd/logic/b;->a(IILcom/autonavi/xm/navigation/server/map/GMoveMapOp;)V

    :cond_4
    sub-int/2addr v0, v3

    if-lez v0, :cond_9

    move v1, v0

    :goto_4
    sub-int v0, v6, v2

    if-lez v0, :cond_a

    :goto_5
    if-gtz v1, :cond_5

    if-lez v0, :cond_0

    :cond_5
    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v6, v6, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    iget-object v7, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v7, v7, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v1, v11, v12

    const/4 v1, 0x1

    aput v0, v11, v1

    const/4 v0, 0x2

    aput v5, v11, v0

    const/4 v0, 0x3

    aput v4, v11, v0

    const/4 v0, 0x4

    aput v3, v11, v0

    const/4 v0, 0x5

    aput v2, v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_6
    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_7
    const/4 v0, -0x1

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v2, p1, v0

    const/4 v0, 0x4

    aget v1, p1, v0

    const/4 v0, 0x5

    aget v0, p1, v0

    move v6, v4

    move v4, v2

    move v2, v0

    move v0, v5

    move v5, v3

    move v3, v1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/cl;->a([I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/cl;->b([I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/cl;->a()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/autonavi/xmgd/logic/b;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/autonavi/xmgd/e/k;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/logic/b;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/autonavi/xmgd/e/k;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/logic/b;->b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/navigator/Map;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/autonavi/xmgd/e/k;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/logic/b;->c(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/navigator/Map;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->u()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->p(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->H(Lcom/autonavi/xmgd/navigator/Map;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->v()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->H(Lcom/autonavi/xmgd/navigator/Map;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->x()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->H(Lcom/autonavi/xmgd/navigator/Map;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->z()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->H(Lcom/autonavi/xmgd/navigator/Map;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->t()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->H(Lcom/autonavi/xmgd/navigator/Map;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->O(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->P(Lcom/autonavi/xmgd/navigator/Map;)V

    goto/16 :goto_0

    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "testMove"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    invoke-direct {v2}, Lcom/autonavi/xm/navigation/server/map/GMoveMap;-><init>()V

    new-instance v3, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v3, v0, v1}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v3, v2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_GEO_DIRECT:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iput-object v0, v2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v6

    check-cast v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aget-object v2, v0, v5

    check-cast v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v1

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v2

    sub-int v2, v1, v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v3, v2, 0x4

    if-ge v1, v3, :cond_5

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v0

    rem-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomOut_Inner(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_5
    mul-int/lit8 v3, v2, 0x4

    sub-int v3, v0, v3

    if-lt v1, v3, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {v3, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomIn_Inner(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xmgd/e/k;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->Q(Lcom/autonavi/xmgd/navigator/Map;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    invoke-static {v0, v6}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/navigator/ck;Z)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->R(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->R(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v2, v2, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/b;->s()Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v2

    new-array v3, v5, [Lcom/autonavi/xm/navigation/server/GCoord;

    new-array v4, v5, [Lcom/autonavi/xm/navigation/server/GCoord;

    aput-object v2, v4, v6

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v2

    sget-object v5, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-virtual {v2, v5, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_CoordConvert(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v3, v6

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v3, v3, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v3

    iget v4, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    sub-int/2addr v0, v4

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-interface {v3, v0, v1, v2}, Lcom/autonavi/xmgd/logic/b;->a(IILcom/autonavi/xm/navigation/server/map/GMoveMapOp;)V

    const/16 v0, 0x10

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/xmgd/navigator/cl;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v3, v3, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    new-instance v4, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v4, v1, v2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-static {v3, v4, v0}, Lcom/autonavi/xmgd/navigator/Map;->b(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->S(Lcom/autonavi/xmgd/navigator/Map;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    invoke-static {v0, v6}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/navigator/ck;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cl;->a:Lcom/autonavi/xmgd/navigator/ck;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->j(Lcom/autonavi/xmgd/navigator/ck;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
