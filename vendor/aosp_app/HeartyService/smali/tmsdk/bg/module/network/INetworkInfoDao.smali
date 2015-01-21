.class public interface abstract Ltmsdk/bg/module/network/INetworkInfoDao;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract getAll()Ljava/util/ArrayList;
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

.method public abstract getClosingDayForMonth()I
.end method

.method public abstract getLastNetDataEntity()Ltmsdk/bg/module/network/NetDataEntity;
.end method

.method public abstract getSystemTimeChange(Ljava/util/Date;)Ltmsdk/common/module/network/NetworkInfoEntity;
.end method

.method public abstract getTodayNetworkInfoEntity()Ltmsdk/common/module/network/NetworkInfoEntity;
.end method

.method public abstract getTotalForMonth()J
.end method

.method public abstract getUsedForMonth()J
.end method

.method public abstract insert(Ltmsdk/common/module/network/NetworkInfoEntity;)V
.end method

.method public abstract resetToDayNetworkInfoEntity()V
.end method

.method public abstract setClosingDayForMonth(I)V
.end method

.method public abstract setLastNetDataEntity(Ltmsdk/bg/module/network/NetDataEntity;)V
.end method

.method public abstract setTodayNetworkInfoEntity(Ltmsdk/common/module/network/NetworkInfoEntity;)V
.end method

.method public abstract setTotalForMonth(J)V
.end method

.method public abstract setUsedForMonth(J)V
.end method
