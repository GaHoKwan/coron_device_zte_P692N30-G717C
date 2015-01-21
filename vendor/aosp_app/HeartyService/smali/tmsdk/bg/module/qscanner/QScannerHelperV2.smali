.class public Ltmsdk/bg/module/qscanner/QScannerHelperV2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultCertChecker(Landroid/content/Context;)Ltmsdk/bg/module/qscanner/ICertCheckerV2;
    .locals 1
    .parameter "context"

    .prologue
    .line 9
    new-instance v0, Ltmsdkobf/iw;

    invoke-direct {v0, p0}, Ltmsdkobf/iw;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
