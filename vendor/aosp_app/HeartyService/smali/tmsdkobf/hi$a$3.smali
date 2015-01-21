.class Ltmsdkobf/hi$a$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hi$a;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pA:Ltmsdkobf/hi$a;

.field final synthetic pB:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ltmsdkobf/hi$a;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    iput-object p3, p0, Ltmsdkobf/hi$a$3;->pB:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 180
    const-class v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastCallLog()Ltmsdk/common/module/aresengine/CallLogEntity;

    move-result-object v0

    .line 184
    .local v0, lastCallLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Ltmsdkobf/hi$a$3;->pB:Landroid/os/Handler;

    new-instance v2, Ltmsdkobf/hi$a$3$1;

    invoke-direct {v2, p0, v0}, Ltmsdkobf/hi$a$3$1;-><init>(Ltmsdkobf/hi$a$3;Ltmsdk/common/module/aresengine/CallLogEntity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    .end local v0           #lastCallLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
