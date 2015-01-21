.class public final Ltmsdk/fg/module/qscanner/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 15
    const-class v1, Ltmsdk/fg/module/qscanner/QScannerManager;

    invoke-static {v1}, Ltmsdk/fg/creator/ManagerCreatorF;->getManager(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;

    move-result-object v0

    check-cast v0, Ltmsdk/fg/module/qscanner/QScannerManager;

    .line 16
    .local v0, manager:Ltmsdk/fg/module/qscanner/QScannerManager;
    invoke-virtual {v0, v2, v3}, Ltmsdk/fg/module/qscanner/QScannerManager;->scanInstalledPackages(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v2, v3}, Ltmsdk/fg/module/qscanner/QScannerManager;->scanSdcardApks(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, v2, v3}, Ltmsdk/fg/module/qscanner/QScannerManager;->scanGlobal(Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v2, v2, v3}, Ltmsdk/fg/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0, v2, v2, v3}, Ltmsdk/fg/module/qscanner/QScannerManager;->scanApks(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/QScannerManager;->cancelScan()V

    .line 22
    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/QScannerManager;->continueScan()V

    .line 23
    invoke-virtual {v0}, Ltmsdk/fg/module/qscanner/QScannerManager;->pauseScan()V

    .line 24
    return-void
.end method
