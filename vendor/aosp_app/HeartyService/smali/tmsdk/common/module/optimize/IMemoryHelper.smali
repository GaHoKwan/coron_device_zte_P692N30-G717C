.class public interface abstract Ltmsdk/common/module/optimize/IMemoryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    }
.end annotation


# virtual methods
.method public abstract clearAllCacheData()Z
.end method

.method public abstract getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
.end method

.method public abstract getFreeMemery()J
.end method

.method public abstract getRamSize([I)[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
.end method

.method public abstract getRamSize([Ljava/lang/String;)[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
.end method

.method public abstract getTotalMemery()J
.end method
