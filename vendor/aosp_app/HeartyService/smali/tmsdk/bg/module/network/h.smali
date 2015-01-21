.class final Ltmsdk/bg/module/network/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/bg/module/network/INetworkMonitor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Ltmsdk/bg/module/network/INetworkChangeCallBack;)I
    .locals 1
    .parameter "callback"

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllLogs()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public getAllLogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRefreshState()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public notifyConfigChange()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public removeCallback(I)Z
    .locals 1
    .parameter "handle"

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public removeCallback(Ltmsdk/bg/module/network/INetworkChangeCallBack;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public setRefreshState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 322
    return-void
.end method
