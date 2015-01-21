.class public abstract Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;
.super Ltmsdkobf/gw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ltmsdk/common/module/aresengine/TelephonyEntity;",
        ">",
        "Ltmsdkobf/gw",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TYPE_INCOMING_CALL:Ljava/lang/String; = "incoming_call"

.field public static final TYPE_INCOMING_SMS:Ljava/lang/String; = "incoming_sms"

.field public static final TYPE_OUTGOING_SMS:Ljava/lang/String; = "outing_sms"

.field public static final TYPE_SYSTEM_CALL:Ljava/lang/String; = "system_call"


# instance fields
.field private oB:Ltmsdk/bg/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private oC:Ltmsdk/bg/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private oD:Ltmsdk/bg/module/aresengine/DataHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, this:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<TT;>;"
    invoke-direct {p0}, Ltmsdkobf/gw;-><init>()V

    return-void
.end method

.method public static final createInComingCallInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataInterceptorBuilder",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ltmsdkobf/ha;

    invoke-direct {v0}, Ltmsdkobf/ha;-><init>()V

    return-object v0
.end method

.method public static final createInComingSmsInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataInterceptorBuilder",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ltmsdkobf/hc;

    invoke-direct {v0}, Ltmsdkobf/hc;-><init>()V

    return-object v0
.end method

.method public static final createOutgoingSmsInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataInterceptorBuilder",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ltmsdkobf/hg;

    invoke-direct {v0}, Ltmsdkobf/hg;-><init>()V

    return-object v0
.end method

.method public static final createSystemCallLogInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataInterceptorBuilder",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ltmsdkobf/hi;

    invoke-direct {v0}, Ltmsdkobf/hi;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized bS()Ltmsdk/bg/module/aresengine/DataInterceptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataInterceptor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->getDataMonitor()Ltmsdk/bg/module/aresengine/DataMonitor;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    .line 38
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->getDataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    .line 39
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->getDataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    .line 41
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    if-nez v1, :cond_4

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    goto :goto_1

    .line 39
    :cond_3
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    goto :goto_2

    .line 45
    :cond_4
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/DataMonitor;->bind(Ltmsdk/bg/module/aresengine/DataFilter;)V

    .line 46
    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/aresengine/DataFilter;->a(Ltmsdk/bg/module/aresengine/DataHandler;)V

    .line 48
    new-instance v0, Ltmsdkobf/gx;

    iget-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/gx;-><init>(Ltmsdk/bg/module/aresengine/DataMonitor;Ltmsdk/bg/module/aresengine/DataFilter;Ltmsdk/bg/module/aresengine/DataHandler;)V

    .line 50
    .local v0, impl:Ltmsdkobf/gx;,"Ltmsdkobf/gx<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oC:Ltmsdk/bg/module/aresengine/DataFilter;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-object v0
.end method

.method public abstract getDataFilter()Ltmsdk/bg/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getDataHandler()Ltmsdk/bg/module/aresengine/DataHandler;
.end method

.method public abstract getDataMonitor()Ltmsdk/bg/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public declared-synchronized setDataHandler(Ltmsdk/bg/module/aresengine/DataHandler;)V
    .locals 1
    .parameter "datahandler"

    .prologue
    .line 72
    .local p0, this:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oD:Ltmsdk/bg/module/aresengine/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDataMonitor(Ltmsdk/bg/module/aresengine/DataMonitor;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<TT;>;"
    .local p1, datamonitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->oB:Ltmsdk/bg/module/aresengine/DataMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
