.class public Lcom/mediatek/contacts/simcontact/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;,
        Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;,
        Lcom/mediatek/contacts/simcontact/SimCardUtils$SimType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NO_SLOT:Ljava/lang/String; = null

.field private static final SIM_KEY_SIMINFO_READY:Ljava/lang/String; = "isSimInfoReady"

.field private static final SIM_KEY_WITHSLOT_FDN_ENABLED:Ljava/lang/String; = "isFdnEnabed"

.field private static final SIM_KEY_WITHSLOT_GET_SIM_INDICATOR_STATE:Ljava/lang/String; = "getSimIndicatorState"

.field private static final SIM_KEY_WITHSLOT_HAS_ICC_CARD:Ljava/lang/String; = "hasIccCard"

.field private static final SIM_KEY_WITHSLOT_IS_USIM:Ljava/lang/String; = "isSimUsimType"

.field private static final SIM_KEY_WITHSLOT_PHB_READY:Ljava/lang/String; = "isPhoneBookReady"

.field private static final SIM_KEY_WITHSLOT_PIN_REQUEST:Ljava/lang/String; = "isSimPinRequest"

.field private static final SIM_KEY_WITHSLOT_PUK_REQUEST:Ljava/lang/String; = "isSimPukRequest"

.field private static final SIM_KEY_WITHSLOT_RADIO_ON:Ljava/lang/String; = "isRadioOn"

.field private static final SIM_KEY_WITHSLOT_SET_RADIO_ON:Ljava/lang/String; = "isSetRadioOn"

.field private static final SIM_KEY_WITHSLOT_SIM_INSERTED:Ljava/lang/String; = "isSimInserted"

.field private static final SIM_KEY_WITHSLOT_SIM_TYPE:Ljava/lang/String; = "getSimTypeBySlot"

.field private static final SIM_KEY_WITHSLOT_STATE_READY:Ljava/lang/String; = "isSimStateReady"

.field public static final TAG:Ljava/lang/String; = "SimCardUtils"

.field private static sPresetSimData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->$assertionsDisabled:Z

    .line 338
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 358
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    return-void
.end method

.method public static clearPreSetSimData()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 343
    return-void
.end method

.method public static getAnrCount(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 749
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimAnrCountBySlot(I)I

    move-result v0

    return v0
.end method

.method public static getIccCardEmailCount(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 758
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimEmailCountBySlot(I)I

    move-result v0

    return v0
.end method

.method private static getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 346
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 347
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 348
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, v:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 355
    .end local v0           #v:Ljava/lang/Object;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimIndicatorState(I)I
    .locals 7
    .parameter "slotId"

    .prologue
    .line 654
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSimIndicatorState"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 655
    .local v3, v:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 656
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 677
    :goto_0
    return v2

    .line 659
    :cond_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 660
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 661
    const-string v4, "SimCardUtils"

    const-string v5, "[getSimIndicatorState] fail to get iTel"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v2, -0x1

    goto :goto_0

    .line 667
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 668
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v2

    .local v2, simIndicatorState:I
    goto :goto_0

    .line 670
    .end local v2           #simIndicatorState:I
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2       #simIndicatorState:I
    goto :goto_0

    .line 672
    .end local v2           #simIndicatorState:I
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimIndicatorState] failed to get sim indicator state for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v2, -0x1

    .restart local v2       #simIndicatorState:I
    goto :goto_0
.end method

.method public static getSimTagBySlot(I)Ljava/lang/String;
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 717
    const-string v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return-object v2

    .line 720
    :cond_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 722
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 723
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 725
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catched exception. slot id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSimTypeBySlot(I)I
    .locals 9
    .parameter "slotId"

    .prologue
    .line 243
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getSimTypeBySlot"

    invoke-static {v6, v7}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 244
    .local v5, v:Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 245
    const-string v6, "SimCardUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimTypeBySlot,v is not null,v = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 283
    :cond_0
    :goto_0
    return v4

    .line 248
    :cond_1
    const/4 v4, -0x1

    .line 250
    .local v4, simType:I
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 252
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_2

    .line 253
    const-string v6, "SimCardUtils"

    const-string v7, "getSimTypeBySlot,ITelephony is not ready,return."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 259
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, iccCardTypeGemini:Ljava/lang/String;
    const-string v6, "USIM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "CSIM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 262
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 263
    :cond_4
    const-string v6, "UIM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 264
    const/4 v4, 0x2

    goto :goto_0

    .line 265
    :cond_5
    const-string v6, "SIM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    const/4 v4, 0x0

    goto :goto_0

    .line 269
    .end local v3           #iccCardTypeGemini:Ljava/lang/String;
    :cond_6
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, iccCardType:Ljava/lang/String;
    const-string v6, "USIM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "CSIM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 272
    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    .line 273
    :cond_8
    const-string v6, "UIM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 274
    const/4 v4, 0x2

    goto :goto_0

    .line 275
    :cond_9
    const-string v6, "SIM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    const/4 v4, 0x0

    goto :goto_0

    .line 279
    .end local v2           #iccCardType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "SimCardUtils"

    const-string v7, "catched exception."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static handlePinMmi(Ljava/lang/String;I)Z
    .locals 6
    .parameter "input"
    .parameter "slotId"

    .prologue
    .line 688
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 689
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 690
    const-string v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handlePinMmi] fail to get phone for slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v1, 0x0

    .line 706
    :goto_0
    return v1

    .line 693
    :cond_0
    const-string v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handlePinMmi], slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 697
    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v1

    .local v1, isHandled:Z
    goto :goto_0

    .line 699
    .end local v1           #isHandled:Z
    :cond_1
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1       #isHandled:Z
    goto :goto_0

    .line 701
    .end local v1           #isHandled:Z
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handlePinMmi]exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v1, 0x0

    .restart local v1       #isHandled:Z
    goto :goto_0
.end method

.method public static hasIccCard(I)Z
    .locals 7
    .parameter "slotId"

    .prologue
    .line 587
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hasIccCard"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 588
    .local v3, v:Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 589
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 610
    :goto_0
    return v1

    .line 592
    :cond_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 593
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_1

    .line 594
    const-string v4, "SimCardUtils"

    const-string v5, "[hasIccCard] fail to get iTel"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x0

    goto :goto_0

    .line 600
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 601
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z

    move-result v1

    .local v1, hasIccCard:Z
    goto :goto_0

    .line 603
    .end local v1           #hasIccCard:Z
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1       #hasIccCard:Z
    goto :goto_0

    .line 605
    .end local v1           #hasIccCard:Z
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[hasIccCard] failed to check icc card state for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v1, 0x0

    .restart local v1       #hasIccCard:Z
    goto :goto_0
.end method

.method public static isDualSimModeOn(II)Z
    .locals 2
    .parameter "slotId"
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 742
    sget-boolean v1, Lcom/mediatek/contacts/simcontact/SimCardUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 743
    :cond_0
    sget-boolean v1, Lcom/mediatek/contacts/simcontact/SimCardUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v1

    shl-int v1, v0, v1

    if-lt p1, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 744
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getFirstSlotId()I

    move-result v1

    sub-int v1, p0, v1

    shl-int v1, v0, v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFdnEnabed(I)Z
    .locals 6
    .parameter "slotId"

    .prologue
    .line 157
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isFdnEnabed"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 158
    .local v3, v:Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 162
    :cond_1
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 164
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 166
    .local v2, isFdnEnabled:Z
    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->isFDNEnabledGemini(I)Z

    move-result v2

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPhoneBookReady(I)Z
    .locals 7
    .parameter "slotId"

    .prologue
    .line 208
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isPhoneBookReady"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 209
    .local v3, v:Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 233
    :goto_0
    return v2

    .line 213
    :cond_0
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 216
    .local v1, iPhbEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 217
    const-string v4, "SimCardUtils"

    const-string v5, "checkPhoneBookState, phoneEx == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x0

    goto :goto_0

    .line 220
    :cond_1
    const/4 v2, 0x0

    .line 222
    .local v2, isPbReady:Z
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->isPhbReadyExt(I)Z

    move-result v2

    .line 224
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPbReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getMessage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->isPhbReady()Z

    move-result v2

    .line 228
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPbReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static isRadioOn(I)Z
    .locals 7
    .parameter "slotId"

    .prologue
    .line 554
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isRadioOn"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 555
    .local v3, v:Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 577
    :goto_0
    return v2

    .line 559
    :cond_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 560
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 561
    const-string v4, "SimCardUtils"

    const-string v5, "[isRadioOn] fail to get iTel"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v2, 0x0

    goto :goto_0

    .line 567
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 568
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v2

    .local v2, isRadioOn:Z
    goto :goto_0

    .line 570
    .end local v2           #isRadioOn:Z
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2       #isRadioOn:Z
    goto :goto_0

    .line 572
    .end local v2           #isRadioOn:Z
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isRadioOn] failed to get radio state for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v2, 0x0

    .restart local v2       #isRadioOn:Z
    goto :goto_0
.end method

.method public static isSetRadioOn(Landroid/content/ContentResolver;I)Z
    .locals 8
    .parameter "resolver"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 181
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "isSetRadioOn"

    invoke-static {v6, v7}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 182
    .local v3, v:Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 198
    :goto_0
    return v2

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 187
    .local v2, isRadioOn:Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v6

    shl-int v6, v4, v6

    add-int/lit8 v1, v6, -0x1

    .line 191
    .local v1, flagAllSimOn:I
    const-string v6, "dual_sim_mode_setting"

    invoke-static {p0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, dualSimSet:I
    const-string v6, "airplane_mode_on"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getFirstSlotId()I

    move-result v6

    sub-int v6, p1, v6

    shl-int v6, v4, v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    move v2, v4

    .line 194
    :goto_1
    goto :goto_0

    :cond_1
    move v2, v5

    .line 192
    goto :goto_1

    .line 195
    .end local v0           #dualSimSet:I
    .end local v1           #flagAllSimOn:I
    :cond_2
    const-string v6, "airplane_mode_on"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_2
    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_2
.end method

.method public static isSimInfoReady()Z
    .locals 4

    .prologue
    .line 326
    sget-object v2, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSimInfoReady"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 327
    .local v1, v:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 332
    :goto_0
    return v2

    .line 331
    :cond_0
    const-string v2, "gsm.siminfo.ready"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, simInfoReady:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSimInserted(I)Z
    .locals 6
    .parameter "slotId"

    .prologue
    .line 133
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimInserted"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 134
    .local v3, v:Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 153
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 140
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 142
    .local v2, isSimInsert:Z
    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v2

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSingleSlotId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimPinRequest(I)Z
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimPinRequest"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 100
    .local v1, v:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, isPinRequest:Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    if-ne v6, v4, :cond_1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 109
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v6, v4, :cond_3

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public static isSimPukRequest(I)Z
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimPukRequest"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 83
    .local v1, v:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 88
    .local v0, isPukRequest:Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    if-ne v6, v4, :cond_1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 92
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v6, v4, :cond_3

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public static isSimReady(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 637
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimStateIdle] invalid slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0

    .line 641
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    .line 642
    .local v0, isPhoneBookReady:Z
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimReady] isPhoneBookReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSimStateIdle(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 623
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 624
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimStateIdle] invalid slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    :goto_0
    return v1

    .line 628
    :cond_1
    invoke-static {p0}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v0

    .line 629
    .local v0, isSimServiceRunning:Z
    const-string v2, "SimCardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSimStateIdle], isSimServiceRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimReady(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSimStateReady(I)Z
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimStateReady"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 117
    .local v1, v:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 129
    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, isSimStateReady:Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    if-ne v6, v4, :cond_1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 126
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v6, v4, :cond_3

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public static isSimUsimType(I)Z
    .locals 6
    .parameter "slotId"

    .prologue
    .line 292
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSimUsimType"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getPresetObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 293
    .local v3, v:Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 294
    const-string v4, "SimCardUtils"

    const-string v5, "isSimUsimType, v is not null,return."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 322
    :cond_0
    :goto_0
    return v2

    .line 298
    :cond_1
    const/4 v2, 0x0

    .line 299
    .local v2, isUsim:Z
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 301
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_2

    .line 302
    const-string v4, "SimCardUtils"

    const-string v5, "isSimUsimType, ITelephony is not ready,return."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    const-string v4, "USIM"

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CSIM"

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 313
    :cond_4
    const-string v4, "USIM"

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "CSIM"

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SimCardUtils"

    const-string v5, "catched exception."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static preSetSimData(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5
    .parameter "slot"
    .parameter "fdnEnabled"
    .parameter "isUsim"
    .parameter "phbReady"
    .parameter "pinRequest"
    .parameter "pukRequest"
    .parameter "isRadioOn"
    .parameter "isSimInserted"
    .parameter "simType"
    .parameter "simStateReady"
    .parameter "simInfoReady"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 378
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .local v1, value1:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 380
    const-string v3, "isFdnEnabed"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    :cond_0
    if-eqz p2, :cond_1

    .line 383
    const-string v3, "isSimUsimType"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 385
    :cond_1
    if-eqz p3, :cond_2

    .line 386
    const-string v3, "isPhoneBookReady"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 388
    :cond_2
    if-eqz p4, :cond_3

    .line 389
    const-string v3, "isSimPinRequest"

    invoke-virtual {v1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 391
    :cond_3
    if-eqz p5, :cond_4

    .line 392
    const-string v3, "isSimPukRequest"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    :cond_4
    if-eqz p6, :cond_5

    .line 395
    const-string v3, "isSetRadioOn"

    invoke-virtual {v1, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 397
    :cond_5
    if-eqz p7, :cond_6

    .line 398
    const-string v3, "isSimInserted"

    invoke-virtual {v1, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 400
    :cond_6
    if-eqz p8, :cond_7

    .line 401
    const-string v3, "getSimTypeBySlot"

    invoke-virtual {v1, v3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    :cond_7
    if-eqz p9, :cond_8

    .line 404
    const-string v3, "isSimStateReady"

    invoke-virtual {v1, v3, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 406
    :cond_8
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    if-nez v3, :cond_9

    .line 407
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    .line 409
    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 410
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, key1:Ljava/lang/String;
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 412
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_a
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v0           #key1:Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v2, value2:Landroid/content/ContentValues;
    if-eqz p10, :cond_c

    .line 419
    const-string v3, "isSimInfoReady"

    invoke-virtual {v2, v3, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 421
    :cond_c
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 422
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 423
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_d
    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils;->sPresetSimData:Ljava/util/HashMap;

    sget-object v4, Lcom/mediatek/contacts/simcontact/SimCardUtils;->NO_SLOT:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_e
    return-void
.end method
