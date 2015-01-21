.class public final Lcom/powermo/connectivity/services/a;
.super Lcom/powermo/connectivity/aidl/b;


# instance fields
.field final synthetic a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;


# direct methods
.method protected constructor <init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-direct {p0}, Lcom/powermo/connectivity/aidl/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIILcom/powermo/connectivity/aidl/MappingInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/services/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powermo/connectivity/rpc/RootServer;->a(IIILcom/powermo/connectivity/aidl/MappingInfo;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILcom/powermo/connectivity/aidl/EffectorEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/services/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powermo/connectivity/rpc/RootServer;->a(ILcom/powermo/connectivity/aidl/EffectorEvent;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILcom/powermo/connectivity/aidl/InputControl;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/services/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powermo/connectivity/rpc/RootServer;->a(ILcom/powermo/connectivity/aidl/InputControl;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILcom/powermo/connectivity/aidl/SensorControl;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/services/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powermo/connectivity/rpc/RootServer;->a(ILcom/powermo/connectivity/aidl/SensorControl;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILcom/powermo/connectivity/aidl/SimpleCommand;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/services/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/powermo/connectivity/services/a;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powermo/connectivity/rpc/RootServer;->a(ILcom/powermo/connectivity/aidl/SimpleCommand;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
