.class Lcom/autonavi/xmgd/logic/w;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:Z

.field private f:J

.field private synthetic g:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/autonavi/xmgd/logic/w;->a:I

    iput v0, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    iput-wide v1, p0, Lcom/autonavi/xmgd/logic/w;->c:J

    iput-wide v1, p0, Lcom/autonavi/xmgd/logic/w;->d:J

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/w;->e:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/xmgd/logic/w;->f:J

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/w;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    return v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/logic/w;)I
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    return v0
.end method

.method private b(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/w;->e:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/w;->e:Z

    goto :goto_0
.end method

.method private b(Landroid/location/Location;)V
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iput-wide v2, p0, Lcom/autonavi/xmgd/logic/w;->f:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/autonavi/xmgd/logic/w;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/xmgd/logic/w;->f:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/xmgd/logic/w;->f:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xdbba00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lcom/autonavi/xmgd/logic/w;->f:J

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u5df2\u7ecf\u75b2\u52b3\u9a7e\u9a764\u4e2a\u5c0f\u65f6"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    const/high16 v1, 0x42c8

    const/high16 v0, 0x4348

    new-array v2, v7, [Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;

    iget-object v3, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v3, v3, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v3, v2}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_3

    aget-object v0, v2, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nExitDis:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float v1, v0, v1

    aget-object v0, v2, v6

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nExitTime:I

    int-to-float v0, v0

    :cond_3
    iget-object v2, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ah()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v1, v0, v7, v6}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 8

    const-wide/16 v6, 0x2710

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MapLogic] GPS onLocationStatusChanged oldStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    iget v2, p0, Lcom/autonavi/xmgd/logic/w;->a:I

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/z;

    move-result-object v0

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1, v5, v4}, Lcom/autonavi/xmgd/logic/z;->a(IZZ)V

    iget v0, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/autonavi/xmgd/logic/w;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/logic/w;->a:I

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/logic/w;->b(II)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->g()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    return-void

    :cond_3
    iget-wide v2, p0, Lcom/autonavi/xmgd/logic/w;->c:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/autonavi/xmgd/logic/w;->e:Z

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/autonavi/xmgd/logic/w;->c:J

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/z;

    move-result-object v0

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1, v5, v4}, Lcom/autonavi/xmgd/logic/z;->a(IZZ)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/z;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1, v5, v4}, Lcom/autonavi/xmgd/logic/z;->a(IZZ)V

    :cond_5
    :goto_2
    iget v0, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/logic/w;->b:I

    goto :goto_1

    :cond_6
    iget-wide v2, p0, Lcom/autonavi/xmgd/logic/w;->d:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/autonavi/xmgd/logic/w;->e:Z

    if-eqz v2, :cond_5

    iput-wide v0, p0, Lcom/autonavi/xmgd/logic/w;->d:J

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/w;->g:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/z;

    move-result-object v0

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1, v5, v4}, Lcom/autonavi/xmgd/logic/z;->a(IZZ)V

    goto :goto_2
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/logic/w;->b(Landroid/location/Location;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/w;->e:Z

    return v0
.end method
