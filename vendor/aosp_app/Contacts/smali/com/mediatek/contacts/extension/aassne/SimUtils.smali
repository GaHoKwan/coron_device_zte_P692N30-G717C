.class public Lcom/mediatek/contacts/extension/aassne/SimUtils;
.super Ljava/lang/Object;
.source "SimUtils.java"


# static fields
.field public static final IS_ADDITIONAL_NUMBER:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "AasExt"

.field private static sAasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/telephony/AlphaTag;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/contacts/extension/aassne/SimUtils;->sAasMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildInsertOperation(Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 18
    .parameter
    .parameter "account"
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "additionalNumber"
    .parameter "resolver"
    .parameter "indicate"
    .parameter "simType"
    .parameter "indexInSim"
    .parameter
    .parameter
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ext/Anr;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p12, grpAddIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p13, anrsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ext/Anr;>;"
    if-nez p0, :cond_0

    .line 392
    const/4 v2, 0x0

    .line 459
    :goto_0
    return v2

    .line 394
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v14

    .line 395
    .local v14, cae:Lcom/android/contacts/ext/ContactAccountExtension;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "ExtensionForAAS"

    invoke-virtual {v14, v2, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "ExtensionForSNE"

    invoke-virtual {v14, v2, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    const/4 v2, 0x0

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 400
    .local v10, backRef:I
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .local v13, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p7

    move-wide/from16 v6, p10

    .line 403
    invoke-static/range {v2 .. v7}, Lcom/mediatek/contacts/SubContactsUtils;->insertRawContacts(Ljava/util/ArrayList;Landroid/accounts/Account;JJ)V

    .line 405
    const/16 v16, 0x7

    .line 406
    .local v16, phoneType:I
    const-string v17, ""

    .line 408
    .local v17, phoneTypeSuffix:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    new-instance v15, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 410
    .local v15, namePhoneTypePair:Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;
    iget-object v0, v15, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 411
    iget v0, v15, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneType:I

    move/from16 v16, v0

    .line 412
    iget-object v0, v15, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneTypeSuffix:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 416
    .end local v15           #namePhoneTypePair:Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 417
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 418
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 419
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 420
    const-string v2, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 423
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z

    .line 427
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 428
    const-string v2, "data15"

    move-object/from16 v0, v17

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 430
    :cond_3
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10}, Lcom/mediatek/contacts/SubContactsUtils;->insertName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 437
    const-string v2, "USIM"

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v10}, Lcom/mediatek/contacts/SubContactsUtils;->insertEmail(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 442
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ExtensionForAAS"

    move-object/from16 v7, p0

    move-object/from16 v8, p13

    move-object/from16 v9, p5

    invoke-virtual/range {v5 .. v12}, Lcom/android/contacts/ext/ContactAccountExtension;->buildOperation(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v1, v10}, Lcom/mediatek/contacts/SubContactsUtils;->insertAdditionalNumber(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 450
    :cond_4
    const-string v2, "AasExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildInsertOperation, Nickname is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v11, 0x1

    const-string v12, "ExtensionForSNE"

    move-object/from16 v7, p0

    move-object/from16 v9, p14

    invoke-virtual/range {v5 .. v12}, Lcom/android/contacts/ext/ContactAccountExtension;->buildOperation(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)Z

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-static {v0, v1, v10}, Lcom/mediatek/contacts/SubContactsUtils;->insertGroup(Ljava/util/ArrayList;Ljava/util/Set;I)V

    .line 459
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v13       #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_6
    move-object v4, v13

    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v4       #builder:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_1
.end method

.method public static ensureAASKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 17
    .parameter "state"
    .parameter "accountType"
    .parameter "mimeType"
    .parameter "kind"

    .prologue
    .line 235
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v3

    .line 237
    .local v3, cae:Lcom/android/contacts/ext/ContactAccountExtension;
    if-eqz p3, :cond_8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v15, "ExtensionForAAS"

    invoke-virtual {v3, v14, v15}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "ExtensionForAAS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Lcom/android/contacts/ext/ContactAccountExtension;->isPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 240
    .local v13, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v14

    const-string v15, "ExtensionForAAS"

    invoke-virtual {v14, v15}, Lcom/android/contacts/ext/ContactAccountExtension;->getCurrentSlot(Ljava/lang/String;)I

    move-result v11

    .line 241
    .local v11, slotId:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v14

    const-string v15, "ExtensionForAAS"

    invoke-virtual {v14, v11, v15}, Lcom/android/contacts/ext/ContactDetailExtension;->getAdditionNumberCount(ILjava/lang/String;)I

    move-result v9

    .line 243
    .local v9, slotAnrSize:I
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v15, v9, 0x1

    if-ne v14, v15, :cond_0

    .line 245
    const-string v14, "AasExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ensureAASKindExists() size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " slotAnrSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v14, 0x1

    .line 286
    .end local v9           #slotAnrSize:I
    .end local v11           #slotId:I
    .end local v13           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    :goto_0
    return v14

    .line 248
    .restart local v9       #slotAnrSize:I
    .restart local v11       #slotId:I
    .restart local v13       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    :cond_0
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 249
    :cond_1
    const-string v14, "AasExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ensureAASKindExists() Empty, insert primary:1 and anr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    .line 252
    .local v4, child:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 253
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 256
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v9, :cond_7

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v10

    .line 258
    .local v10, slotChild:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v14, "is_additional_number"

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 261
    .end local v4           #child:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v5           #i:I
    .end local v10           #slotChild:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_3
    const/4 v8, 0x0

    .line 262
    .local v8, pnrSize:I
    const/4 v2, 0x0

    .line 263
    .local v2, anrSize:I
    if-eqz v13, :cond_5

    .line 264
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 265
    .local v12, value:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v14, "is_additional_number"

    invoke-virtual {v12, v14}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 266
    .local v7, isAnr:Ljava/lang/Integer;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 269
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 273
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #isAnr:Ljava/lang/Integer;
    .end local v12           #value:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_5
    const-string v14, "AasExt"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ensureAASKindExists() pnrSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", anrSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v14, 0x1

    if-ge v8, v14, :cond_6

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 278
    :cond_6
    :goto_3
    if-ge v2, v9, :cond_7

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v10

    .line 281
    .restart local v10       #slotChild:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v14, "is_additional_number"

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 284
    .end local v2           #anrSize:I
    .end local v8           #pnrSize:I
    .end local v10           #slotChild:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 286
    .end local v9           #slotAnrSize:I
    .end local v11           #slotId:I
    .end local v13           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static ensurePhoneKindForEditorExt(Lcom/android/contacts/model/account/AccountType;ILcom/android/contacts/model/RawContactDelta;)V
    .locals 4
    .parameter "type"
    .parameter "slotId"
    .parameter "entity"

    .prologue
    .line 513
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v3, "ExtensionForAAS"

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 516
    .local v0, dataKind:Lcom/android/contacts/model/dataitem/DataKind;
    if-eqz v0, :cond_0

    .line 517
    invoke-static {p1, v0}, Lcom/mediatek/contacts/model/UsimAccountType;->updatePhoneType(ILcom/android/contacts/model/dataitem/DataKind;)V

    .line 519
    :cond_0
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-static {p2, p0, v1}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 521
    .end local v0           #dataKind:Lcom/android/contacts/model/dataitem/DataKind;
    :cond_1
    return-void
.end method

.method public static getAAS(I)Ljava/util/List;
    .locals 5
    .parameter "slot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/telephony/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const-string v2, "AasExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAAS() failed, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v0           #atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    :goto_0
    return-object v0

    .line 129
    .restart local v0       #atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->refreshAASList(I)Z

    .line 131
    sget-object v2, Lcom/mediatek/contacts/extension/aassne/SimUtils;->sAasMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 133
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    if-eqz v1, :cond_1

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    :goto_1
    move-object v0, v1

    goto :goto_0

    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method public static getAasEditType(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 8
    .parameter "entry"
    .parameter "kind"
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x65

    .line 290
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v4

    const-string v5, "ExtensionForAAS"

    invoke-virtual {v4, v5}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne p2, v7, :cond_2

    .line 293
    const-string v4, "data3"

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, customColumn:Ljava/lang/String;
    const-string v4, "AasExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAasEditType() customColumn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v0, :cond_1

    .line 296
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 297
    .local v2, type:Lcom/android/contacts/model/account/AccountType$EditType;
    iget v4, v2, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne v4, v7, :cond_0

    iget-object v4, v2, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const-string v3, "AasExt"

    const-string v4, "getAasEditType() type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0           #customColumn:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/contacts/model/account/AccountType$EditType;
    :goto_0
    return-object v2

    .restart local v0       #customColumn:Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 303
    goto :goto_0

    .line 305
    .end local v0           #customColumn:Ljava/lang/String;
    :cond_2
    const-string v4, "AasExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAasEditType() error Not Anr.TYPE_AAS, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 306
    goto :goto_0
.end method

.method public static getAccountTypeBySlot(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/contacts/model/account/AccountType;->getSimAccountType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 137
    const-string v2, "AasExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIIccPhoneBook]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSimPhoneBookServiceNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, serviceName:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 140
    .local v0, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    return-object v0
.end method

.method public static getLabelForBindData(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "res"
    .parameter "type"
    .parameter "customLabel"
    .parameter "mimeType"
    .parameter "cursor"
    .parameter "defaultValue"

    .prologue
    .line 311
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v1, "ExtensionForAAS"

    invoke-virtual {v0, v1}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    move-object v8, p5

    .line 314
    .local v8, label:Ljava/lang/CharSequence;
    const-string v0, "indicate_phone_or_sim_contact"

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 315
    .local v7, indicate:I
    const/4 v9, -0x1

    .line 316
    .local v9, simId:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 317
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 319
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v4

    .line 320
    .local v4, slotId:I
    invoke-static {v4}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, accountType:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v1, "ExtensionForAAS"

    invoke-virtual {v0, v6, v1}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const-string v8, ""

    .line 330
    .end local v4           #slotId:I
    .end local v6           #accountType:Ljava/lang/String;
    .end local v7           #indicate:I
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #simId:I
    :goto_0
    return-object v8

    .line 325
    .restart local v4       #slotId:I
    .restart local v6       #accountType:Ljava/lang/String;
    .restart local v7       #indicate:I
    .restart local v8       #label:Ljava/lang/CharSequence;
    .restart local v9       #simId:I
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v5, "ExtensionForAAS"

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_0

    .end local v4           #slotId:I
    .end local v6           #accountType:Ljava/lang/String;
    .end local v7           #indicate:I
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #simId:I
    :cond_2
    move-object v8, p5

    .line 330
    goto :goto_0
.end method

.method public static insertToDB(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/net/Uri;
    .locals 16
    .parameter "accountType"
    .parameter "mAccount"
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "additionalNumber"
    .parameter "resolver"
    .parameter "indicate"
    .parameter "simType"
    .parameter "indexInSim"
    .parameter
    .parameter
    .parameter "nickname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ext/Anr;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 355
    .local p12, grpAddIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p13, anrsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ext/Anr;>;"
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const-string v3, "ExtensionForAAS"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const-string v3, "ExtensionForSNE"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    const-string v2, "AasExt"

    const-string v3, "insertToDB()-Not AAS or SNE, return null, go default."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v2, 0x0

    .line 368
    :goto_0
    return-object v2

    .line 363
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    .line 365
    invoke-static/range {v1 .. v15}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->buildInsertOperation(Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 368
    move-object/from16 v0, p6

    invoke-static {v0, v1}, Lcom/mediatek/contacts/SubContactsUtils;->insertToDBApplyBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static isAasPhoneType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 213
    const/16 v0, 0x65

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAdditionalNumber(Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "cv"

    .prologue
    const/4 v2, 0x1

    .line 161
    const-string v1, "is_additional_number"

    .line 162
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x0

    .line 163
    .local v0, isAnr:Ljava/lang/Integer;
    if-eqz p0, :cond_0

    const-string v3, "is_additional_number"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const-string v3, "is_additional_number"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 166
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAdditionalNumber(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v2, 0x1

    .line 149
    const-string v1, "is_additional_number"

    .line 150
    .local v1, key:Ljava/lang/String;
    const-string v3, "is_additional_number"

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    .local v0, isAnr:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static rebuildLabelSelection(Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;Lcom/android/contacts/model/account/AccountType$EditType;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 8
    .parameter "label"
    .parameter
    .parameter "item"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            ">;",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    const/4 v4, 0x0

    .line 192
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v4

    .line 195
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    .line 196
    .local v0, cae:Lcom/android/contacts/ext/ContactAccountExtension;
    const-string v5, "ExtensionForAAS"

    invoke-virtual {v0, v5}, Lcom/android/contacts/ext/ContactAccountExtension;->getCurrentSlot(Ljava/lang/String;)I

    move-result v2

    .line 197
    .local v2, slotId:I
    const-string v5, "AasExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuildLabelSelection() slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v2}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExtensionForAAS"

    invoke-virtual {v0, v5, v6}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p3, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "ExtensionForAAS"

    invoke-virtual {v0, v5, v6}, Lcom/android/contacts/ext/ContactAccountExtension;->isPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p2, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v5}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAasPhoneType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 201
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 202
    .local v3, type:Lcom/android/contacts/model/account/AccountType$EditType;
    iget-object v5, v3, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 204
    const-string v4, "AasExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildLabelSelection() position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v4, 0x1

    goto :goto_0

    .line 200
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static refreshAASList(I)Z
    .locals 9
    .parameter "slot"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    const-string v6, "AasExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshAASList() slot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v6, 0x0

    .line 113
    :goto_0
    return v6

    .line 94
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 95
    .local v3, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_2

    .line 96
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimAasList()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/common/telephony/AlphaTag;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/AlphaTag;

    .line 100
    .local v2, entry:Lcom/mediatek/common/telephony/AlphaTag;
    invoke-virtual {v2}, Lcom/mediatek/common/telephony/AlphaTag;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, tag:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 104
    :cond_1
    const-string v6, "AasExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshAASList. tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    .end local v0           #atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    .end local v2           #entry:Lcom/mediatek/common/telephony/AlphaTag;
    .end local v3           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/common/telephony/AlphaTag;>;"
    .end local v5           #tag:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AasExt"

    const-string v7, "catched exception."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v6, Lcom/mediatek/contacts/extension/aassne/SimUtils;->sAasMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 106
    .restart local v0       #atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    .restart local v3       #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/common/telephony/AlphaTag;>;"
    :cond_3
    :try_start_1
    sget-object v6, Lcom/mediatek/contacts/extension/aassne/SimUtils;->sAasMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static updateDataKind(Landroid/content/Context;ILcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 5
    .parameter "context"
    .parameter "slotId"
    .parameter "kind"

    .prologue
    const/4 v1, 0x0

    .line 170
    if-nez p2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-static {p1}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, accountType:Ljava/lang/String;
    const-string v2, "AasExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataKind() mSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curAccountType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const-string v3, "ExtensionForAAS"

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    iget-object v3, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v4, "ExtensionForAAS"

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ext/ContactAccountExtension;->isPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-static {p1, p2}, Lcom/mediatek/contacts/model/UsimAccountType;->updatePhoneType(ILcom/android/contacts/model/dataitem/DataKind;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static updateEditorViewsLabel(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 496
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 497
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 498
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView;

    if-eqz v3, :cond_1

    .line 499
    check-cast v2, Lcom/android/contacts/editor/LabeledEditorView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/contacts/editor/LabeledEditorView;->updateValues()V

    .line 496
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 501
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #v:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->updateEditorViewsLabel(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 504
    :cond_2
    return-void
.end method

.method public static updateLabelViews(Landroid/content/Context;ILcom/android/contacts/model/RawContactDeltaList;Landroid/view/ViewGroup;)V
    .locals 12
    .parameter "context"
    .parameter "slotId"
    .parameter "state"
    .parameter "viewGroup"

    .prologue
    .line 470
    invoke-static {p1}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, curAccountType:Ljava/lang/String;
    const-string v9, "AasExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStart() mSlotId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", curAccountType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v9

    const-string v10, "ExtensionForAAS"

    invoke-virtual {v9, v1, v10}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 474
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 475
    .local v6, numRawContacts:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 476
    .local v4, entity:Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v8

    .line 477
    .local v8, values:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 479
    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, accountType:Ljava/lang/String;
    const-string v9, "data_set"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, dataSet:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    invoke-virtual {v9, v0, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v7

    .line 483
    .local v7, type:Lcom/android/contacts/model/account/AccountType;
    const-string v9, "AasExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStart() AccountType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v9, v7, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 485
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v9}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    .line 486
    .local v2, dataKind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {p0, p1, v2}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->updateDataKind(Landroid/content/Context;ILcom/android/contacts/model/dataitem/DataKind;)Z

    .line 487
    invoke-static {p3}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->updateEditorViewsLabel(Landroid/view/ViewGroup;)V

    .line 492
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #dataKind:Lcom/android/contacts/model/dataitem/DataKind;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #entity:Lcom/android/contacts/model/RawContactDelta;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #numRawContacts:I
    .end local v7           #type:Lcom/android/contacts/model/account/AccountType;
    .end local v8           #values:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_1
    return-void
.end method

.method public static updatemEntryValue(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/account/AccountType$EditType;)Z
    .locals 2
    .parameter "entry"
    .parameter "type"

    .prologue
    .line 227
    iget v0, p1, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v0}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAasPhoneType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "data3"

    iget-object v1, p1, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
