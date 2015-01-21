.class public final Ltmsdk/fg/module/qscanner/QScannerManager;
.super Ltmsdk/fg/creator/BaseManagerF;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private EV:Ltmsdk/fg/module/qscanner/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ltmsdk/fg/creator/BaseManagerF;-><init>()V

    return-void
.end method

.method public static getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 223
    invoke-static {p0}, Ltmsdk/fg/module/qscanner/d;->getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/d;->cancelScan()V

    goto :goto_0
.end method

.method public cloudScan(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, entitys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->a(Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public continueScan()V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/d;->continueScan()V

    goto :goto_0
.end method

.method public freeScanner()V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/d;->freeScanner()V

    goto :goto_0
.end method

.method public getApkClass(Ljava/lang/String;)I
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 210
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/d;->getApkClass(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public initScanner()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/d;->initScanner()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    new-instance v0, Ltmsdk/fg/module/qscanner/d;

    invoke-direct {v0}, Ltmsdk/fg/module/qscanner/d;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    .line 39
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/d;->onCreate(Landroid/content/Context;)V

    .line 40
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {p0, v0}, Ltmsdk/fg/module/qscanner/QScannerManager;->a(Ltmsdk/common/BaseManager;)V

    .line 43
    const v0, 0x1d4c5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 44
    return-void
.end method

.method public pauseScan()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/d;->pauseScan()V

    goto :goto_0
.end method

.method public scanApks(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, apkPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/fg/module/qscanner/d;->scanApks(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanGlobal(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->scanGlobal(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanInstalledPackages(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->scanInstalledPackages(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanPackages(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/fg/module/qscanner/d;->scanPackages(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public scanSdcardApks(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "scanListener"
    .parameter "doCloudScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManager;->EV:Ltmsdk/fg/module/qscanner/d;

    invoke-virtual {v0, p1, p2}, Ltmsdk/fg/module/qscanner/d;->scanSdcardApks(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
