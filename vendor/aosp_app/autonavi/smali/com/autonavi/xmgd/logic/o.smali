.class Lcom/autonavi/xmgd/logic/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/utility/Timer$ITimerListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/o;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(II)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/o;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Lcom/autonavi/xmgd/logic/MapLogicImpl;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/o;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Lcom/autonavi/xmgd/logic/MapLogicImpl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/o;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/o;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/o;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/o;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->c()V

    :cond_0
    return-void
.end method
