.class public Ltmsdk/common/module/hostmonitor/HostsMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/hostmonitor/HostsMonitor$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HostMonitor"

.field private static zo:Ltmsdk/common/module/hostmonitor/HostsMonitor;


# instance fields
.field private final zi:Ljava/lang/String;

.field private final zj:Ljava/lang/String;

.field private final zk:I

.field private zl:Ltmsdk/common/module/hostmonitor/HostsFileObserver;

.field private zm:Ltmsdk/common/module/hostmonitor/HostsMonitor$a;

.field private zn:Z

.field private volatile zp:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "hst.dat"

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zi:Ljava/lang/String;

    .line 21
    const-string v0, "hst"

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zj:Ljava/lang/String;

    .line 23
    const/16 v0, 0x7d0

    iput v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zk:I

    .line 28
    iput-boolean v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zn:Z

    .line 86
    iput-boolean v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zp:Z

    .line 44
    const-string v0, "HostMonitor"

    const-string v1, "----------------create hosts monitor------------------"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    new-instance v0, Ltmsdk/common/module/hostmonitor/HostsMonitor$a;

    invoke-direct {v0, p0}, Ltmsdk/common/module/hostmonitor/HostsMonitor$a;-><init>(Ltmsdk/common/module/hostmonitor/HostsMonitor;)V

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zm:Ltmsdk/common/module/hostmonitor/HostsMonitor$a;

    .line 46
    new-instance v0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;

    iget-object v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zm:Ltmsdk/common/module/hostmonitor/HostsMonitor$a;

    invoke-direct {v0, v1}, Ltmsdk/common/module/hostmonitor/HostsFileObserver;-><init>(Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;)V

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zl:Ltmsdk/common/module/hostmonitor/HostsFileObserver;

    .line 47
    return-void
.end method

.method static synthetic a(Ltmsdk/common/module/hostmonitor/HostsMonitor;)Ltmsdkobf/p;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->fz()Ltmsdkobf/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltmsdk/common/module/hostmonitor/HostsMonitor;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->n(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Ltmsdk/common/module/hostmonitor/HostsMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zp:Z

    return p1
.end method

.method private fz()Ltmsdkobf/p;
    .locals 7

    .prologue
    .line 131
    const-class v4, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;

    .line 132
    .local v1, hostMonitor:Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;
    invoke-virtual {v1}, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;->getHostConfig()Ltmsdkobf/p;

    move-result-object v0

    .line 134
    .local v0, commList:Ltmsdkobf/p;
    if-eqz v0, :cond_1

    iget-object v4, v0, Ltmsdkobf/p;->aK:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 135
    const-string v4, "HostMonitor"

    const-string v5, "------h_list.dat------"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object v4, v0, Ltmsdkobf/p;->aK:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/o;

    .line 137
    .local v3, info:Ltmsdkobf/o;
    const-string v4, "HostMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ltmsdkobf/o;->aC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ltmsdkobf/o;->aD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ltmsdkobf/o;->aE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ltmsdkobf/o;->aF:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    .end local v3           #info:Ltmsdkobf/o;
    :cond_0
    const-string v4, "HostMonitor"

    const-string v5, "--------------------"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return-object v0

    .line 142
    :cond_1
    const-string v4, "HostMonitor"

    const-string v5, "h_list.dat is null"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getInstance()Ltmsdk/common/module/hostmonitor/HostsMonitor;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zo:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Ltmsdk/common/module/hostmonitor/HostsMonitor;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zo:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-direct {v0}, Ltmsdk/common/module/hostmonitor/HostsMonitor;-><init>()V

    sput-object v0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zo:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zo:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private n(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/hostmonitor/HostsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, hostsResults:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/hostmonitor/HostsResult;>;"
    const-string v3, "HostMonitor"

    const-string v4, "save hosts check results, begin"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    const-string v3, "HostMonitor"

    const-string v4, "save hosts check results, no data to save"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, context:Landroid/content/Context;
    const-string v3, "hst"

    const-string v4, "hst.dat"

    new-instance v5, Ltmsdk/common/module/hostmonitor/HostsResult;

    invoke-direct {v5}, Ltmsdk/common/module/hostmonitor/HostsResult;-><init>()V

    invoke-static {v0, v3, v4, v5}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .local v2, lastResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/hostmonitor/HostsResult;>;"
    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_3

    .line 167
    const-string v3, "HostMonitor"

    const-string v4, "save hosts check results to file, err: record size > 2000"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :cond_2
    :goto_1
    const-string v3, "hst"

    const-string v4, "hst.dat"

    invoke-static {v0, p1, v3, v4}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, err:I
    const-string v4, "HostMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save hosts check results to file, err: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " old count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", new count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v3, "HostMonitor"

    const-string v4, "save hosts check results, finish"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    .end local v1           #err:I
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 175
    .restart local v1       #err:I
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_2
.end method


# virtual methods
.method public asyncCheckHostsChange()V
    .locals 3

    .prologue
    .line 88
    iget-boolean v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zp:Z

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "HostMonitor"

    const-string v2, "check hosts file change, it\'s already checking"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zp:Z

    .line 94
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    .line 95
    .local v0, poolMgr:Ltmsdkobf/ij;
    new-instance v1, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;

    invoke-direct {v1, p0}, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;-><init>(Ltmsdk/common/module/hostmonitor/HostsMonitor;)V

    const-string v2, "check_hosts_change"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public editHostsFile(Ltmsdkobf/p;)Ltmsdkobf/p;
    .locals 6
    .parameter "configList"

    .prologue
    const/4 v5, 0x2

    .line 185
    invoke-static {}, Ltmsdk/common/TMSDKContext;->processType()I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 187
    invoke-virtual {p0}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->stopWatching()V

    .line 190
    :cond_0
    const/4 v1, 0x0

    .line 192
    .local v1, resultList:Ltmsdkobf/p;
    :try_start_0
    invoke-static {p1}, Ltmsdk/common/module/hostmonitor/HostsChecker;->editHostsFile(Ltmsdkobf/p;)Ltmsdkobf/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    :goto_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->processType()I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 199
    invoke-virtual {p0}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->startWatching()V

    .line 202
    :cond_1
    if-nez v1, :cond_2

    .line 203
    move-object v1, p1

    .line 206
    :cond_2
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HostMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit hosts err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized startWatching()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ltmsdk/common/module/hostmonitor/HostsDao;->getInstance()Ltmsdk/common/module/hostmonitor/HostsDao;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/common/module/hostmonitor/HostsDao;->isCheckClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    .local v0, needCheck:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    const-string v1, "HostMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is hosts file observer watching? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-boolean v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zn:Z

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zn:Z

    .line 56
    iget-object v1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zl:Ltmsdk/common/module/hostmonitor/HostsFileObserver;

    invoke-virtual {v1}, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->startWatching()V

    .line 58
    const-string v1, "HostMonitor"

    const-string v2, "hosts file observer start watching"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 50
    .end local v0           #needCheck:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .restart local v0       #needCheck:Z
    :cond_2
    :try_start_1
    const-string v1, "HostMonitor"

    const-string v2, "no need to start hosts file observer, closed"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 50
    .end local v0           #needCheck:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopWatching()V
    .locals 3

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    const-string v0, "HostMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is hosts file observer watching? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-boolean v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zn:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "HostMonitor"

    const-string v1, "hosts file observer stop watching"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zn:Z

    .line 70
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor;->zl:Ltmsdk/common/module/hostmonitor/HostsFileObserver;

    invoke-virtual {v0}, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->stopWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
