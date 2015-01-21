.class Ltmsdk/common/module/hostmonitor/HostsMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/hostmonitor/HostsMonitor;->asyncCheckHostsChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;


# direct methods
.method constructor <init>(Ltmsdk/common/module/hostmonitor/HostsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 98
    const-string v5, "HostMonitor"

    const-string v6, "check hosts file change, begin"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v5, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-virtual {v5}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->stopWatching()V

    .line 104
    :try_start_0
    invoke-static {}, Ltmsdk/common/module/hostmonitor/HostsDao;->getInstance()Ltmsdk/common/module/hostmonitor/HostsDao;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/common/module/hostmonitor/HostsDao;->isCheckClosed()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    .line 105
    .local v3, needCheck:Z
    :goto_0
    const-string v5, "HostMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need to check? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    if-eqz v3, :cond_0

    .line 108
    iget-object v5, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-static {v5}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->a(Ltmsdk/common/module/hostmonitor/HostsMonitor;)Ltmsdkobf/p;

    move-result-object v0

    .line 109
    .local v0, configList:Ltmsdkobf/p;
    invoke-static {v0}, Ltmsdk/common/module/hostmonitor/HostsChecker;->fixHostsFile(Ltmsdkobf/p;)Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, hostsResults:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/hostmonitor/HostsResult;>;"
    iget-object v5, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-static {v5, v2}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->a(Ltmsdk/common/module/hostmonitor/HostsMonitor;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0           #configList:Ltmsdkobf/p;
    .end local v2           #hostsResults:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/hostmonitor/HostsResult;>;"
    .end local v3           #needCheck:Z
    :cond_0
    :goto_1
    iget-object v5, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-virtual {v5}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->startWatching()V

    .line 119
    iget-object v5, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$1;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-static {v5, v4}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->a(Ltmsdk/common/module/hostmonitor/HostsMonitor;Z)Z

    .line 121
    const-string v4, "HostMonitor"

    const-string v5, "check hosts file change, end"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void

    :cond_1
    move v3, v4

    .line 104
    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "HostMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check hosts file change, err: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
