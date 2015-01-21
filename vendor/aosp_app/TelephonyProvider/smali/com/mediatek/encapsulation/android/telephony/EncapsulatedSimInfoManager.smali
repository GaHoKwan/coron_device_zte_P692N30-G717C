.class public Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
.super Ljava/lang/Object;
.source "EncapsulatedSimInfoManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager$ErrorCode;
    }
.end annotation


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

.field public static final DEFAULT_NAME_RES:I = 0x2050093

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

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

.field public static final SIMBackgroundRes:[I = null

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1


# instance fields
.field private mColor:I

.field private mDataRoaming:I

.field private mDispalyNumberFormat:I

.field private mDisplayName:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

.field private mSimBackgroundRes:I

.field public mSimInfoId:J

.field public mSimSlotId:I

.field private mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xect 0x0t 0x2t 0x2t
        0xeft 0x0t 0x2t 0x2t
        0xedt 0x0t 0x2t 0x2t
        0xf0t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDisplayName:Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mNumber:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDispalyNumberFormat:I

    .line 166
    iput v1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimSlotId:I

    .line 167
    iput v2, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDataRoaming:I

    .line 169
    iput v1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSlot:I

    .line 171
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundRes:I

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 3
    .parameter "simInfoRecord"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDisplayName:Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mNumber:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDispalyNumberFormat:I

    .line 166
    iput v1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimSlotId:I

    .line 167
    iput v2, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDataRoaming:I

    .line 169
    iput v1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSlot:I

    .line 171
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundRes:I

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 185
    :cond_0
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 268
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>()V

    .line 269
    .local v0, info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimInfoId:J

    .line 270
    const-string v2, "icc_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mIccId:Ljava/lang/String;

    .line 271
    const-string v2, "display_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDisplayName:Ljava/lang/String;

    .line 273
    const-string v2, "number"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mNumber:Ljava/lang/String;

    .line 274
    const-string v2, "display_number_format"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDispalyNumberFormat:I

    .line 276
    const-string v2, "color"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    .line 277
    const-string v2, "data_roaming"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mDataRoaming:I

    .line 278
    const-string v2, "slot"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimSlotId:I

    .line 279
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    array-length v1, v2

    .line 280
    .local v1, size:I
    iget v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    if-ge v2, v1, :cond_0

    .line 281
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->SIMBackgroundRes:[I

    iget v3, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mColor:I

    aget v2, v2, v3

    iput v2, v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSimBackgroundRes:I

    .line 283
    :cond_0
    return-object v0
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 601
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
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
    .line 324
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 325
    .local v3, oldSimList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v2, newSimList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 327
    new-instance v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-direct {v1, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 328
    .local v1, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v1           #mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    return-object v2
.end method

.method private static getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I
    .locals 19
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 773
    const v2, 0x2050093

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 774
    .local v10, default_name:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "display_name LIKE "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .local v15, sb:Ljava/lang/StringBuilder;
    if-nez p3, :cond_1

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 780
    :goto_0
    const-string v2, " AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "display_name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 787
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v8, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    .line 789
    .local v13, index:I
    if-eqz v9, :cond_3

    .line 790
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 793
    .local v11, display_name:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 794
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 795
    .local v14, length:I
    const/4 v2, 0x2

    if-lt v14, v2, :cond_0

    .line 796
    add-int/lit8 v2, v14, -0x2

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 797
    .local v16, sub:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 799
    .local v17, value:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 778
    .end local v8           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #display_name:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #length:I
    .end local v16           #sub:Ljava/lang/String;
    .end local v17           #value:J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    .restart local v8       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v13       #index:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_3
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    const/16 v2, 0x63

    if-gt v12, v2, :cond_5

    .line 807
    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 806
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 810
    :cond_4
    move v13, v12

    .line 814
    :cond_5
    return v13
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 2
    .parameter "ctx"
    .parameter "slot"

    .prologue
    .line 531
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 578
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
    .line 292
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 293
    .local v3, oldSimList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v2, newSimList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 295
    new-instance v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-direct {v1, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 296
    .local v1, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v1           #mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    return-object v2
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 2
    .parameter "ctx"
    .parameter "iccid"

    .prologue
    .line 463
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 464
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v1, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    .line 467
    :cond_0
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 468
    .local v0, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    goto :goto_0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 2
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    .line 357
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 358
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v1, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 362
    :goto_0
    return-object v0

    .line 361
    :cond_0
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 362
    .local v0, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    goto :goto_0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 2
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    .line 391
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 392
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v1, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 396
    :goto_0
    return-object v0

    .line 395
    :cond_0
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 396
    .local v0, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    goto :goto_0
.end method

.method public static getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .locals 2
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    .line 427
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 428
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v1, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 432
    :goto_0
    return-object v0

    .line 431
    :cond_0
    new-instance v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;-><init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 432
    .local v0, mSimInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    goto :goto_0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 1
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    .line 500
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    .line 548
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSlotByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getSuffixFromIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 765
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 1
    .parameter "ctx"
    .parameter "color"
    .parameter "SIMId"

    .prologue
    .line 683
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setColor(Landroid/content/Context;IJ)I

    move-result v0

    return v0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 1
    .parameter "ctx"
    .parameter "roaming"
    .parameter "SIMId"

    .prologue
    .line 728
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v0

    return v0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 1
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 741
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 1
    .parameter "ctx"
    .parameter "format"
    .parameter "SIMId"

    .prologue
    .line 706
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDispalyNumberFormat(Landroid/content/Context;IJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"

    .prologue
    .line 629
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .parameter "ctx"
    .parameter "number"
    .parameter "SIMId"

    .prologue
    .line 664
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    return v0
.end method

.method public getDataRoaming()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    return v0
.end method

.method public getDispalyNumberFormat()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getICCId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimBackgroundRes()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    return v0
.end method

.method public getSimId()J
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    return-wide v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->mSIMInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    return v0
.end method
