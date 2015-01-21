.class Lcom/autonavi/xmgd/naviservice/a;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/autonavi/xmgd/naviservice/a;


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:I

.field private c:Lcom/autonavi/xmgd/utility/Timer;

.field private d:Lcom/autonavi/xmgd/naviservice/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->c()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/a;->b:I

    new-instance v0, Lcom/autonavi/xmgd/naviservice/b;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/naviservice/b;-><init>(Lcom/autonavi/xmgd/naviservice/a;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/a;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/xmgd/utility/Timer;

    const-wide/32 v1, 0xea60

    new-instance v3, Lcom/autonavi/xmgd/naviservice/c;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/naviservice/c;-><init>(Lcom/autonavi/xmgd/naviservice/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/Timer;-><init>(JLcom/autonavi/xmgd/utility/Timer$ITimerListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/a;->c:Lcom/autonavi/xmgd/utility/Timer;

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/a;->c:Lcom/autonavi/xmgd/utility/Timer;

    rsub-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/utility/Timer;->start(J)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static declared-synchronized a()Lcom/autonavi/xmgd/naviservice/a;
    .locals 2

    const-class v1, Lcom/autonavi/xmgd/naviservice/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/a;

    invoke-direct {v0}, Lcom/autonavi/xmgd/naviservice/a;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/a;->d()V

    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;

    iget-object v0, v0, Lcom/autonavi/xmgd/naviservice/a;->c:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;

    iget-object v1, v1, Lcom/autonavi/xmgd/naviservice/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/a;->e:Lcom/autonavi/xmgd/naviservice/a;

    :cond_0
    return-void
.end method

.method public static c()I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v3

    iget-object v3, v3, Lcom/autonavi/xmgd/application/Resource;->mDayRange:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v3

    iget-object v3, v3, Lcom/autonavi/xmgd/application/Resource;->mDayRange:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[DayNightObserver] DayNightObserver.timeChanged"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->b:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_AUTO:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/a;->c()I

    move-result v0

    iget v1, p0, Lcom/autonavi/xmgd/naviservice/a;->b:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/a;->b:I

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/a;->d:Lcom/autonavi/xmgd/naviservice/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/a;->d:Lcom/autonavi/xmgd/naviservice/d;

    iget v1, p0, Lcom/autonavi/xmgd/naviservice/a;->b:I

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/d;->a(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/naviservice/d;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/a;->d:Lcom/autonavi/xmgd/naviservice/d;

    return-void
.end method
