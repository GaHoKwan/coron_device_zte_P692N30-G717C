.class public Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;
.super Ljava/lang/Object;
.source "ContactDataContent.java"


# static fields
.field public static final COLUMN_BINDING_SIM_ID:Ljava/lang/String; = "sim_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContentValues(Lcom/mediatek/apst/util/entity/contacts/ContactData;Z)Landroid/content/ContentValues;
    .locals 18
    .parameter "data"
    .parameter "setId"

    .prologue
    .line 1228
    if-nez p0, :cond_0

    .line 1229
    const/4 v13, 0x0

    .line 1356
    :goto_0
    return-object v13

    .line 1234
    :cond_0
    if-eqz p1, :cond_2

    .line 1235
    const/4 v1, 0x2

    .line 1239
    .local v1, commonFieldsCount:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getMimeType()I

    move-result v5

    .line 1240
    .local v5, mimeType:I
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    if-eqz v15, :cond_3

    move-object/from16 v6, p0

    .line 1242
    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 1243
    .local v6, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x9

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1244
    .local v13, values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v15, "data2"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v15, "data3"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v15, "data5"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getMiddleName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v15, "data4"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPrefix()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v15, "data6"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getSuffix()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v15, "data9"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v15, "data7"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v15, "data8"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    .end local v6           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :goto_2
    if-eqz p1, :cond_1

    .line 1352
    const-string v15, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1354
    :cond_1
    const-string v15, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getRawContactId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1237
    .end local v1           #commonFieldsCount:I
    .end local v5           #mimeType:I
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_2
    const/4 v1, 0x1

    .restart local v1       #commonFieldsCount:I
    goto/16 :goto_1

    .line 1256
    .restart local v5       #mimeType:I
    :cond_3
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Phone;

    if-eqz v15, :cond_4

    move-object/from16 v10, p0

    .line 1258
    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 1259
    .local v10, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1260
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v15, "data1"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v15, "data2"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1263
    const-string v15, "data3"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-string v15, "sim_id"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getBindingSimId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1266
    .end local v10           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Photo;

    if-eqz v15, :cond_5

    move-object/from16 v11, p0

    .line 1268
    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 1269
    .local v11, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x2

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1270
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-string v15, "data15"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Photo;->getPhotoBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_2

    .line 1272
    .end local v11           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Im;

    if-eqz v15, :cond_6

    move-object/from16 v4, p0

    .line 1274
    check-cast v4, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 1275
    .local v4, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x6

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1276
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/im"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-string v15, "data1"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getData()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v15, "data2"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    const-string v15, "data3"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v15, "data5"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getProtocol()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v15, "data6"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1282
    .end local v4           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    if-eqz v15, :cond_7

    move-object/from16 v2, p0

    .line 1284
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 1285
    .local v2, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1286
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v15, "data1"

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v15, "data2"

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Email;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    const-string v15, "data3"

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Email;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1290
    .end local v2           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    if-eqz v15, :cond_8

    move-object/from16 v12, p0

    .line 1292
    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 1293
    .local v12, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0xb

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1294
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v15, "data1"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getFormattedAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v15, "data2"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    const-string v15, "data3"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v15, "data4"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getStreet()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v15, "data5"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPobox()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v15, "data6"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getNeighborhood()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v15, "data7"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCity()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v15, "data8"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getRegion()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v15, "data9"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPostcode()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v15, "data10"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCountry()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1305
    .end local v12           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Organization;

    if-eqz v15, :cond_9

    move-object/from16 v9, p0

    .line 1307
    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 1308
    .local v9, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0xa

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1309
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v15, "data1"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getCompany()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v15, "data2"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    const-string v15, "data3"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v15, "data4"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v15, "data5"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v15, "data6"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v15, "data7"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getSymbol()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v15, "data8"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getPhoneticName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v15, "data9"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1319
    .end local v9           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    if-eqz v15, :cond_a

    move-object/from16 v7, p0

    .line 1321
    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 1322
    .local v7, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1323
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v15, "data1"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v15, "data2"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1326
    const-string v15, "data3"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1327
    .end local v7           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Website;

    if-eqz v15, :cond_b

    move-object/from16 v14, p0

    .line 1329
    check-cast v14, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 1330
    .local v14, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1331
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v15, "data1"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Website;->getUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v15, "data2"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Website;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1334
    const-string v15, "data3"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Website;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1335
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v14           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_b
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Note;

    if-eqz v15, :cond_c

    move-object/from16 v8, p0

    .line 1337
    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 1338
    .local v8, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x2

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1339
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/note"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v15, "data1"

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/contacts/Note;->getNote()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1341
    .end local v8           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    if-eqz v15, :cond_d

    move-object/from16 v3, p0

    .line 1343
    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 1344
    .local v3, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    new-instance v13, Landroid/content/ContentValues;

    add-int/lit8 v15, v1, 0x2

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1345
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v15, "data1"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->getGroupId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1348
    .end local v3           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_d
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Illegal mime type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public static createContentValuesArray(Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)[Landroid/content/ContentValues;
    .locals 21
    .parameter "contact"
    .parameter "setId"

    .prologue
    .line 1367
    if-nez p0, :cond_0

    .line 1368
    const/4 v15, 0x0

    .line 1557
    :goto_0
    return-object v15

    .line 1372
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    .local v16, valuesBuffer:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1376
    const/4 v2, 0x2

    .line 1381
    .local v2, commonFieldsCount:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 1382
    .local v7, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x9

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1383
    .local v14, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 1384
    const-string v18, "_id"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1386
    :cond_1
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1388
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v18, "data2"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v18, "data3"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v18, "data5"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getMiddleName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v18, "data4"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPrefix()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const-string v18, "data6"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getSuffix()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v18, "data9"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v18, "data7"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v18, "data8"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1378
    .end local v2           #commonFieldsCount:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_2
    const/4 v2, 0x1

    .restart local v2       #commonFieldsCount:I
    goto/16 :goto_1

    .line 1403
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 1404
    .local v11, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1405
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_4

    .line 1406
    const-string v18, "_id"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1408
    :cond_4
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1410
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v18, "data1"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v18, "data2"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    const-string v18, "data3"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v18, "sim_id"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getBindingSimId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1419
    .end local v11           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhotos()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 1420
    .local v12, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x2

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1421
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_6

    .line 1422
    const-string v18, "_id"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1424
    :cond_6
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1426
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v18, "data15"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Photo;->getPhotoBytes()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1428
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1431
    .end local v12           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getIms()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 1432
    .local v6, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x6

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1433
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_8

    .line 1434
    const-string v18, "_id"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1436
    :cond_8
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1438
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/im"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v18, "data1"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/Im;->getData()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const-string v18, "data2"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/Im;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    const-string v18, "data3"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/Im;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v18, "data5"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/Im;->getProtocol()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1443
    const-string v18, "data6"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1447
    .end local v6           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 1448
    .local v3, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1449
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_a

    .line 1450
    const-string v18, "_id"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1452
    :cond_a
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1454
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v18, "data1"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v18, "data2"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/Email;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1457
    const-string v18, "data3"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/Email;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1461
    .end local v3           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPostals()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 1462
    .local v13, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0xb

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1463
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_c

    .line 1464
    const-string v18, "_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1466
    :cond_c
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1468
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v18, "data1"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getFormattedAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v18, "data2"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1471
    const-string v18, "data3"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string v18, "data4"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getStreet()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v18, "data5"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPobox()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v18, "data6"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getNeighborhood()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v18, "data7"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCity()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v18, "data8"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getRegion()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v18, "data9"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPostcode()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const-string v18, "data10"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCountry()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1482
    .end local v13           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getOrganizations()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 1483
    .local v10, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0xa

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1484
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_e

    .line 1485
    const-string v18, "_id"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1487
    :cond_e
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1489
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const-string v18, "data1"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getCompany()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string v18, "data2"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1492
    const-string v18, "data3"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const-string v18, "data4"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const-string v18, "data5"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v18, "data6"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v18, "data7"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getSymbol()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v18, "data8"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getPhoneticName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string v18, "data9"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1502
    .end local v10           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNicknames()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 1503
    .local v8, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1504
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_10

    .line 1505
    const-string v18, "_id"

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1507
    :cond_10
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1509
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string v18, "data1"

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const-string v18, "data2"

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1512
    const-string v18, "data3"

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1516
    .end local v8           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getWebsites()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 1517
    .local v17, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1518
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_12

    .line 1519
    const-string v18, "_id"

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1521
    :cond_12
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1523
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/website"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v18, "data1"

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/apst/util/entity/contacts/Website;->getUrl()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v18, "data2"

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/apst/util/entity/contacts/Website;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    const-string v18, "data3"

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/apst/util/entity/contacts/Website;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1530
    .end local v14           #values:Landroid/content/ContentValues;
    .end local v17           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNotes()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 1531
    .local v9, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x2

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1532
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_14

    .line 1533
    const-string v18, "_id"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1535
    :cond_14
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1537
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/note"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v18, "data1"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Note;->getNote()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1542
    .end local v9           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getGroupMemberships()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 1543
    .local v4, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    new-instance v14, Landroid/content/ContentValues;

    add-int/lit8 v18, v2, 0x2

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1544
    .restart local v14       #values:Landroid/content/ContentValues;
    if-eqz p1, :cond_16

    .line 1545
    const-string v18, "_id"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1547
    :cond_16
    const-string v18, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1549
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const-string v18, "data1"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->getGroupId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1554
    .end local v4           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_17
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [Landroid/content/ContentValues;

    .line 1555
    .local v15, valuesArray:[Landroid/content/ContentValues;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static createMeasuredContentValues(Lcom/mediatek/apst/util/entity/contacts/ContactData;Z)Lcom/mediatek/android/content/MeasuredContentValues;
    .locals 18
    .parameter "data"
    .parameter "setId"

    .prologue
    .line 1568
    if-nez p0, :cond_0

    .line 1569
    const/4 v13, 0x0

    .line 1696
    :goto_0
    return-object v13

    .line 1574
    :cond_0
    if-eqz p1, :cond_2

    .line 1575
    const/4 v1, 0x2

    .line 1579
    .local v1, commonFieldsCount:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getMimeType()I

    move-result v5

    .line 1580
    .local v5, mimeType:I
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    if-eqz v15, :cond_3

    move-object/from16 v6, p0

    .line 1582
    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 1583
    .local v6, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x9

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1584
    .local v13, values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v15, "data2"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v15, "data3"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v15, "data5"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getMiddleName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v15, "data4"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPrefix()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const-string v15, "data6"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getSuffix()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v15, "data9"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v15, "data7"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v15, "data8"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    .end local v6           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :goto_2
    if-eqz p1, :cond_1

    .line 1692
    const-string v15, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1694
    :cond_1
    const-string v15, "raw_contact_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getRawContactId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1577
    .end local v1           #commonFieldsCount:I
    .end local v5           #mimeType:I
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_2
    const/4 v1, 0x1

    .restart local v1       #commonFieldsCount:I
    goto/16 :goto_1

    .line 1596
    .restart local v5       #mimeType:I
    :cond_3
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Phone;

    if-eqz v15, :cond_4

    move-object/from16 v10, p0

    .line 1598
    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 1599
    .local v10, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1600
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v15, "data1"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    const-string v15, "data2"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1603
    const-string v15, "data3"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string v15, "sim_id"

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getBindingSimId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1606
    .end local v10           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_4
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Photo;

    if-eqz v15, :cond_5

    move-object/from16 v11, p0

    .line 1608
    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 1609
    .local v11, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x2

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1610
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v15, "data15"

    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/contacts/Photo;->getPhotoBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_2

    .line 1612
    .end local v11           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_5
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Im;

    if-eqz v15, :cond_6

    move-object/from16 v4, p0

    .line 1614
    check-cast v4, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 1615
    .local v4, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x6

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1616
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/im"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string v15, "data1"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getData()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string v15, "data2"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1619
    const-string v15, "data3"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const-string v15, "data5"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getProtocol()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    const-string v15, "data6"

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1622
    .end local v4           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_6
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    if-eqz v15, :cond_7

    move-object/from16 v2, p0

    .line 1624
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 1625
    .local v2, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1626
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v15, "data1"

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v15, "data2"

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Email;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    const-string v15, "data3"

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Email;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1630
    .end local v2           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_7
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    if-eqz v15, :cond_8

    move-object/from16 v12, p0

    .line 1632
    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 1633
    .local v12, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0xb

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1634
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v15, "data1"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getFormattedAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    const-string v15, "data2"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1637
    const-string v15, "data3"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v15, "data4"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getStreet()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v15, "data5"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPobox()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const-string v15, "data6"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getNeighborhood()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v15, "data7"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCity()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string v15, "data8"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getRegion()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v15, "data9"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getPostcode()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const-string v15, "data10"

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->getCountry()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1645
    .end local v12           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_8
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Organization;

    if-eqz v15, :cond_9

    move-object/from16 v9, p0

    .line 1647
    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 1648
    .local v9, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0xa

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1649
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string v15, "data1"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getCompany()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v15, "data2"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1652
    const-string v15, "data3"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string v15, "data4"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    const-string v15, "data5"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    const-string v15, "data6"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v15, "data7"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getSymbol()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v15, "data8"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getPhoneticName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const-string v15, "data9"

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1659
    .end local v9           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_9
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    if-eqz v15, :cond_a

    move-object/from16 v7, p0

    .line 1661
    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 1662
    .local v7, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1663
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const-string v15, "data1"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v15, "data2"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1666
    const-string v15, "data3"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1667
    .end local v7           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_a
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Website;

    if-eqz v15, :cond_b

    move-object/from16 v14, p0

    .line 1669
    check-cast v14, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 1670
    .local v14, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x4

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1671
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string v15, "data1"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Website;->getUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v15, "data2"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Website;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1674
    const-string v15, "data3"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/contacts/Website;->getLabel()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1675
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    .end local v14           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_b
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/Note;

    if-eqz v15, :cond_c

    move-object/from16 v8, p0

    .line 1677
    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 1678
    .local v8, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x2

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1679
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/note"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v15, "data1"

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/contacts/Note;->getNote()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1681
    .end local v8           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_c
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    if-eqz v15, :cond_d

    move-object/from16 v3, p0

    .line 1683
    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 1684
    .local v3, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    new-instance v13, Lcom/mediatek/android/content/MeasuredContentValues;

    add-int/lit8 v15, v1, 0x2

    invoke-direct {v13, v15}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1685
    .restart local v13       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v15, "data1"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->getGroupId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1688
    .end local v3           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    .end local v13           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_d
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Illegal mime type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1689
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private static cursorToEmailRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 917
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 918
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 919
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 923
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 924
    if-eq v5, v0, :cond_1

    .line 925
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 929
    :goto_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 930
    if-eq v5, v0, :cond_2

    .line 931
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 939
    .end local v0           #colId:I
    :goto_2
    return v2

    .line 921
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 936
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 937
    goto :goto_2

    .line 927
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 933
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static cursorToGroupMembershipRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 6
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1207
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1208
    .local v0, colId:I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 1209
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1217
    .end local v0           #colId:I
    :goto_0
    return v2

    .line 1211
    .restart local v0       #colId:I
    :cond_0
    const-wide/16 v4, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1213
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 1214
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    const/4 v2, 0x0

    invoke-static {v4, v2, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1215
    goto :goto_0
.end method

.method private static cursorToImRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 867
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 868
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 869
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 873
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 874
    if-eq v5, v0, :cond_1

    .line 875
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 879
    :goto_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 880
    if-eq v5, v0, :cond_2

    .line 881
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 886
    :goto_2
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 887
    if-eq v5, v0, :cond_3

    .line 888
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 892
    :goto_3
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 893
    if-eq v5, v0, :cond_4

    .line 894
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 902
    .end local v0           #colId:I
    :goto_4
    return v2

    .line 871
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 899
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 900
    goto :goto_4

    .line 877
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 883
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_2

    .line 890
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 896
    :cond_4
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private static cursorToNicknameRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 1107
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1108
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 1109
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1113
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1114
    if-eq v5, v0, :cond_1

    .line 1115
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1119
    :goto_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1120
    if-eq v5, v0, :cond_2

    .line 1121
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1129
    .end local v0           #colId:I
    :goto_2
    return v2

    .line 1111
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 1126
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1127
    goto :goto_2

    .line 1117
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1123
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static cursorToNoteRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 6
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1181
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1182
    .local v0, colId:I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 1183
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1191
    .end local v0           #colId:I
    :goto_0
    return v2

    .line 1185
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 1188
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v5, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1189
    goto :goto_0
.end method

.method private static cursorToOrganizationRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1034
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1035
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 1036
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1040
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1041
    if-eq v5, v0, :cond_1

    .line 1042
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1046
    :goto_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1047
    if-eq v5, v0, :cond_2

    .line 1048
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1052
    :goto_2
    const-string v4, "data4"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1053
    if-eq v5, v0, :cond_3

    .line 1054
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1058
    :goto_3
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1059
    if-eq v5, v0, :cond_4

    .line 1060
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1064
    :goto_4
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1065
    if-eq v5, v0, :cond_5

    .line 1066
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1070
    :goto_5
    const-string v4, "data7"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1071
    if-eq v5, v0, :cond_6

    .line 1072
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1076
    :goto_6
    const-string v4, "data8"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1077
    if-eq v5, v0, :cond_7

    .line 1078
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1082
    :goto_7
    const-string v4, "data9"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1083
    if-eq v5, v0, :cond_8

    .line 1084
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1092
    .end local v0           #colId:I
    :goto_8
    return v2

    .line 1038
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 1089
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1090
    goto :goto_8

    .line 1044
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1050
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_2

    .line 1056
    :cond_3
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_3

    .line 1062
    :cond_4
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_4

    .line 1068
    :cond_5
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_5

    .line 1074
    :cond_6
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_6

    .line 1080
    :cond_7
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_7

    .line 1086
    :cond_8
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method private static cursorToPhoneRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 798
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 799
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 800
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 804
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 805
    if-eq v5, v0, :cond_1

    .line 806
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 810
    :goto_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 811
    if-eq v5, v0, :cond_2

    .line 812
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 817
    :goto_2
    const-string v4, "sim_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 818
    if-eq v5, v0, :cond_3

    .line 819
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 827
    .end local v0           #colId:I
    :goto_3
    return v2

    .line 802
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 824
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 825
    goto :goto_3

    .line 808
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 814
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_2

    .line 821
    :cond_3
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private static cursorToPhotoRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 6
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 842
    :try_start_0
    const-string v4, "data15"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 843
    .local v0, colId:I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 844
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBytes(Ljava/nio/ByteBuffer;[B)V

    .line 852
    .end local v0           #colId:I
    :goto_0
    return v2

    .line 846
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBytes(Ljava/nio/ByteBuffer;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 849
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v5, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 850
    goto :goto_0
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 10
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 597
    if-nez p0, :cond_1

    .line 598
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v9

    const-string v6, "Cursor is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    .line 709
    :cond_0
    :goto_0
    return v2

    .line 600
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-eq v5, v7, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 601
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v9

    const-string v6, "Cursor has moved to the end."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    .line 602
    goto :goto_0

    .line 603
    :cond_3
    if-nez p1, :cond_4

    .line 604
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v9

    const-string v6, "Buffer is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    .line 605
    goto :goto_0

    .line 609
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 611
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 612
    const/4 v2, 0x0

    .line 616
    .local v2, result:I
    const/4 v3, 0x0

    .line 619
    .local v3, strMimeType:Ljava/lang/String;
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 620
    .local v0, colId:I
    if-eq v7, v0, :cond_6

    .line 621
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 626
    :goto_1
    const-string v5, "raw_contact_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 627
    if-eq v7, v0, :cond_7

    .line 628
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 635
    :goto_2
    const-string v5, "mimetype"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 636
    if-eq v7, v0, :cond_5

    .line 637
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 641
    :cond_5
    if-nez v3, :cond_8

    .line 642
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string v6, "mimeType is absent in cursor."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 643
    const/4 v2, 0x0

    .line 703
    .end local v0           #colId:I
    :goto_3
    if-ne v2, v8, :cond_14

    .line 704
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    .line 623
    .restart local v0       #colId:I
    :cond_6
    const-wide/16 v5, -0x1

    :try_start_1
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 692
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 693
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v9

    const/4 v4, 0x0

    invoke-static {v5, v4, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    const/4 v2, 0x0

    .line 701
    goto :goto_3

    .line 630
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_7
    const-wide/16 v5, -0x1

    :try_start_2
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 695
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 700
    .local v1, e:Ljava/nio/BufferOverflowException;
    const/4 v2, 0x2

    goto :goto_3

    .line 644
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_8
    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 646
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 647
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToStructuredNameRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_3

    .line 648
    :cond_9
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 650
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 651
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToPhoneRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_3

    .line 652
    :cond_a
    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 654
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 655
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToPhotoRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_3

    .line 656
    :cond_b
    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 658
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 659
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToImRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_3

    .line 660
    :cond_c
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 662
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 663
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToEmailRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_3

    .line 664
    :cond_d
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 666
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 667
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToStructuredPostalRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto/16 :goto_3

    .line 668
    :cond_e
    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 670
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 671
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToOrganizationRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto/16 :goto_3

    .line 672
    :cond_f
    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 674
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 675
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToNicknameRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto/16 :goto_3

    .line 676
    :cond_10
    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 678
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 679
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToWebsiteRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto/16 :goto_3

    .line 680
    :cond_11
    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 682
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 683
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToNoteRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto/16 :goto_3

    .line 684
    :cond_12
    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 686
    const/16 v5, 0xb

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 687
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->cursorToGroupMembershipRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto/16 :goto_3

    .line 689
    :cond_13
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignored unknown mimeType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    .line 690
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 705
    .end local v0           #colId:I
    :cond_14
    if-nez v2, :cond_0

    .line 706
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method private static cursorToStructuredNameRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 725
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 726
    .local v0, colId:I
    if-eq v6, v0, :cond_0

    .line 727
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 731
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 732
    if-eq v6, v0, :cond_1

    .line 733
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 737
    :goto_1
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 738
    if-eq v6, v0, :cond_2

    .line 739
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 743
    :goto_2
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 744
    if-eq v6, v0, :cond_3

    .line 745
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 749
    :goto_3
    const-string v4, "data4"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 750
    if-eq v6, v0, :cond_4

    .line 751
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 755
    :goto_4
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 756
    if-eq v6, v0, :cond_5

    .line 757
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 761
    :goto_5
    const-string v4, "data7"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 762
    if-eq v6, v0, :cond_6

    .line 763
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 767
    :goto_6
    const-string v4, "data8"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 768
    if-eq v6, v0, :cond_7

    .line 769
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 773
    :goto_7
    const-string v4, "data9"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 774
    if-eq v6, v0, :cond_8

    .line 775
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 783
    .end local v0           #colId:I
    :goto_8
    return v2

    .line 729
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 780
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v5, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 781
    goto :goto_8

    .line 735
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 741
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_2

    .line 747
    :cond_3
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_3

    .line 753
    :cond_4
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_4

    .line 759
    :cond_5
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_5

    .line 765
    :cond_6
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_6

    .line 771
    :cond_7
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_7

    .line 777
    :cond_8
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method private static cursorToStructuredPostalRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 955
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 956
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 957
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 961
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 962
    if-eq v5, v0, :cond_1

    .line 963
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 967
    :goto_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 968
    if-eq v5, v0, :cond_2

    .line 969
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 973
    :goto_2
    const-string v4, "data4"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 974
    if-eq v5, v0, :cond_3

    .line 975
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 979
    :goto_3
    const-string v4, "data5"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 980
    if-eq v5, v0, :cond_4

    .line 981
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 985
    :goto_4
    const-string v4, "data6"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 986
    if-eq v5, v0, :cond_5

    .line 987
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 991
    :goto_5
    const-string v4, "data7"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 992
    if-eq v5, v0, :cond_6

    .line 993
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 997
    :goto_6
    const-string v4, "data8"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 998
    if-eq v5, v0, :cond_7

    .line 999
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1003
    :goto_7
    const-string v4, "data9"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1004
    if-eq v5, v0, :cond_8

    .line 1005
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1009
    :goto_8
    const-string v4, "data10"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1010
    if-eq v5, v0, :cond_9

    .line 1011
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1019
    .end local v0           #colId:I
    :goto_9
    return v2

    .line 959
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1015
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 1016
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1017
    goto :goto_9

    .line 965
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 971
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 977
    :cond_3
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_3

    .line 983
    :cond_4
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_4

    .line 989
    :cond_5
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_5

    .line 995
    :cond_6
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_6

    .line 1001
    :cond_7
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_7

    .line 1007
    :cond_8
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_8

    .line 1013
    :cond_9
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9
.end method

.method private static cursorToWebsiteRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 7
    .parameter "cursor"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 1144
    :try_start_0
    const-string v4, "data1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1145
    .local v0, colId:I
    if-eq v5, v0, :cond_0

    .line 1146
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1150
    :goto_0
    const-string v4, "data2"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1151
    if-eq v5, v0, :cond_1

    .line 1152
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1156
    :goto_1
    const-string v4, "data3"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1157
    if-eq v5, v0, :cond_2

    .line 1158
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1166
    .end local v0           #colId:I
    :goto_2
    return v2

    .line 1148
    .restart local v0       #colId:I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1162
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 1163
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {v4, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1164
    goto :goto_2

    .line 1154
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1160
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
