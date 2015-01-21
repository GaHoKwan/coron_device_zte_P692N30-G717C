.class public abstract Ltmsdk/fg/module/qscanner/QScanListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloudScan()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onCloudScanError(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 59
    return-void
.end method

.method public onPackageScanProgress(ILtmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 0
    .parameter "progress"
    .parameter "result"

    .prologue
    .line 32
    return-void
.end method

.method public onScanCanceled()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onScanContinue()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onScanFinished(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    return-void
.end method

.method public onScanPaused()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onScanStarted()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onSdcardScanProgress(ILtmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 0
    .parameter "progress"
    .parameter "result"

    .prologue
    .line 42
    return-void
.end method
