.class public Lcom/mediatek/apst/target/data/provider/contacts/GroupContent;
.super Ljava/lang/Object;
.source "GroupContent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToGroup(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 9
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 59
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 61
    :cond_0
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v7

    const-string v5, "Cursor is null."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 133
    :cond_1
    :goto_0
    return-object v2

    .line 66
    :cond_2
    new-instance v2, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-direct {v2}, Lcom/mediatek/apst/util/entity/contacts/Group;-><init>()V

    .line 71
    .local v2, group:Lcom/mediatek/apst/util/entity/contacts/Group;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, colId:I
    if-eq v6, v0, :cond_3

    .line 73
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 76
    :cond_3
    const-string v4, "title"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    if-eq v6, v0, :cond_4

    .line 78
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setTitle(Ljava/lang/String;)V

    .line 81
    :cond_4
    const-string v4, "notes"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 82
    if-eq v6, v0, :cond_5

    .line 83
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setNotes(Ljava/lang/String;)V

    .line 86
    :cond_5
    const-string v4, "system_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 87
    if-eq v6, v0, :cond_6

    .line 88
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setSystemId(Ljava/lang/String;)V

    .line 91
    :cond_6
    const-string v4, "deleted"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 92
    if-eq v6, v0, :cond_7

    .line 93
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setDeleted(Ljava/lang/String;)V

    .line 100
    :cond_7
    const-string v4, "account_name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    if-eq v6, v0, :cond_8

    .line 102
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setAccount_name(Ljava/lang/String;)V

    .line 105
    :cond_8
    const-string v4, "account_type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 106
    if-eq v6, v0, :cond_9

    .line 107
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setAccount_type(Ljava/lang/String;)V

    .line 110
    :cond_9
    const-string v4, "version"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 111
    if-eq v6, v0, :cond_a

    .line 112
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setVersion(Ljava/lang/String;)V

    .line 115
    :cond_a
    const-string v4, "dirty"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 116
    if-eq v6, v0, :cond_b

    .line 117
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setDirty(Ljava/lang/String;)V

    .line 120
    :cond_b
    const-string v4, "group_visible"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    if-eq v6, v0, :cond_c

    .line 122
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setGroup_visible(Ljava/lang/String;)V

    .line 125
    :cond_c
    const-string v4, "should_sync"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 126
    if-eq v6, v0, :cond_1

    .line 127
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/apst/util/entity/contacts/Group;->setShould_sync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 129
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-static {v4, v3, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 9
    .parameter "c"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 145
    if-nez p0, :cond_0

    .line 146
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Cursor is null."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    :goto_0
    return v2

    .line 148
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-eq v5, v7, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 149
    :cond_1
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Cursor has moved to the end."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    if-nez p1, :cond_3

    .line 153
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Buffer is null."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 162
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, colId:I
    if-eq v7, v0, :cond_4

    .line 164
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 169
    :goto_1
    const-string v5, "title"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 170
    if-eq v7, v0, :cond_5

    .line 171
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 176
    :goto_2
    const-string v5, "notes"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 177
    if-eq v7, v0, :cond_6

    .line 178
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 183
    :goto_3
    const-string v5, "system_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    if-eq v7, v0, :cond_7

    .line 185
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 190
    :goto_4
    const-string v5, "deleted"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 191
    if-eq v7, v0, :cond_8

    .line 192
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 201
    :goto_5
    const-string v5, "account_name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 202
    if-eq v7, v0, :cond_9

    .line 203
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 208
    :goto_6
    const-string v5, "account_type"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 209
    if-eq v7, v0, :cond_a

    .line 210
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 215
    :goto_7
    const-string v5, "version"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 216
    if-eq v7, v0, :cond_b

    .line 217
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 222
    :goto_8
    const-string v5, "dirty"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 223
    if-eq v7, v0, :cond_c

    .line 224
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 229
    :goto_9
    const-string v5, "group_visible"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 230
    if-eq v7, v0, :cond_d

    .line 231
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 236
    :goto_a
    const-string v5, "should_sync"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 237
    if-eq v7, v0, :cond_e

    .line 238
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :goto_b
    move v2, v3

    .line 255
    goto/16 :goto_0

    .line 166
    :cond_4
    const-wide/16 v5, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 243
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    invoke-static {v4, v8, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 173
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 247
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 252
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v2, v4

    .line 253
    goto/16 :goto_0

    .line 180
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_6
    const/4 v5, 0x0

    :try_start_2
    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 187
    :cond_7
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 194
    :cond_8
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 205
    :cond_9
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 212
    :cond_a
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_7

    .line 219
    :cond_b
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_8

    .line 226
    :cond_c
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_9

    .line 233
    :cond_d
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_a

    .line 240
    :cond_e
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b
.end method

.method public static groupToValues(Lcom/mediatek/apst/util/entity/contacts/Group;)Landroid/content/ContentValues;
    .locals 11
    .parameter "group"

    .prologue
    .line 325
    const/4 v8, 0x0

    .line 326
    .local v8, values:Landroid/content/ContentValues;
    if-eqz p0, :cond_8

    .line 327
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .restart local v8       #values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, title:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 331
    const-string v10, "title"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getNotes()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, note:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 335
    const-string v10, "notes"

    invoke-virtual {v8, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDeleted()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, delete:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 339
    const-string v10, "deleted"

    invoke-virtual {v8, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 343
    const-string v10, "account_name"

    invoke-virtual {v8, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, accountType:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 347
    const-string v10, "account_type"

    invoke-virtual {v8, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getVersion()Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, version:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 351
    const-string v10, "version"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDirty()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, dirty:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 355
    const-string v10, "dirty"

    invoke-virtual {v8, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getGroup_visible()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, groupVisible:Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 359
    const-string v10, "group_visible"

    invoke-virtual {v8, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->getShould_sync()Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, shouldSync:Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 363
    const-string v10, "should_sync"

    invoke-virtual {v8, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #delete:Ljava/lang/String;
    .end local v3           #dirty:Ljava/lang/String;
    .end local v4           #groupVisible:Ljava/lang/String;
    .end local v5           #note:Ljava/lang/String;
    .end local v6           #shouldSync:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v9           #version:Ljava/lang/String;
    :cond_8
    return-object v8
.end method

.method public static groupsToValues(Ljava/util/List;)[Landroid/content/ContentValues;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, groups:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    const/4 v9, 0x0

    .line 268
    .local v9, values:[Landroid/content/ContentValues;
    if-eqz p0, :cond_9

    .line 274
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    new-array v9, v11, [Landroid/content/ContentValues;

    .line 275
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_9

    .line 276
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    aput-object v11, v9, v5

    .line 278
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, title:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 280
    aget-object v11, v9, v5

    const-string v12, "title"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getNotes()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, note:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 284
    aget-object v11, v9, v5

    const-string v12, "notes"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDeleted()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, delete:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 288
    aget-object v11, v9, v5

    const-string v12, "deleted"

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_2
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 292
    aget-object v11, v9, v5

    const-string v12, "account_name"

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, accountType:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 296
    aget-object v11, v9, v5

    const-string v12, "account_type"

    invoke-virtual {v11, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getVersion()Ljava/lang/String;

    move-result-object v10

    .line 299
    .local v10, version:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 300
    aget-object v11, v9, v5

    const-string v12, "version"

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_5
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDirty()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, dirty:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 304
    aget-object v11, v9, v5

    const-string v12, "dirty"

    invoke-virtual {v11, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_6
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getGroup_visible()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, groupVisible:Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 308
    aget-object v11, v9, v5

    const-string v12, "group_visible"

    invoke-virtual {v11, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_7
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Group;->getShould_sync()Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, shouldSync:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 312
    aget-object v11, v9, v5

    const-string v12, "should_sync"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 316
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #delete:Ljava/lang/String;
    .end local v3           #dirty:Ljava/lang/String;
    .end local v4           #groupVisible:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #note:Ljava/lang/String;
    .end local v7           #shouldSync:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    .end local v10           #version:Ljava/lang/String;
    :cond_9
    return-object v9
.end method
