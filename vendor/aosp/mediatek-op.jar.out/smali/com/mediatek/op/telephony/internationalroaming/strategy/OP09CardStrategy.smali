.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultCardStrategy;
.source "OP09CardStrategy.java"


# static fields
.field private static final CHINA_TELECOME_FAKE_PLMN:Ljava/lang/String; = "46099"

.field private static final CHINA_TELECOME_MACCO_PLMN:Ljava/lang/String; = "45502"

.field private static final CHINA_TELECOME_MAINLAND_PLMN:Ljava/lang/String; = "46003"

.field private static final PLMN_STRING_LENGTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[OP09CardStrategy]"


# direct methods
.method public constructor <init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "controller"
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultCardStrategy;-><init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 61
    return-void
.end method

.method private isChineseCdmaCard(Ljava/lang/String;)Z
    .locals 1
    .parameter "cdmaImsi"

    .prologue
    .line 122
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "45502"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOperatorForNewSim(ILjava/lang/String;)V
    .locals 5
    .parameter "dualSimId"
    .parameter "cdmaImsi"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 103
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOperatorForNewSim: dualSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cdmaImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->logd(Ljava/lang/String;)V

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->isChineseCdmaCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->mContext:Landroid/content/Context;

    const-string v2, "OP09"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->mContext:Landroid/content/Context;

    const-string v2, "others"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I

    goto :goto_0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "[OP09CardStrategy]"

    return-object v0
.end method

.method public onSimImsiLoaded(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "dualSimId"
    .parameter "cdmaImsi"
    .parameter "gsmImsi"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimImsiLoaded: dualSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cdmaImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->logd(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->setOperatorForNewSim(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public parseCardType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "cdmaImsi"
    .parameter "gsmImsi"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseCardType: cdmaImsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gsmImsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->logd(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    const/4 v1, 0x3

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 72
    invoke-direct {p0, p1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->isChineseCdmaCard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, gsmMccMnc:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCardType: gsmMccMnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09CardStrategy;->logd(Ljava/lang/String;)V

    .line 75
    const-string v2, "46099"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    .end local v0           #gsmMccMnc:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 82
    goto :goto_0
.end method
