.class public Lcom/android/phone/BusinessCard;
.super Ljava/lang/Object;
.source "BusinessCard.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BusinessCard"

.field public static final SECONDARY_ID:I = 0x13304fc

.field private static mCheckYpYet:Z

.field private static mSupportNumberLocation:Z

.field private static mSupportYP:I

.field private static sInstance:Lcom/android/phone/BusinessCard;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQueriedContacts:Lcom/android/phone/YpContact;

.field private mQueryInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/BusinessCard;->sInstance:Lcom/android/phone/BusinessCard;

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/BusinessCard;->mSupportYP:I

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BusinessCard;->mCheckYpYet:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BusinessCard;->mQueryInProgress:Z

    .line 48
    iput-object p1, p0, Lcom/android/phone/BusinessCard;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static Bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "paramArrayOfByte"

    .prologue
    .line 191
    array-length v0, p0

    .line 192
    .local v0, i:I
    const/4 v2, 0x0

    .line 193
    .local v2, localBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 194
    array-length v1, p0

    .line 195
    .local v1, k:I
    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 197
    .end local v1           #k:I
    :cond_0
    return-object v2
.end method

.method static synthetic access$000(Lcom/android/phone/BusinessCard;[Ljava/lang/String;)[Lcom/android/phone/YpContact;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/BusinessCard;->queryYpContact([Ljava/lang/String;)[Lcom/android/phone/YpContact;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/BusinessCard;Lcom/android/phone/YpContact;)Lcom/android/phone/YpContact;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    return-object p1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    sget-boolean v4, Lcom/android/phone/BusinessCard;->mCheckYpYet:Z

    if-eqz v4, :cond_2

    .line 206
    sget v4, Lcom/android/phone/BusinessCard;->mSupportYP:I

    if-ne v4, v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    sput-boolean v2, Lcom/android/phone/BusinessCard;->mCheckYpYet:Z

    .line 211
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 212
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    move v2, v3

    .line 217
    goto :goto_0

    .line 220
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 223
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 185
    const-string v0, "BusinessCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method private queryYpContact([Ljava/lang/String;)[Lcom/android/phone/YpContact;
    .locals 1
    .parameter "numbers"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/phone/BusinessCard;->queryYpContactZTE([Ljava/lang/String;)[Lcom/android/phone/YpContact;

    move-result-object v0

    return-object v0
.end method

.method private queryYpContactZTE([Ljava/lang/String;)[Lcom/android/phone/YpContact;
    .locals 22
    .parameter "numbers"

    .prologue
    .line 270
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v0, v3, [Lcom/android/phone/YpContact;

    move-object/from16 v19, v0

    .line 271
    .local v19, ypcs:[Lcom/android/phone/YpContact;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryYpContactZTE 0 mSupportYP="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v9, Lcom/android/phone/BusinessCard;->mSupportYP:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " mSupportNumberLocation="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v9, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 272
    sget v3, Lcom/android/phone/BusinessCard;->mSupportYP:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    sget-boolean v3, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    if-eqz v3, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BusinessCard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 275
    .local v2, contentResolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/phone/IYpConst;->URI_YP_CONTACT:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 276
    .local v15, cursor:Landroid/database/Cursor;
    const-string v3, "queryYpContactZTE 1"

    invoke-static {v3}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 277
    if-nez v15, :cond_1

    .line 278
    const/16 v19, 0x0

    .line 320
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v19           #ypcs:[Lcom/android/phone/YpContact;
    :cond_0
    :goto_0
    return-object v19

    .line 283
    .restart local v2       #contentResolver:Landroid/content/ContentResolver;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v19       #ypcs:[Lcom/android/phone/YpContact;
    :cond_1
    const/16 v17, 0x0

    .line 284
    .local v17, i:I
    :goto_1
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "columnsCount="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 286
    const-string v3, "number"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, number:Ljava/lang/String;
    const-string v3, "name"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, name:Ljava/lang/String;
    const-string v3, "datasource"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, datasource:Ljava/lang/String;
    const-string v3, "photo"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 291
    .local v6, photo:[B
    const/16 v18, 0x0

    .line 292
    .local v18, location_index:I
    const/4 v8, 0x0

    .line 295
    .local v8, location:Ljava/lang/String;
    :try_start_1
    const-string v3, "location"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 296
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 302
    :goto_2
    :try_start_2
    new-instance v3, Lcom/android/phone/YpContact;

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v19, v17

    .line 303
    add-int/lit8 v17, v17, 0x1

    .line 304
    goto :goto_1

    .line 297
    :catch_0
    move-exception v16

    .line 299
    .local v16, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "BusinessCard"

    const-string v9, "no such column: location"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 308
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #photo:[B
    .end local v7           #datasource:Ljava/lang/String;
    .end local v8           #location:Ljava/lang/String;
    .end local v16           #ex:Ljava/lang/IllegalArgumentException;
    .end local v18           #location_index:I
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 311
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #i:I
    :cond_3
    sget-boolean v3, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    if-eqz v3, :cond_0

    .line 313
    const/4 v3, 0x0

    new-instance v9, Lcom/android/phone/YpContact;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    check-cast v12, Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/phone/NumberLocationQuery;->instance()Lcom/android/phone/NumberLocationQuery;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BusinessCard;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, p1, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/phone/NumberLocationQuery;->queryNumberLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v9 .. v14}, Lcom/android/phone/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v19, v3

    goto/16 :goto_0
.end method

.method private queryYpSupport(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/phone/BusinessCard;->queryYpSupportZTE(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private queryYpSupportZD(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method private queryYpSupportZTE(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 242
    const-string v1, "queryYpSupport"

    invoke-static {v1}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 243
    const-string v1, "cn.com.zte.yp"

    invoke-static {p1, v1}, Lcom/android/phone/BusinessCard;->checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v8

    .line 265
    :goto_0
    return v1

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/phone/IYpConst;->URI_YP_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move v1, v8

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 253
    const-string v1, "enabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, support:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 255
    const-string v1, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const/4 v1, 0x1

    sput v1, Lcom/android/phone/BusinessCard;->mSupportYP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v9

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    goto :goto_0

    .end local v7           #support:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .parameter "token"
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v7, 0x0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNumberLocationEnabled  ?= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/NumberLocationQuery;->instance()Lcom/android/phone/NumberLocationQuery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NumberLocationQuery;->isNumberLocationEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/android/phone/NumberLocationQuery;->instance()Lcom/android/phone/NumberLocationQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NumberLocationQuery;->isNumberLocationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/android/phone/BusinessCard;

    invoke-direct {v1, p1}, Lcom/android/phone/BusinessCard;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, sInstance:Lcom/android/phone/BusinessCard;
    sget v2, Lcom/android/phone/BusinessCard;->mSupportYP:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 64
    invoke-direct {v1, p1}, Lcom/android/phone/BusinessCard;->queryYpSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_YELLOW_PAGE_ENABLED:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sput v2, Lcom/android/phone/BusinessCard;->mSupportYP:I

    .line 66
    :cond_1
    sget-boolean v2, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_CHINA_LOCATION_ENABLED:Z

    sput-boolean v2, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init-phoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSupportYP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/BusinessCard;->mSupportYP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallerInfoAsyncQuery.FEATURE_YELLOW_PAGE_ENABLED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_YELLOW_PAGE_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSupportNumberLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 73
    sget v2, Lcom/android/phone/BusinessCard;->mSupportYP:I

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    if-nez v2, :cond_3

    .line 75
    new-instance v6, Lcom/android/phone/CallerInfo;

    invoke-direct {v6}, Lcom/android/phone/CallerInfo;-><init>()V

    .line 76
    .local v6, ci:Lcom/android/phone/CallerInfo;
    iput-object p2, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 77
    invoke-interface {p3, p0, p4, v6}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0

    .end local v6           #ci:Lcom/android/phone/CallerInfo;
    :cond_2
    move v2, v7

    .line 64
    goto :goto_1

    .line 82
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init-phoneNumber = 111 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mSupportNumberLocation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/android/phone/BusinessCard$1;

    move-object v2, p2

    move-object v3, p3

    move v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BusinessCard$1;-><init>(Lcom/android/phone/BusinessCard;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)V

    .line 127
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method


# virtual methods
.method public getCompanyBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    sget v3, Lcom/android/phone/BusinessCard;->mSupportYP:I

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    if-nez v2, :cond_0

    .line 150
    const/4 v2, 0x0

    .line 161
    :goto_0
    return-object v2

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    invoke-virtual {v2}, Lcom/android/phone/YpContact;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    invoke-virtual {v2}, Lcom/android/phone/YpContact;->getPhoto()[B

    move-result-object v1

    .line 155
    .local v1, bits:[B
    if-eqz v1, :cond_1

    .line 157
    invoke-static {v1}, Lcom/android/phone/BusinessCard;->Bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #bits:[B
    :cond_1
    move-object v2, v0

    .line 161
    goto :goto_0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, companyName:Ljava/lang/String;
    const-string v1, "getCompanyName"

    invoke-static {v1}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x1

    sget v2, Lcom/android/phone/BusinessCard;->mSupportYP:I

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    if-nez v1, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    invoke-virtual {v1}, Lcom/android/phone/YpContact;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    invoke-virtual {v1}, Lcom/android/phone/YpContact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    invoke-virtual {v1}, Lcom/android/phone/YpContact;->getDatasource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompanyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V

    move-object v1, v0

    .line 180
    goto :goto_0
.end method

.method protected getNumberLocation()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, location:Ljava/lang/String;
    const/4 v2, 0x1

    sget v3, Lcom/android/phone/BusinessCard;->mSupportYP:I

    if-eq v2, v3, :cond_1

    sget-boolean v2, Lcom/android/phone/BusinessCard;->mSupportNumberLocation:Z

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v1

    .line 138
    :cond_1
    invoke-static {}, Lcom/android/phone/NumberLocationQuery;->instance()Lcom/android/phone/NumberLocationQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NumberLocationQuery;->isNumberLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;

    invoke-virtual {v1}, Lcom/android/phone/YpContact;->getLocation()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 144
    goto :goto_0
.end method
