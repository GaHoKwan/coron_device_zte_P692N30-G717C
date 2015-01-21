.class public abstract Ltmsdk/common/BaseService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdk/common/BaseService;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Ltmsdk/common/BaseService;->onBind()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/BaseService;->mBinder:Landroid/os/IBinder;

    .line 27
    :cond_0
    iget-object v0, p0, Ltmsdk/common/BaseService;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onBind()Landroid/os/IBinder;
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    return-void
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 42
    return-void
.end method
