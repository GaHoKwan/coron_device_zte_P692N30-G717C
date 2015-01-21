.class public final Ltmsdk/bg/module/network/TrafficCorrectionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_TRAFFIC_DATA:I = -0x1


# instance fields
.field public mLeftTrafficInKb:I

.field public mUsedTrafficInKb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    .line 21
    iput v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    .line 22
    return-void
.end method
