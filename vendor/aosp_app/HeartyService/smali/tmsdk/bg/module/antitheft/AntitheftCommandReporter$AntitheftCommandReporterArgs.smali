.class public Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AntitheftCommandReporterArgs"
.end annotation


# instance fields
.field public aLatitute:D

.field public accuracy:D

.field public mAction:Ltmsdk/common/module/antitheft/AntitheftCommand;

.field public mIsReleaseVersion:Z

.field public mLongtitute:D

.field public mResult:S


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-short v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mResult:S

    .line 23
    iput-wide v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mLongtitute:D

    .line 24
    iput-wide v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->aLatitute:D

    .line 25
    iput-wide v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->accuracy:D

    .line 26
    iput-boolean v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mIsReleaseVersion:Z

    return-void
.end method
