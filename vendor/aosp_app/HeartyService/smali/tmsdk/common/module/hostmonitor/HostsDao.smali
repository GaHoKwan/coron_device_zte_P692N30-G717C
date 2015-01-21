.class public Ltmsdk/common/module/hostmonitor/HostsDao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ze:Ltmsdk/common/module/hostmonitor/HostsDao;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsDao;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Ltmsdk/common/module/hostmonitor/HostsDao;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private fg()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsDao;->mContext:Landroid/content/Context;

    const-string v1, "hst_conf"

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ltmsdk/common/module/hostmonitor/HostsDao;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Ltmsdk/common/module/hostmonitor/HostsDao;->ze:Ltmsdk/common/module/hostmonitor/HostsDao;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Ltmsdk/common/module/hostmonitor/HostsDao;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Ltmsdk/common/module/hostmonitor/HostsDao;->ze:Ltmsdk/common/module/hostmonitor/HostsDao;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ltmsdk/common/module/hostmonitor/HostsDao;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ltmsdk/common/module/hostmonitor/HostsDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/common/module/hostmonitor/HostsDao;->ze:Ltmsdk/common/module/hostmonitor/HostsDao;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Ltmsdk/common/module/hostmonitor/HostsDao;->ze:Ltmsdk/common/module/hostmonitor/HostsDao;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getTimerAlarmed()J
    .locals 6

    .prologue
    .line 58
    invoke-direct {p0}, Ltmsdk/common/module/hostmonitor/HostsDao;->fg()Ltmsdkobf/jg;

    move-result-object v2

    const-string v3, "b"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Ltmsdkobf/jg;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 59
    .local v0, time:J
    const-string v2, "HostMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get timer alarmed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-wide v0
.end method

.method public isCheckClosed()Z
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Ltmsdk/common/module/hostmonitor/HostsDao;->fg()Ltmsdkobf/jg;

    move-result-object v1

    const-string v2, "a"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ltmsdkobf/jg;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 44
    .local v0, flag:Z
    const-string v1, "HostMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is check closed? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return v0
.end method

.method public setCheckClosed(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 53
    const-string v0, "HostMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set check closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Ltmsdk/common/module/hostmonitor/HostsDao;->fg()Ltmsdkobf/jg;

    move-result-object v0

    const-string v1, "a"

    invoke-interface {v0, v1, p1}, Ltmsdkobf/jg;->c(Ljava/lang/String;Z)Z

    .line 55
    return-void
.end method

.method public setTimerAlarmed(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 64
    const-string v0, "HostMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set timer alarmed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Ltmsdk/common/module/hostmonitor/HostsDao;->fg()Ltmsdkobf/jg;

    move-result-object v0

    const-string v1, "b"

    invoke-interface {v0, v1, p1, p2}, Ltmsdkobf/jg;->a(Ljava/lang/String;J)Z

    .line 66
    return-void
.end method
