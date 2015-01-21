.class public abstract Lcom/zte/heartyservice/porting/All/VirusDBEngine;
.super Ljava/lang/Object;
.source "VirusDBEngine.java"


# instance fields
.field protected mEngineName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->mEngineName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract SIUInit()V
.end method

.method public abstract SIUcloudVinusScan()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract SIUgetDetectedNotSecurityAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract SIUgetInterceptedPhoneAndMsgList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/InterceptResult;",
            ">;"
        }
    .end annotation
.end method

.method public SIUgetOpenCloudScan(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public abstract SIUinitAntivirusEngine()Z
.end method

.method public abstract SIUscanApkPathForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
.end method

.method public abstract SIUscanAppForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
.end method

.method public abstract SIUscanAppForVinus(Ljava/util/List;Lcom/zte/heartyservice/common/utils/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/heartyservice/common/utils/CallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToBlackList(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract addToWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract engineAppInit(Landroid/app/Application;)V
.end method

.method public getEngineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->mEngineName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getNumLocation(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getTrafficCorrection()Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    invoke-direct {v0}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;-><init>()V

    return-object v0
.end method

.method public abstract initIntercept()V
.end method

.method public abstract isInBlackList(Ljava/lang/String;)Z
.end method

.method public abstract isInWhiteList(Ljava/lang/String;)Z
.end method

.method public abstract removeFromBlackList(Ljava/lang/String;)Z
.end method

.method public abstract removeFromWhiteList(Ljava/lang/String;)Z
.end method

.method public abstract reset2CurrentInterceptMode(Landroid/content/Context;)V
.end method

.method public abstract set2InterceptAll(Landroid/content/Context;)V
.end method

.method public abstract set2OnlyAcceptWhiteList(Landroid/content/Context;)V
.end method

.method public abstract startWhiteListActivity(Landroid/content/Context;)V
.end method

.method public supportAutoTrafficCorrection()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public trafficCorrectionStart()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public trafficCorrectionStop()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public turnOffVipMode()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public turnOnVipMode()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
