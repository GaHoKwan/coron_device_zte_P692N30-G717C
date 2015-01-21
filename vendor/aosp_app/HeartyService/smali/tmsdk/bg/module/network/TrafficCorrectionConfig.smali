.class public final Ltmsdk/bg/module/network/TrafficCorrectionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBrandId:Ljava/lang/String;

.field public mCarryId:Ljava/lang/String;

.field public mCityId:Ljava/lang/String;

.field public mProvinceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "province"
    .parameter "city"
    .parameter "carry"
    .parameter "brand"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    .line 43
    return-void
.end method
