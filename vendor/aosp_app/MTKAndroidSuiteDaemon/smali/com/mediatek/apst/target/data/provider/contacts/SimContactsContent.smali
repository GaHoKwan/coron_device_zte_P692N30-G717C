.class public Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;
.super Ljava/lang/Object;
.source "SimContactsContent.java"


# static fields
.field public static final COLUMN_EMAILS:Ljava/lang/String; = "emails"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final COLUMN_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final COLUMN_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final COLUMN_TAG:Ljava/lang/String; = "tag"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SIM1:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SIM2:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SIM3:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SIM4:Landroid/net/Uri; = null

.field public static final ERR_ICC_GENERIC_FAILURE:I = -0xa

.field public static final ERR_ICC_NOT_READY:I = -0x4

.field public static final ERR_ICC_NO_ERROR:I = 0x1

.field public static final ERR_ICC_NUMBER_TOO_LONG:I = -0x1

.field public static final ERR_ICC_PASSWORD_ERROR:I = -0x5

.field public static final ERR_ICC_STORAGE_FULL:I = -0x3

.field public static final ERR_ICC_TEXT_TOO_LONG:I = -0x2

.field public static final ERR_ICC_UNKNOWN:I

.field public static final ICCUSIM1URI:Landroid/net/Uri;

.field public static final ICCUSIM2URI:Landroid/net/Uri;

.field public static final ICCUSIM3URI:Landroid/net/Uri;

.field public static final ICCUSIM4URI:Landroid/net/Uri;

.field public static final ICCUSIMURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://icc/adn1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM1:Landroid/net/Uri;

    .line 60
    const-string v0, "content://icc/adn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM2:Landroid/net/Uri;

    .line 62
    const-string v0, "content://icc/adn3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM3:Landroid/net/Uri;

    .line 64
    const-string v0, "content://icc/adn4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM4:Landroid/net/Uri;

    .line 69
    const-string v0, "content://icc/pbr"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIMURI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://icc/pbr1/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM1URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://icc/pbr2/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM2URI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://icc/pbr3/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM3URI:Landroid/net/Uri;

    .line 77
    const-string v0, "content://icc/pbr4/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM4URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;I)I
    .locals 9
    .parameter "cursor"
    .parameter "buffer"
    .parameter "storeLocation"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 220
    if-nez p0, :cond_0

    .line 221
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "Cursor is null."

    invoke-static {v5, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    :goto_0
    return v2

    .line 224
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-eq v5, v7, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 226
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "Cursor has moved to the end."

    invoke-static {v5, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_2
    if-nez p1, :cond_3

    .line 230
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "Buffer is null."

    invoke-static {v5, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 240
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, colId:I
    if-eq v7, v0, :cond_4

    .line 242
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 247
    :goto_1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 250
    const-string v5, "name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 251
    if-eq v7, v0, :cond_5

    .line 252
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 257
    :goto_2
    const-string v5, "number"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 258
    if-eq v7, v0, :cond_6

    .line 259
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 264
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 266
    invoke-static {p2}, Lcom/mediatek/apst/target/util/Global;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 268
    const-string v5, "timestamp"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 270
    if-eq v7, v0, :cond_7

    .line 271
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 277
    :goto_4
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 279
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 284
    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 287
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 289
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 291
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 293
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 295
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 297
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 299
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 301
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 303
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 305
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v2, v3

    .line 319
    goto/16 :goto_0

    .line 244
    :cond_4
    const-wide/16 v5, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 306
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x0

    invoke-static {v5, v3, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 254
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 311
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 316
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v2, v4

    .line 317
    goto/16 :goto_0

    .line 261
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_6
    const/4 v5, 0x0

    :try_start_2
    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_3

    .line 273
    :cond_7
    const-wide/16 v5, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method public static cursorToRawContact(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->cursorToRawContact(Landroid/database/Cursor;I)Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v0

    return-object v0
.end method

.method public static cursorToRawContact(Landroid/database/Cursor;I)Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 7
    .parameter "cursor"
    .parameter "storeLocation"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 157
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    :cond_0
    move-object v1, v3

    .line 197
    :cond_1
    :goto_0
    return-object v1

    .line 163
    :cond_2
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 164
    .local v1, contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setStoreLocation(I)V

    .line 166
    invoke-static {p1}, Lcom/mediatek/apst/target/util/Global;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setSimName(Ljava/lang/String;)V

    .line 172
    :try_start_0
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, colId:I
    if-eq v6, v0, :cond_3

    .line 174
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 177
    :cond_3
    const-string v4, "name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 178
    if-eq v6, v0, :cond_4

    .line 179
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setDisplayName(Ljava/lang/String;)V

    .line 182
    :cond_4
    const-string v4, "number"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 183
    if-eq v6, v0, :cond_5

    .line 184
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setPrimaryNumber(Ljava/lang/String;)V

    .line 187
    :cond_5
    const-string v4, "timestamp"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 189
    if-eq v6, v0, :cond_1

    .line 190
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setModifyTime(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v0           #colId:I
    :catch_0
    move-exception v2

    .line 194
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
