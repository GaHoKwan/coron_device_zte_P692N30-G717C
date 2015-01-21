.class public Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;
.super Ljava/lang/Object;
.source "RawContactsEntityContent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToContactData(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .locals 14
    .parameter "cursor"

    .prologue
    .line 65
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    const-wide/16 v4, -0x1

    .line 73
    .local v4, id:J
    const-wide/16 v7, -0x1

    .line 74
    .local v7, rawContactId:J
    const/4 v6, 0x0

    .line 75
    .local v6, primary:Z
    const/4 v10, 0x0

    .line 76
    .local v10, superPrimary:Z
    const/4 v9, 0x0

    .line 80
    .local v9, strMimeType:Ljava/lang/String;
    :try_start_0
    const-string v11, "_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, colId:I
    const/4 v11, -0x1

    if-eq v11, v0, :cond_2

    .line 82
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 85
    :cond_2
    const-string v11, "data_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 86
    const/4 v11, -0x1

    if-eq v11, v0, :cond_4

    .line 87
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 90
    new-instance v2, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    const-wide/16 v11, -0x1

    const/4 v13, -0x1

    invoke-direct {v2, v11, v12, v13}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .local v2, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    :try_start_1
    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 165
    .end local v0           #colId:I
    .end local v2           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .local v3, e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_3
    :try_start_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 100
    :cond_4
    const-string v11, "is_primary"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    const/4 v11, -0x1

    if-eq v11, v0, :cond_5

    .line 102
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v6, 0x1

    .line 105
    :cond_5
    :goto_2
    const-string v11, "is_super_primary"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 106
    const/4 v11, -0x1

    if-eq v11, v0, :cond_6

    .line 107
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v10, 0x1

    .line 110
    :cond_6
    :goto_3
    const-string v11, "mimetype"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 111
    const/4 v11, -0x1

    if-eq v11, v0, :cond_7

    .line 112
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    :cond_7
    if-nez v9, :cond_a

    .line 117
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    const-string v12, "mimeType is absent in cursor."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    goto :goto_0

    .line 102
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 107
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 120
    :cond_a
    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 122
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToStructuredName(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    move-result-object v1

    .line 160
    :goto_4
    invoke-virtual {v1, v4, v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 161
    invoke-virtual {v1, v7, v8}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 162
    invoke-virtual {v1, v6}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setPrimary(Z)V

    .line 163
    invoke-virtual {v1, v10}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setSuperPrimary(Z)V

    move-object v2, v1

    .line 169
    goto/16 :goto_0

    .line 123
    :cond_b
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 125
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToPhone(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Phone;

    move-result-object v1

    goto :goto_4

    .line 126
    :cond_c
    const-string v11, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 128
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToPhoto(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Photo;

    move-result-object v1

    goto :goto_4

    .line 129
    :cond_d
    const-string v11, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 131
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToIm(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Im;

    move-result-object v1

    goto :goto_4

    .line 132
    :cond_e
    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 134
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToEmail(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Email;

    move-result-object v1

    goto :goto_4

    .line 135
    :cond_f
    const-string v11, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 137
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToStructuredPostal(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    move-result-object v1

    goto :goto_4

    .line 138
    :cond_10
    const-string v11, "vnd.android.cursor.item/organization"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 140
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToOrganization(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Organization;

    move-result-object v1

    goto :goto_4

    .line 141
    :cond_11
    const-string v11, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 143
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToNickname(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Nickname;

    move-result-object v1

    goto :goto_4

    .line 144
    :cond_12
    const-string v11, "vnd.android.cursor.item/website"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 146
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToWebsite(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Website;

    move-result-object v1

    goto :goto_4

    .line 147
    :cond_13
    const-string v11, "vnd.android.cursor.item/note"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 149
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToNote(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Note;

    move-result-object v1

    goto/16 :goto_4

    .line 150
    :cond_14
    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 152
    invoke-static {p0}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToGroupMembership(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    move-result-object v1

    goto/16 :goto_4

    .line 154
    :cond_15
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignored unknown mimeType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 164
    .end local v0           #colId:I
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method private static cursorToEmail(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Email;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 334
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Email;-><init>()V

    .line 338
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Email;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 339
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 340
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Email;->setData(Ljava/lang/String;)V

    .line 342
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 343
    if-eq v5, v0, :cond_1

    .line 344
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Email;->setType(I)V

    .line 346
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 347
    if-eq v5, v0, :cond_2

    .line 348
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Email;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_2
    :goto_0
    return-object v1

    .line 350
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Email;
    :catch_0
    move-exception v2

    .line 351
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 352
    goto :goto_0
.end method

.method private static cursorToGroupMembership(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 566
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;-><init>()V

    .line 570
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 572
    .local v0, colId:I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 573
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->setGroupId(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    :cond_0
    :goto_0
    return-object v1

    .line 575
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    :catch_0
    move-exception v2

    .line 576
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 577
    goto :goto_0
.end method

.method private static cursorToIm(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Im;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 296
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Im;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Im;-><init>()V

    .line 300
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Im;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 302
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->setData(Ljava/lang/String;)V

    .line 304
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 305
    if-eq v5, v0, :cond_1

    .line 306
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->setType(I)V

    .line 308
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 309
    if-eq v5, v0, :cond_2

    .line 310
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->setLabel(Ljava/lang/String;)V

    .line 313
    :cond_2
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 314
    if-eq v5, v0, :cond_3

    .line 315
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->setProtocol(I)V

    .line 317
    :cond_3
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 318
    if-eq v5, v0, :cond_4

    .line 319
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->setCustomProtocol(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_4
    :goto_0
    return-object v1

    .line 321
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Im;
    :catch_0
    move-exception v2

    .line 322
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 323
    goto :goto_0
.end method

.method private static cursorToNickname(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Nickname;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 487
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Nickname;-><init>()V

    .line 491
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 492
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 493
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->setName(Ljava/lang/String;)V

    .line 495
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 496
    if-eq v5, v0, :cond_1

    .line 497
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->setType(I)V

    .line 499
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 500
    if-eq v5, v0, :cond_2

    .line 501
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_2
    :goto_0
    return-object v1

    .line 503
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :catch_0
    move-exception v2

    .line 504
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 505
    goto :goto_0
.end method

.method private static cursorToNote(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Note;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 545
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Note;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Note;-><init>()V

    .line 549
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Note;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, colId:I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 551
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Note;->setNote(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_0
    :goto_0
    return-object v1

    .line 553
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Note;
    :catch_0
    move-exception v2

    .line 554
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 555
    goto :goto_0
.end method

.method private static cursorToOrganization(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Organization;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 430
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Organization;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Organization;-><init>()V

    .line 434
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 436
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setCompany(Ljava/lang/String;)V

    .line 438
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 439
    if-eq v5, v0, :cond_1

    .line 440
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setType(I)V

    .line 442
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 443
    if-eq v5, v0, :cond_2

    .line 444
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setLabel(Ljava/lang/String;)V

    .line 446
    :cond_2
    const-string v4, "data4"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 447
    if-eq v5, v0, :cond_3

    .line 448
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setTitle(Ljava/lang/String;)V

    .line 450
    :cond_3
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 452
    if-eq v5, v0, :cond_4

    .line 453
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setDepartment(Ljava/lang/String;)V

    .line 455
    :cond_4
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 457
    if-eq v5, v0, :cond_5

    .line 458
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setJobDescription(Ljava/lang/String;)V

    .line 460
    :cond_5
    const-string v4, "data7"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 461
    if-eq v5, v0, :cond_6

    .line 462
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setSymbol(Ljava/lang/String;)V

    .line 464
    :cond_6
    const-string v4, "data8"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 466
    if-eq v5, v0, :cond_7

    .line 467
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setPhoneticName(Ljava/lang/String;)V

    .line 469
    :cond_7
    const-string v4, "data9"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 471
    if-eq v5, v0, :cond_8

    .line 472
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Organization;->setOfficeLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_8
    :goto_0
    return-object v1

    .line 474
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :catch_0
    move-exception v2

    .line 475
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 476
    goto :goto_0
.end method

.method private static cursorToPhone(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Phone;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 240
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Phone;-><init>()V

    .line 244
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 246
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Phone;->setNumber(Ljava/lang/String;)V

    .line 248
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 249
    if-eq v5, v0, :cond_1

    .line 250
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Phone;->setType(I)V

    .line 252
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 253
    if-eq v5, v0, :cond_2

    .line 254
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Phone;->setLabel(Ljava/lang/String;)V

    .line 257
    :cond_2
    const-string v4, "sim_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 259
    if-eq v5, v0, :cond_3

    .line 260
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Phone;->setBindingSimId(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_3
    :goto_0
    return-object v1

    .line 262
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :catch_0
    move-exception v2

    .line 263
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 264
    goto :goto_0
.end method

.method private static cursorToPhoto(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Photo;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 275
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Photo;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Photo;-><init>()V

    .line 279
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :try_start_0
    const-string v4, "data15"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, colId:I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 281
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Photo;->setPhotoBytes([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_0
    :goto_0
    return-object v1

    .line 283
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :catch_0
    move-exception v2

    .line 284
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 285
    goto :goto_0
.end method

.method private static cursorToStructuredName(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 178
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;-><init>()V

    .line 182
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 185
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setDisplayName(Ljava/lang/String;)V

    .line 187
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 189
    if-eq v5, v0, :cond_1

    .line 190
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setGivenName(Ljava/lang/String;)V

    .line 192
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 194
    if-eq v5, v0, :cond_2

    .line 195
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setFamilyName(Ljava/lang/String;)V

    .line 197
    :cond_2
    const-string v4, "data4"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 199
    if-eq v5, v0, :cond_3

    .line 200
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setPrefix(Ljava/lang/String;)V

    .line 202
    :cond_3
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 204
    if-eq v5, v0, :cond_4

    .line 205
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setMiddleName(Ljava/lang/String;)V

    .line 207
    :cond_4
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 209
    if-eq v5, v0, :cond_5

    .line 210
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setSuffix(Ljava/lang/String;)V

    .line 212
    :cond_5
    const-string v4, "data7"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 214
    if-eq v5, v0, :cond_6

    .line 215
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setPhoneticGivenName(Ljava/lang/String;)V

    .line 217
    :cond_6
    const-string v4, "data8"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 219
    if-eq v5, v0, :cond_7

    .line 220
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setPhoneticMiddleName(Ljava/lang/String;)V

    .line 222
    :cond_7
    const-string v4, "data9"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 224
    if-eq v5, v0, :cond_8

    .line 225
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->setPhoneticFamilyName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_8
    :goto_0
    return-object v1

    .line 227
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :catch_0
    move-exception v2

    .line 228
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 229
    goto :goto_0
.end method

.method private static cursorToStructuredPostal(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 363
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;-><init>()V

    .line 367
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 369
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 370
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setFormattedAddress(Ljava/lang/String;)V

    .line 372
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 374
    if-eq v5, v0, :cond_1

    .line 375
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setType(I)V

    .line 377
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 379
    if-eq v5, v0, :cond_2

    .line 380
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setLabel(Ljava/lang/String;)V

    .line 382
    :cond_2
    const-string v4, "data4"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 384
    if-eq v5, v0, :cond_3

    .line 385
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setStreet(Ljava/lang/String;)V

    .line 387
    :cond_3
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 389
    if-eq v5, v0, :cond_4

    .line 390
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setPobox(Ljava/lang/String;)V

    .line 392
    :cond_4
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 394
    if-eq v5, v0, :cond_5

    .line 395
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setNeighborhood(Ljava/lang/String;)V

    .line 397
    :cond_5
    const-string v4, "data7"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 399
    if-eq v5, v0, :cond_6

    .line 400
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setCity(Ljava/lang/String;)V

    .line 402
    :cond_6
    const-string v4, "data8"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 404
    if-eq v5, v0, :cond_7

    .line 405
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setRegion(Ljava/lang/String;)V

    .line 407
    :cond_7
    const-string v4, "data9"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 409
    if-eq v5, v0, :cond_8

    .line 410
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setPostcode(Ljava/lang/String;)V

    .line 412
    :cond_8
    const-string v4, "data10"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 414
    if-eq v5, v0, :cond_9

    .line 415
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->setCountry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_9
    :goto_0
    return-object v1

    .line 417
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :catch_0
    move-exception v2

    .line 418
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 419
    goto :goto_0
.end method

.method private static cursorToWebsite(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/Website;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 516
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/Website;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/Website;-><init>()V

    .line 520
    .local v1, data:Lcom/mediatek/apst/util/entity/contacts/Website;
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 522
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Website;->setUrl(Ljava/lang/String;)V

    .line 524
    :cond_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 525
    if-eq v5, v0, :cond_1

    .line 526
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Website;->setType(I)V

    .line 528
    :cond_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 529
    if-eq v5, v0, :cond_2

    .line 530
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/apst/util/entity/contacts/Website;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0           #colId:I
    .end local v1           #data:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_2
    :goto_0
    return-object v1

    .line 532
    .restart local v1       #data:Lcom/mediatek/apst/util/entity/contacts/Website;
    :catch_0
    move-exception v2

    .line 533
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 534
    goto :goto_0
.end method
