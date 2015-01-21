.class public Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;
.super Lcom/mediatek/android/content/ContentProviderOperationBatch;
.source "ContactsOperationBatch.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;)V
    .locals 0
    .parameter "ocr"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;-><init>(Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;)V

    .line 92
    return-void
.end method


# virtual methods
.method public appendContactDataDelete(JZ)Z
    .locals 7
    .parameter "id"
    .parameter "permanently"

    .prologue
    .line 728
    if-eqz p3, :cond_0

    .line 729
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 737
    .local v1, deleteUri:Landroid/net/Uri;
    :goto_0
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 741
    .local v0, b:Z
    return v0

    .line 735
    .end local v0           #b:Z
    .end local v1           #deleteUri:Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #deleteUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public appendContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z
    .locals 21
    .parameter "data"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v2, 0x0

    .line 300
    :goto_0
    return v2

    .line 119
    :cond_0
    const/4 v2, 0x0

    .line 120
    .local v2, b:Z
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getRawContactId()J

    move-result-wide v3

    .line 121
    .local v3, cId:J
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getMimeType()I

    move-result v8

    .line 122
    .local v8, mimeType:I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v9, p1

    .line 124
    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 125
    .local v9, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/name"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getMiddleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPrefix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getSuffix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 154
    goto/16 :goto_0

    .end local v9           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Phone;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v13, p1

    .line 156
    check-cast v13, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 157
    .local v13, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "sim_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getBindingSimId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 167
    goto/16 :goto_0

    .end local v13           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Photo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v14, p1

    .line 169
    check-cast v14, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 170
    .local v14, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/photo"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data15"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Photo;->getPhotoBytes()[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 176
    goto/16 :goto_0

    .end local v14           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Im;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v7, p1

    .line 178
    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 179
    .local v7, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/im"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getData()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getProtocol()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 189
    goto/16 :goto_0

    .end local v7           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v5, p1

    .line 191
    check-cast v5, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 192
    .local v5, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 200
    goto/16 :goto_0

    .end local v5           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v15, p1

    .line 202
    check-cast v15, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 203
    .local v15, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getStreet()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPobox()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getNeighborhood()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCity()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getRegion()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPostcode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data10"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 229
    goto/16 :goto_0

    .end local v15           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Organization;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v12, p1

    .line 231
    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 232
    .local v12, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/organization"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getCompany()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getDepartment()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getSymbol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getPhoneticName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 254
    goto/16 :goto_0

    .end local v12           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v10, p1

    .line 256
    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 257
    .local v10, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/nickname"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 266
    goto/16 :goto_0

    .end local v10           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Website;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v16, p1

    .line 268
    check-cast v16, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 269
    .local v16, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/website"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 277
    goto/16 :goto_0

    .end local v16           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Note;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v11, p1

    .line 279
    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 280
    .local v11, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/note"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Note;->getNote()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 285
    goto/16 :goto_0

    .end local v11           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v6, p1

    .line 287
    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 288
    .local v6, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->getGroupId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 294
    goto/16 :goto_0

    .line 295
    .end local v6           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Illegal mime type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public appendContactDataUpdate(JLcom/mediatek/apst/util/entity/contacts/ContactData;)Z
    .locals 22
    .parameter "id"
    .parameter "newData"

    .prologue
    .line 520
    if-nez p3, :cond_0

    .line 521
    const/4 v2, 0x0

    .line 716
    :goto_0
    return v2

    .line 524
    :cond_0
    const/4 v2, 0x0

    .line 525
    .local v2, b:Z
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getRawContactId()J

    move-result-wide v3

    .line 526
    .local v3, cId:J
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getMimeType()I

    move-result v8

    .line 527
    .local v8, mimeType:I
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v9, p3

    .line 529
    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 530
    .local v9, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/name"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getMiddleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPrefix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getSuffix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 560
    goto/16 :goto_0

    .end local v9           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_1
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Phone;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v13, p3

    .line 562
    check-cast v13, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 563
    .local v13, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "sim_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getBindingSimId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 574
    goto/16 :goto_0

    .end local v13           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_2
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Photo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v14, p3

    .line 576
    check-cast v14, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 577
    .local v14, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/photo"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data15"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Photo;->getPhotoBytes()[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 584
    goto/16 :goto_0

    .end local v14           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_3
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Im;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v7, p3

    .line 586
    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 587
    .local v7, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/im"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getData()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getProtocol()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 598
    goto/16 :goto_0

    .end local v7           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_4
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v5, p3

    .line 600
    check-cast v5, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 601
    .local v5, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 610
    goto/16 :goto_0

    .end local v5           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_5
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v15, p3

    .line 612
    check-cast v15, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 613
    .local v15, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getStreet()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPobox()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getNeighborhood()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCity()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getRegion()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPostcode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data10"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 640
    goto/16 :goto_0

    .end local v15           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_6
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Organization;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v12, p3

    .line 642
    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 643
    .local v12, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/organization"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getCompany()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getDepartment()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getSymbol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getPhoneticName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 666
    goto/16 :goto_0

    .end local v12           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_7
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v10, p3

    .line 668
    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 669
    .local v10, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/nickname"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 679
    goto/16 :goto_0

    .end local v10           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_8
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Website;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v16, p3

    .line 681
    check-cast v16, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 682
    .local v16, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/website"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 691
    goto/16 :goto_0

    .end local v16           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_9
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Note;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v11, p3

    .line 693
    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 694
    .local v11, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/note"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Note;->getNote()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 700
    goto/16 :goto_0

    .end local v11           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_a
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v6, p3

    .line 702
    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 703
    .local v6, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->getGroupId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 710
    goto/16 :goto_0

    .line 711
    .end local v6           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    :cond_b
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p3, v17, v18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Illegal mime type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public appendGroupDelete(JZ)Z
    .locals 7
    .parameter "id"
    .parameter "permanently"

    .prologue
    .line 864
    if-eqz p3, :cond_0

    .line 865
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 873
    .local v1, deleteUri:Landroid/net/Uri;
    :goto_0
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 877
    .local v0, b:Z
    return v0

    .line 871
    .end local v0           #b:Z
    .end local v1           #deleteUri:Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #deleteUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public appendGroupInsert(Lcom/mediatek/apst/util/entity/contacts/Group;)Z
    .locals 4
    .parameter "group"

    .prologue
    .line 831
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "notes"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 835
    .local v0, b:Z
    return v0
.end method

.method public appendGroupMembershipInsert(JJ)Z
    .locals 4
    .parameter "contactId"
    .parameter "groupId"

    .prologue
    .line 503
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 509
    .local v0, b:Z
    return v0
.end method

.method public appendGroupUpdate(JLcom/mediatek/apst/util/entity/contacts/Group;)Z
    .locals 6
    .parameter "id"
    .parameter "group"

    .prologue
    .line 846
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "notes"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 852
    .local v0, b:Z
    return v0
.end method

.method public appendRawContactDelete(JZ)Z
    .locals 7
    .parameter "id"
    .parameter "permanently"

    .prologue
    .line 799
    if-eqz p3, :cond_0

    .line 800
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 808
    .local v1, deleteUri:Landroid/net/Uri;
    :goto_0
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 812
    .local v0, b:Z
    return v0

    .line 806
    .end local v0           #b:Z
    .end local v1           #deleteUri:Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #deleteUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public appendRawContactInsert(Lcom/mediatek/apst/util/entity/contacts/RawContact;)Z
    .locals 4
    .parameter "rawContact"

    .prologue
    .line 750
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "aggregation_mode"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "starred"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isStarred()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "send_to_voicemail"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isSendToVoicemail()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 764
    .local v0, b:Z
    return v0
.end method

.method public appendRawContactUpdate(JLcom/mediatek/apst/util/entity/contacts/RawContact;)Z
    .locals 6
    .parameter "id"
    .parameter "rawContact"

    .prologue
    .line 775
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "starred"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isStarred()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "send_to_voicemail"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isSendToVoicemail()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    .line 787
    .local v0, b:Z
    return v0
.end method

.method public appendSimContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z
    .locals 21
    .parameter "data"

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v2, 0x0

    .line 492
    :goto_0
    return v2

    .line 313
    :cond_0
    const/4 v2, 0x0

    .line 314
    .local v2, b:Z
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getRawContactId()J

    move-result-wide v3

    .line 315
    .local v3, cId:J
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getMimeType()I

    move-result v8

    .line 316
    .local v8, mimeType:I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v9, p1

    .line 318
    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 319
    .local v9, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/name"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 346
    goto/16 :goto_0

    .end local v9           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Phone;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v13, p1

    .line 348
    check-cast v13, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 349
    .local v13, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "sim_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getBindingSimId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 359
    goto/16 :goto_0

    .end local v13           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Photo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v14, p1

    .line 361
    check-cast v14, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 362
    .local v14, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/photo"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data15"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Photo;->getPhotoBytes()[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 368
    goto/16 :goto_0

    .end local v14           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Im;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v7, p1

    .line 370
    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 371
    .local v7, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/im"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getData()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getProtocol()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 381
    goto/16 :goto_0

    .end local v7           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v5, p1

    .line 383
    check-cast v5, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 384
    .local v5, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Email;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 392
    goto/16 :goto_0

    .end local v5           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v15, p1

    .line 394
    check-cast v15, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 395
    .local v15, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getStreet()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPobox()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getNeighborhood()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCity()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getRegion()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPostcode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data10"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 421
    goto/16 :goto_0

    .end local v15           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Organization;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v12, p1

    .line 423
    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 424
    .local v12, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/organization"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getCompany()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data4"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data5"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getDepartment()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data6"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data7"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getSymbol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data8"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getPhoneticName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data9"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 446
    goto/16 :goto_0

    .end local v12           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v10, p1

    .line 448
    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 449
    .local v10, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/nickname"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 458
    goto/16 :goto_0

    .end local v10           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Website;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v16, p1

    .line 460
    check-cast v16, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 461
    .local v16, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/website"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data2"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data3"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/Website;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 469
    goto/16 :goto_0

    .end local v16           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/Note;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v11, p1

    .line 471
    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 472
    .local v11, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/note"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Note;->getNote()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 477
    goto/16 :goto_0

    .end local v11           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v6, p1

    .line 479
    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 480
    .local v6, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "data1"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->getGroupId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->append(Landroid/content/ContentProviderOperation;)Z

    move-result v2

    .line 486
    goto/16 :goto_0

    .line 487
    .end local v6           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Illegal mime type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public apply()[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "com.android.contacts"

    invoke-super {p0, v0}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->apply(Ljava/lang/String;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method
