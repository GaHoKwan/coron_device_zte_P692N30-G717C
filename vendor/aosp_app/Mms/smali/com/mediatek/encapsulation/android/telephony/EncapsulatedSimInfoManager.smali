.class public Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
.super Ljava/lang/Object;
.source "EncapsulatedSimInfoManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field public static final DEFAULT_NAME_MAX_INDEX:I = 0x63

.field public static final DEFAULT_NAME_MIN_INDEX:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_NAME_RES:I = 0x0

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPALY_NUMBER_NONE:I = 0x0

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final ERROR_GENERAL:I = -0x1

.field public static final ERROR_NAME_EXIST:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIMBackgroundDarkRes:[I = null

.field public static final SIMBackgroundLightRes:[I = null

.field public static final SIMBackgroundRes:[I = null

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mOperator:Ljava/lang/String;

.field private mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

.field public mSimBackgroundDarkRes:I

.field public mSimBackgroundLightRes:I

.field public mSimBackgroundRes:I

.field public mSimInfoId:J

.field public mSimSlotId:I

.field public mWapPush:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-array v0, v6, [I

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_blue:I

    aput v1, v0, v2

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_orange:I

    aput v1, v0, v3

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_green:I

    aput v1, v0, v4

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_purple:I

    aput v1, v0, v5

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    .line 39
    new-array v0, v6, [I

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_dark_blue:I

    aput v1, v0, v2

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_dark_orange:I

    aput v1, v0, v3

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_dark_green:I

    aput v1, v0, v4

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_dark_purple:I

    aput v1, v0, v5

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundDarkRes:[I

    .line 46
    new-array v0, v6, [I

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_light_blue:I

    aput v1, v0, v2

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_light_orange:I

    aput v1, v0, v3

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_light_green:I

    aput v1, v0, v4

    sget v1, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_light_purple:I

    aput v1, v0, v5

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundLightRes:[I

    .line 53
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    .line 70
    const v0, 0x2050093

    sput v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->DEFAULT_NAME_RES:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDisplayName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mNumber:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDispalyNumberFormat:I

    .line 23
    iput v1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDataRoaming:I

    .line 24
    iput v2, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimSlotId:I

    .line 25
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundRes:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mOperator:Ljava/lang/String;

    .line 27
    iput v2, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mWapPush:I

    .line 28
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundDarkRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundDarkRes:I

    .line 29
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundLightRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundLightRes:I

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 3
    .parameter "simInfoRecord"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDisplayName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mNumber:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDispalyNumberFormat:I

    .line 23
    iput v1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDataRoaming:I

    .line 24
    iput v2, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimSlotId:I

    .line 25
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundRes:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mOperator:Ljava/lang/String;

    .line 27
    iput v2, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mWapPush:I

    .line 28
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundDarkRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundDarkRes:I

    .line 29
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundLightRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundLightRes:I

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 181
    :cond_0
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 256
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>()V

    .line 257
    .local v0, info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimInfoId:J

    .line 258
    const-string v2, "icc_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mIccId:Ljava/lang/String;

    .line 259
    const-string v2, "display_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDisplayName:Ljava/lang/String;

    .line 261
    const-string v2, "number"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mNumber:Ljava/lang/String;

    .line 262
    const-string v2, "display_number_format"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDispalyNumberFormat:I

    .line 264
    const-string v2, "color"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    .line 265
    const-string v2, "data_roaming"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDataRoaming:I

    .line 266
    const-string v2, "slot"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimSlotId:I

    .line 267
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    array-length v1, v2

    .line 268
    .local v1, size:I
    iget v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    if-ge v2, v1, :cond_0

    .line 269
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    iget v3, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    aget v2, v2, v3

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundRes:I

    .line 272
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundDarkRes:[I

    iget v3, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    aget v2, v2, v3

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundDarkRes:I

    .line 273
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundLightRes:[I

    iget v3, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    aget v2, v2, v3

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundLightRes:I

    .line 276
    :cond_0
    return-object v0
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 461
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 2
    .parameter "ctx"
    .parameter "slot"

    .prologue
    .line 422
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInsertedSimCount(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 438
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, oldSimList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v2, newSimList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 288
    new-instance v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-direct {v1, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 289
    .local v1, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v1           #mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    return-object v2
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 2
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    .line 318
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 319
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v1, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    .line 322
    :cond_0
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 323
    .local v0, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    goto :goto_0
.end method

.method public static getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 2
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    .line 353
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 354
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v1, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 357
    :cond_0
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 358
    .local v0, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    goto :goto_0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 1
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    .line 390
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    return v0
.end method

.method public getDispalyNumberFormat()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimBackgroundLightRes()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightRes:I

    return v0
.end method

.method public getSimBackgroundRes()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    return v0
.end method

.method public getSimId()J
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    return-wide v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    return v0
.end method
