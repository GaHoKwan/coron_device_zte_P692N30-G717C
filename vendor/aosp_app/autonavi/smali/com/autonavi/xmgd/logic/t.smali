.class Lcom/autonavi/xmgd/logic/t;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

.field private b:Lcom/autonavi/a/a/k;

.field private c:Lcom/autonavi/a/a/l;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/t;->c:Lcom/autonavi/a/a/l;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/t;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/t;->e:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/t;->f:Z

    new-instance v0, Lcom/autonavi/xmgd/logic/v;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/logic/v;-><init>(Lcom/autonavi/xmgd/logic/t;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/t;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/t;)Lcom/autonavi/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/t;Lcom/autonavi/a/a/l;)Lcom/autonavi/a/a/l;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/t;->c:Lcom/autonavi/a/a/l;

    return-object p1
.end method

.method private a(Landroid/location/Location;)V
    .locals 7

    const/4 v6, 0x0

    const-wide v4, 0x412e848000000000L

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    new-instance v3, Lcom/autonavi/xmgd/e/k;

    new-instance v4, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v4, v1, v2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-direct {v3, v4}, Lcom/autonavi/xmgd/e/k;-><init>(Lcom/autonavi/xm/navigation/server/GCoord;)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/autonavi/xmgd/logic/t;->d:Z

    iget-boolean v2, p0, Lcom/autonavi/xmgd/logic/t;->d:Z

    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/autonavi/xmgd/logic/t;->d:Z

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/logic/ac;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v2, v2, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2, v3}, Lcom/autonavi/xmgd/naviservice/e;->d(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v2, v2, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2}, Lcom/autonavi/xmgd/naviservice/e;->w()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_7

    if-nez v1, :cond_4

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/t;->f:Z

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0, p1, v6}, Lcom/autonavi/xmgd/logic/c;->a(Landroid/location/Location;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/xmgd/logic/c;->a(Landroid/location/Location;Z)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->a(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/t;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/logic/t;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/t;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/t;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/logic/t;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/logic/t;)Lcom/autonavi/a/a/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->c:Lcom/autonavi/a/a/l;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    invoke-interface {v0}, Lcom/autonavi/a/a/k;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    :cond_0
    return-void
.end method

.method a(Z)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/t;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/autonavi/xmgd/logic/t;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/t;->c:Lcom/autonavi/a/a/l;

    iput-boolean p1, p0, Lcom/autonavi/xmgd/logic/t;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/a/a/g;->a(Landroid/content/Context;)Lcom/autonavi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    const-string v1, "droidnavi"

    invoke-interface {v0, v1}, Lcom/autonavi/a/a/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/t;->b:Lcom/autonavi/a/a/k;

    const-string v1, "3FAF6E79399A344CBCD6ACDC7F9A2A3C"

    invoke-interface {v0, v1}, Lcom/autonavi/a/a/k;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/autonavi/xmgd/logic/u;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/u;-><init>(Lcom/autonavi/xmgd/logic/t;)V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/u;->start()V

    goto :goto_0
.end method
