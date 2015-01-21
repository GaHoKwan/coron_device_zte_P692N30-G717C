.class public Lcom/mediatek/settings/plugin/RoamingService;
.super Landroid/app/Service;
.source "RoamingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RoamingService"


# instance fields
.field private mCardType:I

.field private mContext:Landroid/content/Context;

.field private mEVDOModemSlot:I

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

.field private mIsFirstBoot:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mNoServiceDialog:Landroid/app/AlertDialog;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegisteredNetwork:Z

.field private mServiceState:I

.field private mSimStat:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNM:Landroid/app/NotificationManager;

    .line 73
    iput-boolean v1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mIsFirstBoot:Z

    .line 107
    new-instance v0, Lcom/mediatek/settings/plugin/RoamingService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/RoamingService$1;-><init>(Lcom/mediatek/settings/plugin/RoamingService;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 339
    iput-boolean v1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mRegisteredNetwork:Z

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/settings/plugin/RoamingService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mServiceState:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/RoamingService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mSimStat:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/plugin/RoamingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/RoamingService;->isInternationalRoamingStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/settings/plugin/RoamingService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mSimStat:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/plugin/RoamingService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/RoamingService;->notifyTimeZoneRecommend(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/plugin/RoamingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/RoamingService;->isSupportNitz()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/plugin/RoamingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/RoamingService;->isGgStandBy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/plugin/RoamingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/RoamingService;->showTimeZoneRecommendInNotificationBar()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/plugin/RoamingService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/RoamingService;->isMultipltTimeZone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/RoamingService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mEVDOModemSlot:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/plugin/RoamingService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/plugin/RoamingService;)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/plugin/RoamingService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mCardType:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/plugin/RoamingService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mCardType:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/plugin/RoamingService;)Lcom/mediatek/common/telephony/ITelephonyEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/plugin/RoamingService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mRegisteredNetwork:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/plugin/RoamingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/RoamingService;->removeNoServiceDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/plugin/RoamingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mIsFirstBoot:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/plugin/RoamingService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mIsFirstBoot:Z

    return p1
.end method

.method private getExternalModemSlot()I
    .locals 4

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, slot:I
    const-string v1, "ril.external.md"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 195
    const-string v1, "RoamingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalModemSlot slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method private isGgStandBy()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 200
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, insertedSimList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_1

    .line 202
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v6, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v6, v3, :cond_0

    .line 203
    invoke-static {v0, v5, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v1

    .line 206
    .local v1, slot1PhoneType:I
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    .line 208
    .local v2, slot2PhoneType:I
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GG dual stand by,,slot1PhoneType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GG dual stand by,,slot2PhoneType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-ne v1, v4, :cond_3

    if-ne v2, v4, :cond_3

    move v3, v4

    .line 228
    .end local v1           #slot1PhoneType:I
    .end local v2           #slot2PhoneType:I
    :goto_0
    return v3

    .line 213
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 214
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v1

    .line 216
    .restart local v1       #slot1PhoneType:I
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slot1PhoneType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-ne v1, v4, :cond_3

    move v3, v4

    .line 218
    goto :goto_0

    .line 221
    .end local v1           #slot1PhoneType:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    .line 222
    .restart local v2       #slot2PhoneType:I
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slot2PhoneType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-ne v2, v4, :cond_3

    move v3, v4

    .line 224
    goto :goto_0

    .end local v2           #slot2PhoneType:I
    :cond_3
    move v3, v5

    .line 228
    goto :goto_0
.end method

.method private isInternationalRoamingStatus()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, isRoaming:Z
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 321
    .local v0, insertedSimList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 322
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v4, v3, :cond_0

    .line 323
    invoke-static {v0, v5, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 326
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 327
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v1

    .line 334
    :cond_1
    :goto_0
    const-string v3, "RoamingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is International Roaming Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v1

    .line 328
    :cond_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 329
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 330
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v1

    goto :goto_0
.end method

.method private isMultipltTimeZone(I)Z
    .locals 9
    .parameter "mcc"

    .prologue
    const/4 v5, 0x0

    .line 294
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, iso:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, language:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 314
    :goto_0
    return v5

    .line 300
    :cond_0
    if-nez v2, :cond_1

    .line 301
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, locale:Ljava/util/Locale;
    :goto_1
    invoke-static {v3}, Llibcore/icu/TimeZones;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, tz:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v6, v4

    if-ge v0, v6, :cond_2

    .line 307
    const-string v6, "RoamingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tz["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 303
    .end local v0           #i:I
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #tz:[Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #locale:Ljava/util/Locale;
    goto :goto_1

    .line 309
    .restart local v0       #i:I
    .restart local v4       #tz:[Ljava/lang/String;
    :cond_2
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    .line 310
    const-string v6, "RoamingService"

    const-string v7, "isMultipltTimeZone false"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_3
    const-string v5, "RoamingService"

    const-string v6, "isMultipltTimeZone true"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isSupportNitz()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, insertedSimList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_2

    .line 234
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v6, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v6, v3, :cond_0

    .line 235
    invoke-static {v0, v4, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 237
    :cond_0
    const-string v3, "gsm.nitz.time"

    const-string v6, ""

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, sim1Nitz:Ljava/lang/String;
    const-string v3, "gsm.nitz.time.2"

    const-string v6, ""

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, sim2Nitz:Ljava/lang/String;
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GG dual stand by, sim1Nitz is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GG dual stand by, sim2Nitz is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v3, v4

    .line 261
    .end local v1           #sim1Nitz:Ljava/lang/String;
    .end local v2           #sim2Nitz:Ljava/lang/String;
    :goto_0
    return v3

    .line 244
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 245
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_3

    .line 246
    const-string v3, "gsm.nitz.time"

    const-string v6, ""

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1       #sim1Nitz:Ljava/lang/String;
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim1Nitz is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    .line 249
    goto :goto_0

    .line 252
    .end local v1           #sim1Nitz:Ljava/lang/String;
    :cond_3
    const-string v3, "gsm.nitz.time.2"

    const-string v6, ""

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2       #sim2Nitz:Ljava/lang/String;
    const-string v3, "RoamingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim2Nitz is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    .line 255
    goto :goto_0

    .end local v2           #sim2Nitz:Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 259
    goto :goto_0

    :cond_5
    move v3, v5

    .line 261
    goto :goto_0
.end method

.method private notifyTimeZoneRecommend(Z)V
    .locals 1
    .parameter "isMccChange"

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-static {p0}, Lcom/mediatek/settings/plugin/RoamingNotify;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/RoamingNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/RoamingNotify;->showTimeZoneRecommendInNotificationBar()V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-static {p0}, Lcom/mediatek/settings/plugin/RoamingNotify;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/RoamingNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/RoamingNotify;->showTimeZoneChooseDialog()V

    goto :goto_0
.end method

.method private removeNoServiceDialog()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNoServiceDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNoServiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "RoamingService"

    const-string v1, "Remove No Service Dialog."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNoServiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 346
    :cond_0
    return-void
.end method

.method private showTimeZoneRecommendInNotificationBar()V
    .locals 10

    .prologue
    const v9, 0x7f0200c5

    const/4 v8, 0x0

    .line 268
    const v5, 0x7f090013

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, notificationTitle:Ljava/lang/String;
    const v5, 0x7f090015

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, notificationSummary:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNM:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 271
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNM:Landroid/app/NotificationManager;

    .line 273
    :cond_0
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v9, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 275
    .local v2, notification:Landroid/app/Notification;
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v0, backIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.mediatek.op09.plugin"

    const-string v7, "com.mediatek.settings.plugin.TimeZoneActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    const/high16 v5, 0x2000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 283
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 287
    :goto_0
    invoke-virtual {v2, p0, v4, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 288
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNM:Landroid/app/NotificationManager;

    if-eqz v5, :cond_1

    .line 289
    iget-object v5, p0, Lcom/mediatek/settings/plugin/RoamingService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 291
    :cond_1
    return-void

    .line 285
    :cond_2
    const-string v5, "RoamingService"

    const-string v6, "Could not find OP09 plugin.TimeZoneActivity."

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 82
    const-string v0, "RoamingService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 84
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 86
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 87
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    .line 89
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/RoamingService;->getExternalModemSlot()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mEVDOModemSlot:I

    .line 91
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    iget v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mEVDOModemSlot:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 96
    const-string v0, "RoamingService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/settings/plugin/RoamingService;->mEVDOModemSlot:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 98
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/RoamingService;->removeNoServiceDialog()V

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 100
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
