.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;
.source "OP09GeneralStrategy.java"


# static fields
.field private static final CHINA_TELECOME_MACCO_MCC:Ljava/lang/String; = "455"

.field private static final CHINA_TELECOME_MAINLAND_MCC:Ljava/lang/String; = "460"

.field private static final TAG:Ljava/lang/String; = "[OP09GeneralStrategy]"


# instance fields
.field private mIsNewSimInserted:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "controller"
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;-><init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "[OP09GeneralStrategy]"

    return-object v0
.end method

.method public isHomeNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "mcc"

    .prologue
    const/4 v0, 0x0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHomeNetwork: mcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->logd(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_1

    .line 64
    const-string v1, "460"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "455"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 68
    :cond_1
    return v0
.end method

.method public onDualPhoneRadioAvailable()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDualPhoneRadioAvailable: mIsNewSimInserted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->mIsNewSimInserted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->logd(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onDualPhoneRadioOn(I)V
    .locals 4
    .parameter "reason"

    .prologue
    const/4 v3, 0x2

    .line 85
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->mDualModePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 86
    .local v0, phoneType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualPhoneRadioOn: reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsNewSimInserted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->mIsNewSimInserted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->logd(Ljava/lang/String;)V

    .line 90
    if-ne v0, v3, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->mIsNewSimInserted:Z

    if-nez v1, :cond_0

    if-ne p1, v3, :cond_1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->clearCdmaAvoidNetworkList()V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->mIsNewSimInserted:Z

    .line 95
    :cond_1
    return-void
.end method

.method public onNewSimInserted(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewSimInserted: simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->logd(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09GeneralStrategy;->mIsNewSimInserted:Z

    .line 76
    return-void
.end method
