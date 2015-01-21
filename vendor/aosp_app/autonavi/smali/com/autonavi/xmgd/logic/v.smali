.class Lcom/autonavi/xmgd/logic/v;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/logic/t;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/t;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x0

    const-wide v5, 0x412e848000000000L

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[NetLocation] handleMessage"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x22b8

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    const-string v1, "[NetLocation] handleMessage 8888"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;Lcom/autonavi/a/a/l;)Lcom/autonavi/a/a/l;

    :goto_0
    return-void

    :cond_3
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "autonavi60"

    const-string v1, "[NetLocation] handleMessage 0000"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/a/a/l;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;Lcom/autonavi/a/a/l;)Lcom/autonavi/a/a/l;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/t;->c(Lcom/autonavi/xmgd/logic/t;)Lcom/autonavi/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/a/a/l;->a()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/t;->c(Lcom/autonavi/xmgd/logic/t;)Lcom/autonavi/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/a/a/l;->b()D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    new-instance v2, Landroid/location/Location;

    const-string v3, "network"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    int-to-double v3, v0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    int-to-double v3, v1

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    sget-boolean v3, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v3, :cond_5

    const-string v3, "autonavi60"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NetLocation] handleMessage cellLon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " cellLat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;Landroid/location/Location;)V

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_7

    const-string v0, "autonavi60"

    const-string v1, "[NetLocation] handleMessage message.obj = null"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07014a

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    iget-object v1, v1, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/logic/c;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/v;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;Lcom/autonavi/a/a/l;)Lcom/autonavi/a/a/l;

    goto/16 :goto_0
.end method
