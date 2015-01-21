.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;
.source "OP09NetworkSelectionStrategy.java"


# static fields
.field private static final EVENT_GSM2_VOICE_CALL_ENDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[OP09NWSelectionStrategy]"


# instance fields
.field private mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "controller"
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;-><init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 62
    new-instance v0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy$1;

    invoke-direct {v0, p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy$1;-><init>(Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;)V

    iput-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mHandler:Landroid/os/Handler;

    .line 81
    check-cast p3, Lcom/android/internal/telephony/PhoneProxy;

    .end local p3
    invoke-virtual {p3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mDualModePhoneCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->handleGsm2CallEnd()V

    return-void
.end method

.method private handleGsm2CallEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 284
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mDualModePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 285
    .local v0, phoneType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle EVENT_GSM2_VOICE_CALL_ENDED: phoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isGsm2RegInHome()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isGsm2NoService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1, v3, v3}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 291
    :cond_0
    return-void
.end method

.method private invaldOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .parameter "plmnNumericCdma"

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isCdmaResumeAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "plmnNumericCdma"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isSingleCdmaCard()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->invaldOperatorNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isHomeNetwork(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->ignoreSearchedState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->hasSearchedOnGsm()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isGsm2InVoiceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 196
    .local v0, isCdmaResumeAllowed:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaResumeAllowed: isCdmaResumeAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 197
    return v0

    .line 190
    .end local v0           #isCdmaResumeAllowed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsm2InVoiceCall()Z
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSM(2) call sate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsm2NoService()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isSimInsert()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-string v0, "GSM(2) is in no service state with SIM inserted."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsm2RegInHome()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 254
    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 256
    :cond_0
    const-string v2, "gsm.operator.numeric.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, plmnNumericGsm:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v2, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->isHomeNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSM(2) is regestered in home network, plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 264
    .end local v0           #plmnNumericGsm:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHomeNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "plmnNumericCdma"

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1, p1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->isHomeNetwork(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v0, p1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->isHomeNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSingleCdmaCard()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->getDualModePhoneCardType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, "[OP09NWSelectionStrategy]"

    return-object v0
.end method

.method public needToBootOnCdma()Z
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needToBootOnCdma: hasSearchedOnCdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->hasSearchedOnCdma()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public needToBootOnGsm()Z
    .locals 1

    .prologue
    .line 86
    const-string v0, "needToBootOnGsm..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onCdmaPlmnChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "plmnNumericCdma"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCdmaPlmnChanged: plmnNumericCdma = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 131
    const-string v1, "2134"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mDualModePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMccBySidLtmOff: new  plmnNumericCdma = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 140
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isCdmaResumeAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    const-string v1, "Resume CDMA register."

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1, v3, v4}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->resumeRegistration(II)V

    .line 144
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isGsm2InVoiceCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const-string v1, "Resume CDMA register due to GSM(2) is in voice call, then switch phone after call ended."

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    :cond_3
    :goto_0
    return-void

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1, v4, v4}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    move-result v0

    .line 155
    .local v0, ret:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMA 2nd network selection try to switch to GSM mode: ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 159
    if-eqz v0, :cond_3

    .line 160
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1, v3, v4}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->resumeRegistration(II)V

    goto :goto_0
.end method

.method public onGsmSuspend([Ljava/lang/String;I)V
    .locals 4
    .parameter "plmnString"
    .parameter "suspendedSession"

    .prologue
    const/4 v3, 0x0

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGsmSuspend: i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plmnString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",suspendedSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->isHomeNetwork(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch to CDMA mode because current is in home land: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1, v3}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->blockSwitchPhone(Z)V

    .line 119
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 126
    :goto_1
    return-void

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1, v3, p2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->resumeRegistration(II)V

    goto :goto_1
.end method

.method public onNoService(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v2, 0x2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoService: phoneType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 169
    if-ne p1, v2, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isGsm2NoService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isGsm2RegInHome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->isGsm2InVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const-string v0, "Keep searching CDMA signal due to there is no GSM serviceor GSM(2) is registered in home or GSM(2) is in a voice call."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    goto :goto_0
.end method

.method public onPostSwitchPhone()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "onPostSwitchPhone..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onPreSwitchPhone()I
    .locals 1

    .prologue
    .line 98
    const-string v0, "onPreSwitchPhone..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09NetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    return v0
.end method
