.class final Ltmsdk/common/module/optimize/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/optimize/IMemoryHelper;


# instance fields
.field private zZ:Ltmsdk/common/module/optimize/IMemoryHelper;


# direct methods
.method constructor <init>(Ltmsdk/common/module/optimize/IMemoryHelper;)V
    .locals 0
    .parameter "origHealper"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Ltmsdk/common/module/optimize/e;->zZ:Ltmsdk/common/module/optimize/IMemoryHelper;

    .line 191
    return-void
.end method


# virtual methods
.method public clearAllCacheData()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .parameter
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

    .prologue
    .line 225
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Ltmsdk/common/module/optimize/e;->zZ:Ltmsdk/common/module/optimize/IMemoryHelper;

    invoke-interface {v0, p1}, Ltmsdk/common/module/optimize/IMemoryHelper;->getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 1
    .parameter "pkg"

    .prologue
    .line 220
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFreeMemery()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Ltmsdk/common/module/optimize/e;->zZ:Ltmsdk/common/module/optimize/IMemoryHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/IMemoryHelper;->getFreeMemery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRamSize([I)[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    .locals 1
    .parameter "pids"

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRamSize([Ljava/lang/String;)[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;
    .locals 1
    .parameter "pkgs"

    .prologue
    .line 205
    iget-object v0, p0, Ltmsdk/common/module/optimize/e;->zZ:Ltmsdk/common/module/optimize/IMemoryHelper;

    invoke-interface {v0, p1}, Ltmsdk/common/module/optimize/IMemoryHelper;->getRamSize([Ljava/lang/String;)[Ltmsdk/common/module/optimize/IMemoryHelper$MemoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMemery()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Ltmsdk/common/module/optimize/e;->zZ:Ltmsdk/common/module/optimize/IMemoryHelper;

    invoke-interface {v0}, Ltmsdk/common/module/optimize/IMemoryHelper;->getTotalMemery()J

    move-result-wide v0

    return-wide v0
.end method
