.class public abstract Ltmsdk/bg/module/aresengine/DataMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ltmsdk/common/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private oC:Ltmsdk/bg/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private um:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private un:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->un:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 115
    return-void
.end method


# virtual methods
.method protected varargs a(ZLtmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 0
    .parameter "isabort"
    .parameter
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    .local p2, data:Ltmsdk/common/module/aresengine/TelephonyEntity;,"TT;"
    return-void
.end method

.method public final addCallback(Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    .local p1, callback:Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;,"Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback<TT;>;"
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public bind(Ltmsdk/bg/module/aresengine/DataFilter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    .local p1, filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->un:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iput-object p1, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    .line 88
    monitor-exit v1

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    .local p1, data:Ltmsdk/common/module/aresengine/TelephonyEntity;,"TT;"
    if-eqz p1, :cond_3

    .line 27
    const/4 v2, 0x0

    .line 29
    .local v2, isAbort:Z
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 30
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;

    .line 31
    .local v0, callback:Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;,"Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback<TT;>;"
    invoke-virtual {v0, p1}, Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;->onCallback(Ltmsdk/common/module/aresengine/TelephonyEntity;)V

    .line 34
    invoke-static {v0}, Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;->a(Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;)Z

    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 42
    .end local v0           #callback:Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;,"Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback<TT;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, v2, p1, p2}, Ltmsdk/bg/module/aresengine/DataMonitor;->a(ZLtmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 44
    if-nez v2, :cond_3

    .line 45
    iget-object v4, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->un:Ljava/lang/Object;

    monitor-enter v4

    .line 46
    :try_start_0
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    if-eqz v3, :cond_2

    .line 47
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    invoke-virtual {v3, p1, p2}, Ltmsdk/bg/module/aresengine/DataFilter;->filter(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    .line 49
    :cond_2
    monitor-exit v4

    .line 53
    .end local v2           #isAbort:Z
    :cond_3
    return-void

    .line 49
    .restart local v2       #isAbort:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final removeCallback(Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    .local p1, callback:Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;,"Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback<TT;>;"
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public setRegisterState(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 107
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 96
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->un:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
