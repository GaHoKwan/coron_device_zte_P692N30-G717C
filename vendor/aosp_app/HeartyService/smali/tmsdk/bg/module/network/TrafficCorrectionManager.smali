.class public final Ltmsdk/bg/module/network/TrafficCorrectionManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field wh:Ltmsdk/bg/module/network/i;

.field wi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CodeName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wi:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAllProvinces()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CodeName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wi:Ljava/util/ArrayList;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ltmsdk/bg/module/network/b;->getAllProvinces()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getBrands(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "carryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CodeName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wi:Ljava/util/ArrayList;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ltmsdk/bg/module/network/b;->getBrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CodeName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wi:Ljava/util/ArrayList;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ltmsdk/bg/module/network/b;->getCarries()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCities(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "provinceCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CodeName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wi:Ljava/util/ArrayList;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ltmsdk/bg/module/network/b;->getCities(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfig()Ltmsdk/bg/module/network/TrafficCorrectionConfig;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    invoke-direct {v0}, Ltmsdk/bg/module/network/TrafficCorrectionConfig;-><init>()V

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wh:Ltmsdk/bg/module/network/i;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/i;->getConfig()Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public getCorrectionResult(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "result"
    .parameter "retNumber"
    .parameter "retBody"

    .prologue
    .line 58
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const v0, -0x1869f

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wh:Ltmsdk/bg/module/network/i;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/bg/module/network/i;->getCorrectionResult(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    new-instance v0, Ltmsdk/bg/module/network/i;

    invoke-direct {v0}, Ltmsdk/bg/module/network/i;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wh:Ltmsdk/bg/module/network/i;

    .line 21
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wh:Ltmsdk/bg/module/network/i;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/i;->onCreate(Landroid/content/Context;)V

    .line 22
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wh:Ltmsdk/bg/module/network/i;

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->a(Ltmsdk/common/BaseManager;)V

    .line 25
    const v0, 0x1d4cd

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 26
    return-void
.end method

.method public setConfig(Ltmsdk/bg/module/network/TrafficCorrectionConfig;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 72
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const v0, -0x1869f

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wh:Ltmsdk/bg/module/network/i;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/i;->setConfig(Ltmsdk/bg/module/network/TrafficCorrectionConfig;)I

    move-result v0

    goto :goto_0
.end method

.method public startCorrection(Ljava/util/ArrayList;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/bg/module/network/CorrectionDataInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/bg/module/network/CorrectionDataInfo;>;"
    invoke-static {}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const v0, -0x1869f

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/TrafficCorrectionManager;->wh:Ltmsdk/bg/module/network/i;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/i;->startCorrection(Ljava/util/ArrayList;)I

    move-result v0

    goto :goto_0
.end method
