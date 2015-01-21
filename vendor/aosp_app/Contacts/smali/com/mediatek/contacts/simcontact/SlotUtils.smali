.class public final Lcom/mediatek/contacts/simcontact/SlotUtils;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;,
        Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    }
.end annotation


# static fields
.field private static final FIRST_SLOT_ID:I

.field private static final PHONE_SLOT_NUM:I

.field private static final TAG:Ljava/lang/String;

.field private static sSlotInfoMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    sput v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->PHONE_SLOT_NUM:I

    .line 31
    const-class v2, Lcom/mediatek/contacts/simcontact/SlotUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->TAG:Ljava/lang/String;

    .line 258
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->PHONE_SLOT_NUM:I

    if-ge v0, v2, :cond_0

    .line 261
    add-int/lit8 v1, v0, 0x0

    .line 262
    .local v1, slotId:I
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-direct {v4, v1}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v1           #slotId:I
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getAllSlotIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getFirstSlotId()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public static getNonSlotId()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, -0x1

    return v0
.end method

.method public static getResIdForSlot(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 399
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getResId()I

    move-result v0

    return v0
.end method

.method public static getSimPhoneBookServiceNameForSlot(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 350
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getSimPhoneBookServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleSlotId()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public static getSlotCount()I
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getSlotIccUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 272
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getIccUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotIdFromSimResId(I)I
    .locals 4
    .parameter "resId"

    .prologue
    .line 408
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 409
    .local v1, slotId:I
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget v2, v2, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    if-ne v2, p0, :cond_0

    .line 413
    .end local v1           #slotId:I
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v1

    goto :goto_0
.end method

.method public static getSlotSdnUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 281
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getSdnUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUsimAnrCountBySlot(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 433
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimAnrCount()I

    move-result v0

    return v0
.end method

.method public static getUsimEmailCountBySlot(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 437
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimEmailCount()I

    move-result v0

    return v0
.end method

.method public static getUsimGroupMaxCountBySlot(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 429
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimGroupMaxCount()I

    move-result v0

    return v0
.end method

.method public static getUsimGroupMaxNameLengthBySlot(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 425
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->getUsimGroupMaxNameLength()I

    move-result v0

    return v0
.end method

.method public static getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    .line 298
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    .line 301
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVoiceMailNumberForSlot] slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGeminiEnabled()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method public static isSlotValid(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 359
    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 360
    .local v0, isValid:Z
    if-nez v0, :cond_0

    .line 361
    sget-object v1, Lcom/mediatek/contacts/simcontact/SlotUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    return v0
.end method

.method public static listenAllSlots(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 326
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 328
    .local v1, slotId:I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0

    .line 331
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #slotId:I
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 332
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 334
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method public static refreshPhbInfoBySlot(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 448
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 449
    return-void
.end method

.method public static resetPhbInfoBySlot(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 459
    sget-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->resetPhbInfo()V

    .line 460
    return-void
.end method

.method public static updateVoiceMailNumber()V
    .locals 3

    .prologue
    .line 309
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    .line 310
    .local v1, slot:Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    invoke-virtual {v1}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->updateVoiceMailNumber()V

    goto :goto_0

    .line 312
    .end local v1           #slot:Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
    :cond_0
    return-void
.end method
