.class public Lcom/mediatek/apst/target/data/provider/contacts/RawContactsContent;
.super Ljava/lang/Object;
.source "RawContactsContent.java"


# static fields
.field public static final COLUMN_INDEX_IN_SIM:Ljava/lang/String; = "index_in_sim"

.field public static final COLUMN_MODIFY_TIME:Ljava/lang/String; = "timestamp"

.field public static final COLUMN_SOURCE_LOCATION:Ljava/lang/String; = "indicate_phone_or_sim_contact"

.field public static final INSERT_FAIL:I = -0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 10
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 192
    if-nez p0, :cond_0

    .line 193
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Cursor is null."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    :goto_0
    return v3

    .line 195
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    if-eq v6, v8, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 197
    :cond_1
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Cursor has moved to the end."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    if-nez p1, :cond_3

    .line 201
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Buffer is null."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 210
    :try_start_0
    const-string v6, "_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, colId:I
    if-eq v8, v0, :cond_5

    .line 212
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 217
    :goto_1
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    const-string v6, "display_name"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 220
    if-eq v8, v0, :cond_6

    .line 221
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 226
    :goto_2
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 228
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 230
    const-string v6, "indicate_phone_or_sim_contact"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 231
    if-eq v8, v0, :cond_7

    .line 232
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/apst/target/util/Global;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 238
    :goto_3
    const-string v6, "timestamp"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 239
    if-eq v8, v0, :cond_8

    .line 240
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 246
    :goto_4
    const-string v6, "starred"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 247
    if-eq v8, v0, :cond_a

    .line 248
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_9

    move v6, v4

    :goto_5
    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 254
    :goto_6
    const-string v6, "send_to_voicemail"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 255
    if-eq v8, v0, :cond_c

    .line 256
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_b

    move v6, v4

    :goto_7
    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 265
    :goto_8
    const-string v6, "version"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 266
    if-eq v8, v0, :cond_d

    .line 267
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 273
    :goto_9
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 275
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 277
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 279
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 281
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 283
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 285
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 287
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 289
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 291
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 293
    const-string v6, "indicate_phone_or_sim_contact"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 294
    if-eq v8, v0, :cond_e

    .line 295
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 298
    .local v2, indicateSimOrPhone:I
    invoke-static {v2}, Lcom/mediatek/apst/target/util/Global;->getSourceLocationById(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 316
    .end local v2           #indicateSimOrPhone:I
    :goto_a
    sget v6, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v6, :cond_4

    .line 317
    const-string v6, "index_in_sim"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 318
    if-eq v8, v0, :cond_f

    .line 319
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 320
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "c.getColumnIndex(COLUMN_INDEX_IN_SIM): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_b
    move v3, v4

    .line 340
    goto/16 :goto_0

    .line 214
    :cond_5
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 328
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    invoke-static {v5, v9, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 223
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_6
    const/4 v6, 0x0

    :try_start_1
    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 332
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 337
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v3, v5

    .line 338
    goto/16 :goto_0

    .line 235
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_7
    const/4 v6, 0x0

    :try_start_2
    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 242
    :cond_8
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    :cond_9
    move v6, v3

    .line 248
    goto/16 :goto_5

    .line 251
    :cond_a
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    goto/16 :goto_6

    :cond_b
    move v6, v3

    .line 256
    goto/16 :goto_7

    .line 259
    :cond_c
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    goto/16 :goto_8

    .line 269
    :cond_d
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    .line 309
    :cond_e
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 311
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_a

    .line 324
    :cond_f
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b
.end method

.method public static cursorToRawContact(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v10, -0x1

    .line 79
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-eq v5, v10, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v5, v8, :cond_2

    .line 81
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v7

    const-string v6, "Cursor is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    .line 180
    :cond_1
    :goto_0
    return-object v1

    .line 86
    :cond_2
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 87
    .local v1, contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    invoke-virtual {v1, v10}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setStoreLocation(I)V

    .line 93
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, colId:I
    if-eq v10, v0, :cond_3

    .line 95
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 98
    :cond_3
    const-string v5, "display_name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-eq v10, v0, :cond_4

    .line 100
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setDisplayName(Ljava/lang/String;)V

    .line 103
    :cond_4
    const-string v5, "starred"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 104
    if-eq v10, v0, :cond_5

    .line 105
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_b

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setStarred(Z)V

    .line 109
    :cond_5
    const-string v5, "send_to_voicemail"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 110
    if-eq v10, v0, :cond_6

    .line 111
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_c

    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setSendToVoicemail(Z)V

    .line 130
    :cond_6
    const-string v5, "version"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 131
    if-eq v10, v0, :cond_7

    .line 132
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setVersion(I)V

    .line 135
    :cond_7
    const-string v5, "dirty"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 136
    if-eq v10, v0, :cond_8

    .line 137
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_d

    move v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setDirty(Z)V

    .line 143
    :cond_8
    const-string v5, "indicate_phone_or_sim_contact"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 144
    if-eq v10, v0, :cond_9

    .line 145
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 148
    .local v3, indicateSimOrPhone:I
    invoke-static {v3}, Lcom/mediatek/apst/target/util/Global;->getSourceLocationById(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setSourceLocation(I)V

    .line 151
    invoke-virtual {v1, v3}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setSimId(I)V

    .line 153
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/apst/target/util/Global;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setSimName(Ljava/lang/String;)V

    .line 156
    .end local v3           #indicateSimOrPhone:I
    :cond_9
    const-string v5, "timestamp"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 157
    if-eq v10, v0, :cond_a

    .line 158
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setModifyTime(J)V

    .line 161
    :cond_a
    sget v5, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v5, :cond_1

    .line 162
    const-string v5, "index_in_sim"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 163
    if-eq v10, v0, :cond_e

    .line 164
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setSimIndex(I)V

    .line 165
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v5, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact.getSimIndex()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSimIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 176
    .end local v0           #colId:I
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-static {v5, v4, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_b
    move v5, v7

    .line 105
    goto/16 :goto_1

    :cond_c
    move v5, v7

    .line 111
    goto/16 :goto_2

    :cond_d
    move v5, v7

    .line 137
    goto :goto_3

    .line 168
    :cond_e
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {v1, v5}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->setSimIndex(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
