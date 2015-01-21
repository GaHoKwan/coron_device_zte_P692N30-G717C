.class public Ltmsdk/fg/module/qscanner/QScanListenerV2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoundElseFile(ILjava/io/File;)V
    .locals 0
    .parameter "scanType"
    .parameter "file"

    .prologue
    .line 39
    return-void
.end method

.method public onScanCanceled(I)V
    .locals 0
    .parameter "scanType"

    .prologue
    .line 72
    return-void
.end method

.method public onScanContinue(I)V
    .locals 0
    .parameter "scanType"

    .prologue
    .line 65
    return-void
.end method

.method public onScanError(II)V
    .locals 0
    .parameter "scanType"
    .parameter "errCode"

    .prologue
    .line 51
    return-void
.end method

.method public onScanFinished(ILjava/util/List;)V
    .locals 0
    .parameter "scanType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    return-void
.end method

.method public onScanPaused(I)V
    .locals 0
    .parameter "scanType"

    .prologue
    .line 58
    return-void
.end method

.method public onScanProgress(IILtmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 0
    .parameter "scanType"
    .parameter "progress"
    .parameter "result"

    .prologue
    .line 32
    return-void
.end method

.method public onScanStarted(I)V
    .locals 0
    .parameter "scanType"

    .prologue
    .line 18
    return-void
.end method
