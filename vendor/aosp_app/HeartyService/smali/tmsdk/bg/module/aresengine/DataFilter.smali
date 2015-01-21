.class public abstract Ltmsdk/bg/module/aresengine/DataFilter;
.super Ltmsdkobf/gv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ltmsdk/common/module/aresengine/TelephonyEntity;",
        ">",
        "Ltmsdkobf/gv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private oD:Ltmsdk/bg/module/aresengine/DataHandler;

.field private uj:Ljava/lang/Object;

.field private uk:Ltmsdk/common/module/aresengine/FilterConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    invoke-direct {p0}, Ltmsdkobf/gv;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DataFilter;->uj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected varargs abstract a(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ltmsdk/common/module/aresengine/FilterResult;"
        }
    .end annotation
.end method

.method protected a(Ltmsdk/bg/module/aresengine/DataHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 73
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataFilter;->uj:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iput-object p1, p0, Ltmsdk/bg/module/aresengine/DataFilter;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected varargs a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterResult;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "result"
    .parameter "datas"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ltmsdk/common/module/aresengine/FilterResult;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    .local p1, data:Ltmsdk/common/module/aresengine/TelephonyEntity;,"TT;"
    return-void
.end method

.method protected varargs b(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "datas"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    .local p1, data:Ltmsdk/common/module/aresengine/TelephonyEntity;,"TT;"
    return-void
.end method

.method public abstract defalutFilterConfig()Ltmsdk/common/module/aresengine/FilterConfig;
.end method

.method public final varargs filter(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
    .locals 3
    .parameter
    .parameter "datas"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ltmsdk/common/module/aresengine/FilterResult;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    .local p1, data:Ltmsdk/common/module/aresengine/TelephonyEntity;,"TT;"
    invoke-virtual {p0, p1, p2}, Ltmsdk/bg/module/aresengine/DataFilter;->b(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Ltmsdk/bg/module/aresengine/DataFilter;->a(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v0

    .line 56
    .local v0, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p0, p1, v0, p2}, Ltmsdk/bg/module/aresengine/DataFilter;->a(Ltmsdk/common/module/aresengine/TelephonyEntity;Ltmsdk/common/module/aresengine/FilterResult;[Ljava/lang/Object;)V

    .line 58
    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DataFilter;->uj:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataFilter;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataFilter;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    invoke-virtual {v1, v0}, Ltmsdk/bg/module/aresengine/DataHandler;->sendMessage(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 62
    :cond_0
    monitor-exit v2

    .line 64
    return-object v0

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized getConfig()Ltmsdk/common/module/aresengine/FilterConfig;
    .locals 1

    .prologue
    .line 40
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DataFilter;->uk:Ltmsdk/common/module/aresengine/FilterConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setConfig(Ltmsdk/common/module/aresengine/FilterConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 28
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 29
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the filter\'s config can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 32
    :cond_0
    :try_start_1
    iput-object p1, p0, Ltmsdk/bg/module/aresengine/DataFilter;->uk:Ltmsdk/common/module/aresengine/FilterConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    return-void
.end method

.method protected unbind()V
    .locals 2

    .prologue
    .line 83
    .local p0, this:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<TT;>;"
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataFilter;->uj:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DataFilter;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
