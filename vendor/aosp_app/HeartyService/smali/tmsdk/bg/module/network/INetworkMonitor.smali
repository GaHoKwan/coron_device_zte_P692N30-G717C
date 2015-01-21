.class public interface abstract Ltmsdk/bg/module/network/INetworkMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addCallback(Ltmsdk/bg/module/network/INetworkChangeCallBack;)I
.end method

.method public abstract clearAllLogs()V
.end method

.method public abstract getAllLogs()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefreshState()Z
.end method

.method public abstract notifyConfigChange()V
.end method

.method public abstract removeCallback(I)Z
.end method

.method public abstract removeCallback(Ltmsdk/bg/module/network/INetworkChangeCallBack;)Z
.end method

.method public abstract setRefreshState(Z)V
.end method
