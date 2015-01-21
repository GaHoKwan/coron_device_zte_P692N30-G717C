.class final Ltmsdk/bg/module/network/g;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/network/g$a;,
        Ltmsdk/bg/module/network/g$b;
    }
.end annotation


# static fields
.field private static final TRAFFIC_MONITOR_CONFIG_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private su:Ltmsdk/common/module/update/IUpdateObserver;

.field private vG:Z

.field private vV:Ltmsdk/common/BaseService;

.field private vW:J

.field private vX:I

.field private final vY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltmsdk/bg/module/network/d;",
            ">;"
        }
    .end annotation
.end field

.field private vZ:Ltmsdk/bg/module/network/a;

.field private vy:Ltmsdk/bg/module/network/f;

.field private vz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/bg/module/network/g;->TRAFFIC_MONITOR_CONFIG_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    .line 43
    iput-object v1, p0, Ltmsdk/bg/module/network/g;->vz:Ljava/lang/String;

    .line 44
    new-instance v0, Ltmsdk/bg/module/network/g$a;

    invoke-direct {v0, p0, v1}, Ltmsdk/bg/module/network/g$a;-><init>(Ltmsdk/bg/module/network/g;Ltmsdk/bg/module/network/g$1;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/g;->vV:Ltmsdk/common/BaseService;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    .line 53
    new-instance v0, Ltmsdk/bg/module/network/g$1;

    invoke-direct {v0, p0}, Ltmsdk/bg/module/network/g$1;-><init>(Ltmsdk/bg/module/network/g;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/g;->su:Ltmsdk/common/module/update/IUpdateObserver;

    .line 411
    new-instance v0, Ltmsdk/bg/module/network/a;

    invoke-direct {v0}, Ltmsdk/bg/module/network/a;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    return-void
.end method

.method static synthetic a(Ltmsdk/bg/module/network/g;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Ltmsdk/bg/module/network/g;->eF()I

    move-result v0

    return v0
.end method

.method static synthetic b(Ltmsdk/bg/module/network/g;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Ltmsdk/bg/module/network/g;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Ltmsdk/bg/module/network/g;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Ltmsdk/bg/module/network/g;->vG:Z

    return v0
.end method

.method static synthetic e(Ltmsdk/bg/module/network/g;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Ltmsdk/bg/module/network/g;->vW:J

    return-wide v0
.end method

.method public static eE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/net/dev"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/dev"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-string v0, "error"

    .line 181
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const-string v0, "/proc/net/dev"

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "/proc/self/net/dev"

    goto :goto_0
.end method

.method private eF()I
    .locals 5

    .prologue
    .line 191
    :try_start_0
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->mContext:Landroid/content/Context;

    sget-object v3, Ltmsdk/bg/module/network/g;->TRAFFIC_MONITOR_CONFIG_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, libPath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 193
    const/4 v2, -0x1

    .line 201
    .end local v1           #libPath:Ljava/lang/String;
    :goto_0
    return v2

    .line 196
    .restart local v1       #libPath:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vy:Ltmsdk/bg/module/network/f;

    invoke-virtual {v2}, Ltmsdk/bg/module/network/f;->eB()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1           #libPath:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addDefaultMobileMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z
    .locals 2
    .parameter "name"
    .parameter "dao"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    new-instance v0, Ltmsdk/bg/module/network/c;

    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vy:Ltmsdk/bg/module/network/f;

    invoke-direct {v0, p2, v1}, Ltmsdk/bg/module/network/c;-><init>(Ltmsdk/bg/module/network/INetworkInfoDao;Ltmsdk/bg/module/network/f;)V

    .line 92
    .local v0, monitor:Ltmsdk/bg/module/network/d;
    iget-boolean v1, p0, Ltmsdk/bg/module/network/g;->vG:Z

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/network/d;->w(Z)V

    .line 93
    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v1, 0x1

    .line 96
    .end local v0           #monitor:Ltmsdk/bg/module/network/d;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addDefaultWifiMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z
    .locals 2
    .parameter "name"
    .parameter "dao"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v0, Ltmsdk/bg/module/network/e;

    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vy:Ltmsdk/bg/module/network/f;

    invoke-direct {v0, p2, v1}, Ltmsdk/bg/module/network/e;-><init>(Ltmsdk/bg/module/network/INetworkInfoDao;Ltmsdk/bg/module/network/f;)V

    .line 110
    .local v0, monitor:Ltmsdk/bg/module/network/d;
    iget-boolean v1, p0, Ltmsdk/bg/module/network/g;->vG:Z

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/network/d;->w(Z)V

    .line 111
    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v1, 0x1

    .line 114
    .end local v0           #monitor:Ltmsdk/bg/module/network/d;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/NetDataEntityFactory;Ltmsdk/bg/module/network/INetworkInfoDao;)Z
    .locals 3
    .parameter "name"
    .parameter "factory"
    .parameter "dao"

    .prologue
    const/4 v1, 0x0

    .line 126
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 127
    new-instance v0, Ltmsdk/bg/module/network/d;

    invoke-direct {v0, p2, p3}, Ltmsdk/bg/module/network/d;-><init>(Ltmsdk/bg/module/network/NetDataEntityFactory;Ltmsdk/bg/module/network/INetworkInfoDao;)V

    .line 128
    .local v0, monitor:Ltmsdk/bg/module/network/d;
    iget-boolean v2, p0, Ltmsdk/bg/module/network/g;->vG:Z

    invoke-virtual {v0, v2}, Ltmsdk/bg/module/network/d;->w(Z)V

    .line 129
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 131
    .end local v0           #monitor:Ltmsdk/bg/module/network/d;
    :cond_0
    return v1
.end method

.method public clearTrafficInfo([Ljava/lang/String;)V
    .locals 3
    .parameter "pkgs"

    .prologue
    const-wide/16 v1, 0x0

    .line 480
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/a;->clearTrafficInfo([Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, v1, v2}, Ltmsdk/bg/module/network/g;->updateSelfMobileDownloadBytes(J)V

    .line 482
    invoke-virtual {p0, v1, v2}, Ltmsdk/bg/module/network/g;->updateSelfMobileUploadBytes(J)V

    .line 483
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    const-class v0, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/update/UpdateManager;->removeObserver(J)V

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 75
    return-void
.end method

.method public findMonitor(Ljava/lang/String;)Ltmsdk/bg/module/network/INetworkMonitor;
    .locals 1
    .parameter "name"

    .prologue
    .line 156
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/network/INetworkMonitor;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Ltmsdk/bg/module/network/g;->vW:J

    return-wide v0
.end method

.method public getIntervalType()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Ltmsdk/bg/module/network/g;->vX:I

    return v0
.end method

.method public getMobileRxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 447
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/a;->getMobileRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 455
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/a;->getMobileTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelfMobileDownloadBytes()J
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Ltmsdkobf/kv;->getSelfMobileDownloadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelfMobileUploadBytes()J
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Ltmsdkobf/kv;->getSelfMobileUploadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;
    .locals 1
    .parameter "pkg"

    .prologue
    .line 439
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/a;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    return-object v0
.end method

.method public getWIFIRxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 463
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/a;->getWIFIRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWIFITxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 471
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/a;->getWIFITxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Ltmsdk/bg/module/network/g;->vG:Z

    return v0
.end method

.method public isSupportTrafficState()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/a;->isSupportTrafficState()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized notifyConfigChange()V
    .locals 3

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ltmsdk/bg/module/network/g;->vG:Z

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/d;

    .line 289
    .local v1, monitor:Ltmsdk/bg/module/network/d;
    invoke-virtual {v1}, Ltmsdk/bg/module/network/d;->notifyConfigChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #monitor:Ltmsdk/bg/module/network/d;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 292
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vV:Ltmsdk/common/BaseService;

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vV:Ltmsdk/common/BaseService;

    invoke-static {v2}, Ltmsdk/common/TMSService;->startService(Ltmsdk/common/BaseService;)Ltmsdk/common/BaseService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 62
    iput-object p1, p0, Ltmsdk/bg/module/network/g;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->mContext:Landroid/content/Context;

    const-string v1, "net_interface_type_traffic_stat.dat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-static {}, Ltmsdk/bg/module/network/g;->eE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/g;->vz:Ljava/lang/String;

    .line 65
    new-instance v0, Ltmsdk/bg/module/network/f;

    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vz:Ljava/lang/String;

    invoke-direct {v0, v1}, Ltmsdk/bg/module/network/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/g;->vy:Ltmsdk/bg/module/network/f;

    .line 66
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vy:Ltmsdk/bg/module/network/f;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/f;->eB()V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/network/g;->setIntervalType(I)V

    .line 68
    const-class v0, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    const-wide/16 v1, 0x20

    iget-object v3, p0, Ltmsdk/bg/module/network/g;->su:Ltmsdk/common/module/update/IUpdateObserver;

    invoke-virtual {v0, v1, v2, v3}, Ltmsdk/common/module/update/UpdateManager;->addObserver(JLtmsdk/common/module/update/IUpdateObserver;)V

    .line 69
    return-void
.end method

.method public refreshTrafficInfo([Ljava/lang/String;Z)V
    .locals 1
    .parameter "pkgs"
    .parameter "enforced"

    .prologue
    .line 429
    iget-object v0, p0, Ltmsdk/bg/module/network/g;->vZ:Ltmsdk/bg/module/network/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/network/a;->refreshTrafficInfo([Ljava/lang/String;Z)V

    .line 430
    return-void
.end method

.method public removeMonitor(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0
.end method

.method public setEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 258
    iget-boolean v2, p0, Ltmsdk/bg/module/network/g;->vG:Z

    if-eq p1, v2, :cond_1

    .line 259
    iput-boolean p1, p0, Ltmsdk/bg/module/network/g;->vG:Z

    .line 261
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vY:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/d;

    .line 262
    .local v1, monitor:Ltmsdk/bg/module/network/d;
    iget-boolean v2, p0, Ltmsdk/bg/module/network/g;->vG:Z

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/network/d;->w(Z)V

    goto :goto_0

    .line 265
    .end local v1           #monitor:Ltmsdk/bg/module/network/d;
    :cond_0
    iget-boolean v2, p0, Ltmsdk/bg/module/network/g;->vG:Z

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vV:Ltmsdk/common/BaseService;

    invoke-static {v2}, Ltmsdk/common/TMSService;->startService(Ltmsdk/common/BaseService;)Ltmsdk/common/BaseService;

    .line 271
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void

    .line 268
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Ltmsdk/bg/module/network/g;->vV:Ltmsdk/common/BaseService;

    invoke-static {v2}, Ltmsdk/common/TMSService;->stopService(Ltmsdk/common/BaseService;)Z

    goto :goto_1
.end method

.method public setInterval(J)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 239
    iput-wide p1, p0, Ltmsdk/bg/module/network/g;->vW:J

    .line 240
    const/4 v0, 0x3

    iput v0, p0, Ltmsdk/bg/module/network/g;->vX:I

    .line 241
    return-void
.end method

.method public setIntervalType(I)V
    .locals 2
    .parameter "interval_type"

    .prologue
    .line 210
    iput p1, p0, Ltmsdk/bg/module/network/g;->vX:I

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 213
    :pswitch_0
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Ltmsdk/bg/module/network/g;->vW:J

    goto :goto_0

    .line 216
    :pswitch_1
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Ltmsdk/bg/module/network/g;->vW:J

    goto :goto_0

    .line 219
    :pswitch_2
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Ltmsdk/bg/module/network/g;->vW:J

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateSelfMobileDownloadBytes(J)V
    .locals 0
    .parameter "totalDownloadBytes"

    .prologue
    .line 493
    invoke-static {p1, p2}, Ltmsdkobf/kv;->updateSelfMobileDownloadBytes(J)V

    .line 494
    return-void
.end method

.method public updateSelfMobileUploadBytes(J)V
    .locals 0
    .parameter "totalUploadBytes"

    .prologue
    .line 511
    invoke-static {p1, p2}, Ltmsdkobf/kv;->updateSelfMobileUploadBytes(J)V

    .line 512
    return-void
.end method
