.class public Ltmsdk/fg/module/qscanner/QScannerManagerV2;
.super Ltmsdk/fg/creator/BaseManagerF;
.source "SourceFile"


# instance fields
.field private Fg:Ltmsdk/fg/module/qscanner/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ltmsdk/fg/creator/BaseManagerF;-><init>()V

    return-void
.end method

.method public static getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 246
    invoke-static {p0}, Ltmsdk/fg/module/qscanner/e;->getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/e;->cancelScan()V

    goto :goto_0
.end method

.method public certCheckInstalledPackage(Ljava/lang/String;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 1
    .parameter "pkgname"

    .prologue
    .line 233
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->certCheckInstalledPackage(Ljava/lang/String;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public cloudScan(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, entitys:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1, p2}, Ltmsdk/fg/module/qscanner/e;->cloudScan(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public continueScan()V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/e;->continueScan()V

    goto :goto_0
.end method

.method public freeScanner()V
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/e;->freeScanner()V

    goto :goto_0
.end method

.method public handleSpecial(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 144
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->handleSpecial(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z

    move-result v0

    goto :goto_0
.end method

.method public handleSystemFlaw(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 116
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->handleSystemFlaw(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z

    move-result v0

    goto :goto_0
.end method

.method public initScanner()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/e;->initScanner()V

    goto :goto_0
.end method

.method public loadBehaviorConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/e;->loadBehaviorConfig()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public nativeScanInstalledPackages(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 2
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->a(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public nativeScanSelectedApks(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, apkPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1, p2}, Ltmsdk/fg/module/qscanner/e;->c(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public nativeScanSelectedPackages(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1, p2}, Ltmsdk/fg/module/qscanner/e;->b(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public nativeScanSpecials(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 2
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->d(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public nativeScanSystemFlaws(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 2
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->c(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public nativeScanUninstalledApks(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;
    .locals 2
    .parameter "scanListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/QScanListenerV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->b(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    new-instance v0, Ltmsdk/fg/module/qscanner/e;

    invoke-direct {v0}, Ltmsdk/fg/module/qscanner/e;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    .line 28
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0, p1}, Ltmsdk/fg/module/qscanner/e;->onCreate(Landroid/content/Context;)V

    .line 29
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {p0, v0}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->a(Ltmsdk/common/BaseManager;)V

    .line 32
    const v0, 0x1d4c5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 33
    return-void
.end method

.method public pauseScan()V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->Fg:Ltmsdk/fg/module/qscanner/e;

    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/e;->pauseScan()V

    goto :goto_0
.end method
