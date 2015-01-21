.class interface abstract Lcom/mediatek/smsreg/ConfigInfoGenerator;
.super Ljava/lang/Object;
.source "XMLgenerator.java"


# virtual methods
.method public abstract getCustomizedStatus()Z
.end method

.method public abstract getManufacturerName()Ljava/lang/String;
.end method

.method public abstract getNetworkNumber()[Ljava/lang/String;
.end method

.method public abstract getOemName()Ljava/lang/String;
.end method

.method public abstract getOperatorName()Ljava/lang/String;
.end method

.method public abstract getSmsInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/smsreg/SmsInfoUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmsNumber()Ljava/lang/String;
.end method

.method public abstract getSmsPort()Ljava/lang/Short;
.end method

.method public abstract getSrcPort()Ljava/lang/Short;
.end method
