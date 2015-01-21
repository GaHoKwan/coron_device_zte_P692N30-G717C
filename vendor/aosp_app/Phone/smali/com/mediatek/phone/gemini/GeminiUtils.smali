.class public final Lcom/mediatek/phone/gemini/GeminiUtils;
.super Lcom/mediatek/gemini/simui/CommonUtils;
.source "GeminiUtils.java"


# static fields
.field private static final CDMA_CHANGE_FEATURE:[[Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field public static final EXTRA_CDMA_SUPPORT:Ljava/lang/String; = "EXTRA_CDMA_SUPPORT"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final GEMINI_FDN_URI:[Ljava/lang/String; = null

.field public static final GEMINI_PIN2_RETRY:[Ljava/lang/String; = null

.field public static final GEMINI_PUK2_RETRY:[Ljava/lang/String; = null

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final INTENT_CARD_SELECT:Ljava/lang/String; = "com.mediatek.gemini.action.SELECT_SIM"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final PROGRESS_DIALOG:I = 0x190

.field public static final REQUEST_SIM_SELECT:I = 0x64

.field public static final SWITCH_MANUAL_ALLOWED_SLOT1:I = 0x1

.field public static final SWITCH_MANUAL_ALLOWED_SLOT2:I = 0x2

.field public static final SWITCH_MANUAL_ALLOWED_SLOT3:I = 0x4

.field public static final SWITCH_MANUAL_ALLOWED_SLOT4:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Gemini"

.field public static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field public static final UNDEFINED_SLOT_ID:I = -0x1

.field private static sInstance:Lcom/mediatek/phone/gemini/GeminiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    new-instance v0, Lcom/mediatek/phone/gemini/GeminiUtils;

    invoke-direct {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;-><init>()V

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->sInstance:Lcom/mediatek/phone/gemini/GeminiUtils;

    .line 85
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "content://icc/fdn1"

    aput-object v1, v0, v4

    const-string v1, "content://icc/fdn2"

    aput-object v1, v0, v5

    const-string v1, "content://icc/fdn3"

    aput-object v1, v0, v3

    const-string v1, "content://icc/fdn4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_FDN_URI:[Ljava/lang/String;

    .line 92
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "gsm.sim.retry.pin2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.retry.pin2.2"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.retry.pin2.3"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.retry.pin2.4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PIN2_RETRY:[Ljava/lang/String;

    .line 99
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "gsm.sim.retry.puk2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.retry.puk2.2"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.retry.puk2.3"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.retry.puk2.4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PUK2_RETRY:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "button_fdn_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "button_cf_expand_key"

    aput-object v2, v1, v4

    const-string v2, "com.mediatek.settings.CdmaCallForwardOptions"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "button_cb_expand_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "button_plmn_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "button_carrier_sel_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "button_more_expand_key"

    aput-object v3, v2, v4

    const-string v3, "com.mediatek.settings.CdmaCallWaitingOptions"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/gemini/simui/CommonUtils;-><init>()V

    return-void
.end method

.method public static get3GCapabilitySIM()I
    .locals 5

    .prologue
    .line 272
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 274
    .local v0, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v2

    .line 275
    .local v2, slot3G:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GCapabilitySIM, slot3G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v2           #slot3G:I
    :goto_0
    return v2

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, re:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GCapabilitySIM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return -1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 279
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static get3GSimCards(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v4, siminfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 302
    .local v3, simInserted:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 303
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->getBaseband(I)I

    move-result v0

    .line 304
    .local v0, baseband:I
    const/4 v5, 0x3

    if-le v0, v5, :cond_0

    .line 305
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v0           #baseband:I
    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-object v4
.end method

.method private static getCDMAFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "defaultClassName"

    .prologue
    .line 1125
    sget-object v2, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    array-length v1, v2

    .line 1126
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1127
    sget-object v2, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1128
    sget-object v2, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object p1, v2, v3

    .line 1131
    .end local p1
    :cond_0
    return-object p1

    .line 1126
    .restart local p1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCDMASlot()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotByPhoneType(I)I

    move-result v0

    return v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "slotId"

    .prologue
    .line 340
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoGemini(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultSlot()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public static getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 522
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 523
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIccRecordsLoaded(Lcom/android/internal/telephony/Phone;I)Z
    .locals 3
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 503
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, iccRecordloaded:Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccRecordsLoadedGemini(I)Z

    move-result v0

    .line 510
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccRecordsLoaded : iccRecordloaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 511
    return v0

    .line 508
    .restart local p0
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public static getIndexInArray(I[I)I
    .locals 3
    .parameter "value"
    .parameter "array"

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 394
    aget v1, p1, v0

    if-ne p0, v1, :cond_0

    .line 399
    .end local v0           #i:I
    :goto_1
    return v0

    .line 393
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndexInArray failed, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 399
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getIntSystemProperties(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 950
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMessageWaitingIndicator(Lcom/android/internal/telephony/Phone;I)Z
    .locals 3
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 704
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, indicator:Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMessageWaitingIndicatorGemini(I)Z

    move-result v0

    .line 711
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageWaitingIndicator, indicator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 712
    return v0

    .line 709
    .restart local p0
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    goto :goto_0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v1, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 198
    .local v1, gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 199
    .local v0, geminiSlots:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 200
    aget v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_2

    .line 201
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkOperatorName operatorName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 208
    :cond_0
    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    .line 210
    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 211
    aget v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkOperatorName operatorName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 222
    .end local v0           #geminiSlots:[I
    .end local v1           #gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #i:I
    :cond_1
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkOperatorName operatorName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 223
    return-object v3

    .line 199
    .restart local v0       #geminiSlots:[I
    .restart local v1       #gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 210
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    .end local v0           #geminiSlots:[I
    .end local v1           #gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #i:I
    :cond_4
    const-string v4, "gsm.operator.alpha"

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public static getNetworkOperatorName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 6
    .parameter "call"

    .prologue
    .line 227
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 230
    .local v2, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 231
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    .line 232
    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v3

    .line 233
    .local v3, slotIndex:I
    if-ltz v3, :cond_0

    .line 234
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v1           #operatorName:Ljava/lang/String;
    .end local v2           #phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v3           #slotIndex:I
    :goto_0
    return-object v4

    :cond_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getOperatorName(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 177
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_0

    .line 178
    iget-object v0, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorName, operatorName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 184
    .end local v1           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorName, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operatorName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 185
    return-object v0

    .line 182
    :cond_1
    const-string v2, "gsm.operator.alpha"

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPendingMmiCodes(Lcom/android/internal/telephony/Phone;I)Ljava/util/List;
    .locals 2
    .parameter "phone"
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, mmiCodes:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v0

    .line 874
    :goto_0
    if-nez v0, :cond_0

    .line 875
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #mmiCodes:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .restart local v0       #mmiCodes:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    :cond_0
    return-object v0

    .line 872
    .restart local p0
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhbRecordInfo(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 3
    .parameter "phone"
    .parameter "response"
    .parameter "slotId"

    .prologue
    .line 684
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 685
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccFileHandlerGemini(I)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 687
    .local v0, filehandle:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getPhbRecordInfo(Landroid/os/Message;)V

    .line 692
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhbRecordInfo, response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 693
    return-void

    .line 689
    .end local v0           #filehandle:Lcom/android/internal/telephony/IccFileHandler;
    .restart local p0
    :cond_0
    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 690
    .restart local v0       #filehandle:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getPhbRecordInfo(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getPhoneType(Lcom/android/internal/telephony/Phone;I)I
    .locals 3
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 828
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 829
    const/4 v0, 0x1

    .line 830
    .local v0, phoneType:I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 835
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneType, slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 836
    return v0

    .line 833
    .restart local p0
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static getPin2RetryNumber(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 367
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 368
    .local v0, index:I
    const/4 v1, -0x1

    .line 369
    .local v1, number:I
    if-ltz v0, :cond_0

    .line 370
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->GSM_SIM_RETRY_PIN2_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 372
    :cond_0
    return v1
.end method

.method public static getPinRetryNumber(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 358
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 359
    .local v0, index:I
    const/4 v1, -0x1

    .line 360
    .local v1, number:I
    if-ltz v0, :cond_0

    .line 361
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->GSM_SIM_RETRY_PIN_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 363
    :cond_0
    return v1
.end method

.method public static getPuk2RetryNumber(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 376
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 377
    .local v0, index:I
    const/4 v1, -0x1

    .line 378
    .local v1, number:I
    if-ltz v0, :cond_0

    .line 379
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->GSM_SIM_RETRY_PUK2_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 381
    :cond_0
    return v1
.end method

.method public static getSimFdnUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "slotId"

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 349
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 350
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->FDN_CONTENT_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 354
    :goto_0
    return-object v1

    .line 352
    :cond_0
    const-string v2, "content://icc/fdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSimSlotIdBySimInfoId(JLjava/util/List;)I
    .locals 4
    .parameter "simInfoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1014
    .local p2, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1015
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 1016
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 1019
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSiminfoIdBySimSlotId(ILjava/util/List;)J
    .locals 4
    .parameter "slotId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1023
    .local p1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1024
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p0, :cond_0

    .line 1025
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 1028
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getSlotByPhoneType(I)I
    .locals 9
    .parameter "phontType"

    .prologue
    .line 448
    const/4 v5, 0x0

    .line 449
    .local v5, slot:I
    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    const/4 v7, 0x1

    if-ne p0, v7, :cond_1

    .line 451
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 452
    .local v6, telephony:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 453
    .local v1, geminiSlots:[I
    move-object v0, v1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 454
    .local v2, gs:I
    invoke-virtual {v6, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v7

    if-ne v7, p0, :cond_2

    .line 455
    move v5, v2

    .line 460
    .end local v0           #arr$:[I
    .end local v1           #geminiSlots:[I
    .end local v2           #gs:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #telephony:Landroid/telephony/TelephonyManager;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSlotByPhoneType with phontType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and return slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 461
    return v5

    .line 453
    .restart local v0       #arr$:[I
    .restart local v1       #geminiSlots:[I
    .restart local v2       #gs:I
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #telephony:Landroid/telephony/TelephonyManager;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final getSlotCount()I
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/mediatek/phone/GeminiConstants;->SLOTS:[I

    array-length v0, v0

    return v0
.end method

.method public static getSlotId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "title"

    .prologue
    .line 1085
    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v1

    .line 1086
    .local v1, slotId:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1087
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1088
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.gemini.action.SELECT_SIM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1092
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "Gemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return v1
.end method

.method public static getSlotNotIdle(Lcom/android/internal/telephony/Phone;)I
    .locals 8
    .parameter "phone"

    .prologue
    .line 928
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 929
    instance-of v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v6, :cond_1

    move-object v1, p0

    .line 930
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 931
    .local v1, gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 932
    .local v2, geminiSlots:[I
    move-object v0, v2

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v5, v0, v3

    .line 933
    .local v5, slot:I
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_0

    .line 942
    .end local v0           #arr$:[I
    .end local v1           #gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #geminiSlots:[I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #slot:I
    :goto_1
    return v5

    .line 932
    .restart local v0       #arr$:[I
    .restart local v1       #gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2       #geminiSlots:[I
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #slot:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 938
    .end local v0           #arr$:[I
    .end local v1           #gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #geminiSlots:[I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #slot:I
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_2

    .line 939
    const/4 v5, 0x0

    goto :goto_1

    .line 942
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public static getSlots()[I
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/mediatek/phone/GeminiConstants;->SLOTS:[I

    return-object v0
.end method

.method public static getSmscAddress(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .parameter "phone"
    .parameter "msg"
    .parameter "slotId"

    .prologue
    .line 565
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmscAddress: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSmscAddressGemini(Landroid/os/Message;I)V

    .line 572
    :goto_0
    return-void

    .line 570
    .restart local p0
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 946
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetIntent(ILandroid/preference/Preference;)Landroid/content/Intent;
    .locals 7
    .parameter "slotId"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 1108
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1109
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "simId"

    invoke-virtual {v1, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getCDMASlot()I

    move-result v4

    if-ne v4, p0, :cond_2

    .line 1111
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, origClassName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getCDMAFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, cdma:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1114
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1121
    .end local v0           #cdma:Ljava/lang/String;
    .end local v2           #origClassName:Ljava/lang/String;
    :goto_1
    return-object v3

    :cond_0
    move-object v2, v3

    .line 1111
    goto :goto_0

    .line 1118
    .restart local v0       #cdma:Ljava/lang/String;
    .restart local v2       #origClassName:Ljava/lang/String;
    :cond_1
    const-string v3, "com.android.phone"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v0           #cdma:Ljava/lang/String;
    .end local v2           #origClassName:Ljava/lang/String;
    :cond_2
    move-object v3, v1

    .line 1121
    goto :goto_1
.end method

.method public static getTargetSlotId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 998
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 999
    .local v0, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1000
    .local v1, simSize:I
    const/4 v2, -0x1

    .line 1001
    .local v2, slotId:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1002
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 1004
    :cond_0
    return v2
.end method

.method public static getVTNetworkOperatorName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 6
    .parameter "call"

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p0, :cond_2

    .line 250
    const/4 v3, -0x1

    .line 251
    .local v3, slot:I
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 252
    .local v1, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    .line 253
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 255
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 256
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 257
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .end local v0           #index:I
    .end local v1           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v3           #slot:I
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVTNetworkOperatorName, operatorName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 263
    return-object v2

    .line 260
    :cond_2
    const-string v4, "gsm.operator.alpha"

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, voiceMailNumber:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 325
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVoiceMailNumber(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;
    .locals 3
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 485
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 487
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, vmNumber:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceMailNumber : vmNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 493
    return-object v0

    .line 490
    .end local v0           #vmNumber:Ljava/lang/String;
    .restart local p0
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #vmNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 990
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 991
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 993
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 994
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 995
    return-void
.end method

.method public static handlePinMmi(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Z
    .locals 3
    .parameter "phone"
    .parameter "dialString"
    .parameter "slotId"

    .prologue
    .line 546
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, result:Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v0

    .line 553
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePinMmi : result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 554
    return v0

    .line 551
    .restart local p0
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static handleSimHotSwap(Landroid/app/Activity;I)V
    .locals 5
    .parameter "activity"
    .parameter "slotId"

    .prologue
    .line 1077
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1078
    .local v0, temp:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const-string v1, "Gemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {p1, v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSiminfoIdBySimSlotId(ILjava/util/List;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1080
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1082
    :cond_0
    return-void
.end method

.method public static hangupAll(Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .parameter "phone"

    .prologue
    .line 911
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 913
    :try_start_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 914
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object v4, v0

    .line 915
    .local v4, gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v3

    .line 916
    .local v3, geminiSlots:[I
    move-object v1, v3

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget v5, v1, v6

    .line 917
    .local v5, gs:I
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->hangupAllGemini(I)V

    .line 916
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 920
    .end local v1           #arr$:[I
    .end local v3           #geminiSlots:[I
    .end local v4           #gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v5           #gs:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_1
    :goto_1
    return-void

    .line 922
    :catch_0
    move-exception v2

    .line 923
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "Error, cannot hangup All Calls"

    invoke-static {v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static hasPendingMmi(Lcom/android/internal/telephony/Phone;)Z
    .locals 9
    .parameter "phone"

    .prologue
    .line 888
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 889
    const/4 v6, 0x0

    .line 890
    .local v6, mmiCount:I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, p0

    .line 891
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 892
    .local v2, gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 893
    .local v1, geminiSlots:[I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasPendingMmi mmiCount slot size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 894
    move-object v0, v1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v3, v0, v4

    .line 895
    .local v3, gs:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 894
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 898
    .end local v0           #arr$:[I
    .end local v1           #geminiSlots:[I
    .end local v2           #gphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v3           #gs:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 900
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasPendingMmi mmiCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 901
    if-lez v6, :cond_2

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static is3GSwitchManualEnableSlot(IZI)Z
    .locals 8
    .parameter "slotId"
    .parameter "is3GSwitchManualChangeAllowed"
    .parameter "manualAllowedSlot"

    .prologue
    .line 1037
    if-nez p2, :cond_0

    .line 1038
    const-string v6, "not sim card support manual 3G Switch"

    invoke-static {v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 1039
    const/4 v2, 0x0

    .line 1054
    :goto_0
    return v2

    .line 1041
    :cond_0
    const/4 v2, 0x0

    .line 1042
    .local v2, is3GSwitchManualSupportSlot:Z
    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->query3GSwitchManualEnableSlotId(I)[I

    move-result-object v4

    .line 1043
    .local v4, manualAllowedSlotId:[I
    if-eqz p1, :cond_2

    .line 1044
    const/4 v2, 0x1

    .line 1053
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is3GSwitchManualSupportSlot, slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    :cond_2
    move-object v0, v4

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v3, :cond_1

    aget v5, v0, v1

    .line 1047
    .local v5, slotItem:I
    if-ne v5, p0, :cond_3

    .line 1048
    const/4 v2, 0x1

    .line 1049
    goto :goto_1

    .line 1046
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static isDialing(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 788
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, isDialing:Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 791
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 795
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialing, isDialing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 796
    return v0

    :cond_0
    move v0, v2

    .line 791
    goto :goto_0

    .line 793
    .restart local p0
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static isGeminiSupport()Z
    .locals 2

    .prologue
    .line 409
    sget v0, Lcom/mediatek/phone/GeminiConstants;->SOLT_NUM:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhbReady(Lcom/android/internal/telephony/Phone;I)Z
    .locals 3
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 530
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 531
    invoke-static {p0, p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 532
    .local v0, isPhbReady:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccRecordsLoaded : isPhbReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 533
    return v0
.end method

.method public static isPhoneBackgroundCallIdle(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 619
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneBackgroundCallIdle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 621
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    return v0
.end method

.method public static isPhoneForegroundCallIdle(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 609
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneForegroundCallIdle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 611
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    return v0
.end method

.method public static isPhoneRingingCallIdle(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 599
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneRingingCallIdle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 601
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    return v0
.end method

.method public static isRadioOffBySlot(ILandroid/content/Context;)Z
    .locals 7
    .parameter "slot"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 954
    const/4 v1, 0x1

    .line 955
    .local v1, isRadioOff:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 956
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    instance-of v5, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v5, :cond_3

    move-object v0, v2

    .line 957
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 958
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 963
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_2
    move v1, v4

    .line 958
    goto :goto_0

    .line 960
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move v1, v3

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method

.method public static isSimInService(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    .line 967
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 969
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 975
    .local v1, state:I
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 972
    .end local v1           #state:I
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .restart local v1       #state:I
    goto :goto_0

    .line 975
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSimStateReady(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 979
    const/4 v0, 0x0

    .line 981
    .local v0, isSimStateReady:Z
    const/4 v1, 0x5

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 985
    :goto_0
    const-string v1, "Gemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimStateReady isSimStateReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return v0

    .line 981
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSlot(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    .line 158
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 159
    .local v0, geminiSlots:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 160
    aget v2, v0, v1

    if-ne v2, p0, :cond_0

    .line 161
    const/4 v2, 0x1

    .line 164
    :goto_1
    return v2

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1136
    const-string v0, "Gemini"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void
.end method

.method public static query3GSwitchManualEnableSlotId(I)[I
    .locals 6
    .parameter "manualAllowedSlot"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1063
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1064
    .local v0, manualAllowedSlotId:[I
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1065
    aput v2, v0, v2

    .line 1073
    :cond_0
    :goto_0
    return-object v0

    .line 1066
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1067
    aput v3, v0, v3

    goto :goto_0

    .line 1068
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1069
    aput v4, v0, v4

    goto :goto_0

    .line 1070
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_0

    .line 1071
    aput v5, v0, v5

    goto :goto_0

    .line 1063
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static sendBTSIMProfile(Lcom/android/internal/telephony/Phone;IILjava/lang/String;Landroid/os/Message;I)V
    .locals 6
    .parameter "phone"
    .parameter "action"
    .parameter "type"
    .parameter "data"
    .parameter "callback"
    .parameter "slotId"

    .prologue
    .line 811
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBTSIMProfile, callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 814
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 2
    .parameter "phone"
    .parameter "text"
    .parameter "slotId"

    .prologue
    .line 848
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssdResponse, text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendUssdResponseGemini(Ljava/lang/String;I)V

    .line 855
    :goto_0
    return-void

    .line 853
    .restart local p0
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPreferredNetworkType(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V
    .locals 2
    .parameter "phone"
    .parameter "modemNetworkMode"
    .parameter "msg"
    .parameter "slotId"

    .prologue
    .line 772
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 773
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 778
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkType, modemNetworkMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 779
    return-void

    .line 776
    .restart local p0
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setRadioMode(Lcom/android/internal/telephony/Phone;ZLandroid/content/ContentResolver;)V
    .locals 3
    .parameter "phone"
    .parameter "isRadioOn"
    .parameter "contentResolver"

    .prologue
    .line 726
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 727
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, dualSimModeSetting:I
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 730
    const-string v1, "dual_sim_mode_setting"

    const/4 v2, 0x3

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 733
    :cond_0
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPower, isRadioOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dualSimModeSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 739
    .end local v0           #dualSimModeSetting:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPower, isRadioOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 740
    return-void

    .line 737
    .restart local p0
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {p0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setRadioPowerOFF(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 752
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 753
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 758
    :goto_0
    const-string v0, "setRadioPowerOFF"

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 759
    return-void

    .line 756
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZ)V

    goto :goto_0
.end method

.method public static setSmscAddress(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .parameter "phone"
    .parameter "scAddr"
    .parameter "msg"
    .parameter "slotId"

    .prologue
    .line 583
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmscAddress: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 585
    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setSmscAddressGemini(Ljava/lang/String;Landroid/os/Message;I)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 589
    .restart local p0
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V
    .locals 2
    .parameter "slotId"
    .parameter "preference"
    .parameter "preCfr"

    .prologue
    .line 1097
    invoke-static {p0, p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getTargetIntent(ILandroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v0

    .line 1098
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1099
    const/16 v1, 0x12e

    invoke-virtual {p2, v0, p0, v1}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 1101
    :cond_0
    return-void
.end method

.method public static startQueryGemini(ILandroid/content/Context;Ljava/lang/String;Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;IZ)Lcom/android/phone/CallerInfoAsyncQuery;
    .locals 2
    .parameter "token"
    .parameter "context"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"
    .parameter "simId"
    .parameter "isSipPhone"

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, asyncQuery:Lcom/android/phone/CallerInfoAsyncQuery;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p6, :cond_0

    .line 431
    invoke-static/range {p0 .. p5}, Lcom/android/phone/CallerInfoAsyncQuery;->startQueryGemini(ILandroid/content/Context;Ljava/lang/String;Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/phone/CallerInfoAsyncQuery;

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    .line 435
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/phone/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/CallerInfoAsyncQuery;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getGateway(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "phone"
    .parameter "apnType"
    .parameter "slotId"

    .prologue
    .line 667
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, gateWay:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 674
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGateway, gateWay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 675
    return-object v0

    .line 672
    .restart local p1
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInterfaceName(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "phone"
    .parameter "apnType"
    .parameter "slotId"

    .prologue
    .line 633
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 634
    const/4 v0, 0x0

    .line 636
    .local v0, interfaceName:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 641
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGateway, interfaceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 643
    return-object v0

    .line 639
    .restart local p1
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIpAddress(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "phone"
    .parameter "apnType"
    .parameter "slotId"

    .prologue
    .line 647
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, ipAddr:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGateway, ipAddr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 655
    return-object v0

    .line 652
    .restart local p1
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
