.class public final Ltmsdk/common/module/optimize/OptimizeManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private Aa:Ltmsdk/common/module/optimize/f;

.field private Ab:Ltmsdk/common/module/optimize/c;

.field private Ac:Ltmsdk/common/module/optimize/e;

.field private Ad:Ltmsdk/common/module/optimize/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public closeProcess(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 57
    :cond_0
    const v0, 0x1d4d7

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 59
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/optimize/f;->closeProcess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public closeProcess(Ljava/lang/String;ZZ)Z
    .locals 1
    .parameter "pkg"
    .parameter "hasroot"
    .parameter "enforecheck"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 80
    :cond_0
    const v0, 0x1d4d7

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 82
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/optimize/f;->closeProcess(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public closeProcess(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    const v0, 0x1d4d7

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 115
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/optimize/f;->closeProcess(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public closeProcess(Ljava/util/List;ZZ)Z
    .locals 1
    .parameter
    .parameter "hasroot"
    .parameter "enforcecheck"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_0
    const v0, 0x1d4d7

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 99
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/optimize/f;->closeProcess(Ljava/util/List;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public getAllRunningProcess(Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "containSysApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/optimize/ProcessEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/optimize/f;->getAllRunningProcess(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getAutoBootHelper()Ltmsdk/common/module/optimize/IAutoBootHelper;
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ab:Ltmsdk/common/module/optimize/c;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ltmsdk/common/module/optimize/c;

    invoke-direct {v0}, Ltmsdk/common/module/optimize/c;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ab:Ltmsdk/common/module/optimize/c;

    .line 128
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ab:Ltmsdk/common/module/optimize/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v0}, Ltmsdk/common/module/optimize/f;->getAutoBootHelper()Ltmsdk/common/module/optimize/IAutoBootHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCpuHelper()Ltmsdk/common/module/optimize/ICpuHelper;
    .locals 3

    .prologue
    .line 155
    monitor-enter p0

    const v1, 0x1d4da

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ltmsdkobf/im;->a(II)V

    .line 157
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v1}, Ltmsdk/common/module/optimize/f;->getCpuHelper()Ltmsdk/common/module/optimize/ICpuHelper;

    move-result-object v0

    .line 158
    .local v0, orgiHelper:Ltmsdk/common/module/optimize/ICpuHelper;
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ad:Ltmsdk/common/module/optimize/d;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Ltmsdk/common/module/optimize/d;

    invoke-direct {v1, v0}, Ltmsdk/common/module/optimize/d;-><init>(Ltmsdk/common/module/optimize/ICpuHelper;)V

    iput-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ad:Ltmsdk/common/module/optimize/d;

    .line 162
    :cond_0
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ad:Ltmsdk/common/module/optimize/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v1}, Ltmsdk/common/module/optimize/f;->getCpuHelper()Ltmsdk/common/module/optimize/ICpuHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 155
    .end local v0           #orgiHelper:Ltmsdk/common/module/optimize/ICpuHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMemoryHelper()Ltmsdk/common/module/optimize/IMemoryHelper;
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v1}, Ltmsdk/common/module/optimize/f;->getMemoryHelper()Ltmsdk/common/module/optimize/IMemoryHelper;

    move-result-object v0

    .line 139
    .local v0, origHelper:Ltmsdk/common/module/optimize/IMemoryHelper;
    invoke-static {}, Ltmsdk/common/module/optimize/OptimizeManager;->dn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ac:Ltmsdk/common/module/optimize/e;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ltmsdk/common/module/optimize/e;

    invoke-direct {v1, v0}, Ltmsdk/common/module/optimize/e;-><init>(Ltmsdk/common/module/optimize/IMemoryHelper;)V

    iput-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ac:Ltmsdk/common/module/optimize/e;

    .line 144
    :cond_0
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Ac:Ltmsdk/common/module/optimize/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v1}, Ltmsdk/common/module/optimize/f;->getMemoryHelper()Ltmsdk/common/module/optimize/IMemoryHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 138
    .end local v0           #origHelper:Ltmsdk/common/module/optimize/IMemoryHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    new-instance v0, Ltmsdk/common/module/optimize/f;

    invoke-direct {v0}, Ltmsdk/common/module/optimize/f;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    .line 28
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/optimize/f;->onCreate(Landroid/content/Context;)V

    .line 29
    iget-object v0, p0, Ltmsdk/common/module/optimize/OptimizeManager;->Aa:Ltmsdk/common/module/optimize/f;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/optimize/OptimizeManager;->a(Ltmsdk/common/BaseManager;)V

    .line 30
    return-void
.end method
