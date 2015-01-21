.class public Lcom/mediatek/contacts/simservice/SIMImportProcessor;
.super Lcom/mediatek/contacts/simservice/SIMProcessorBase;
.source "SIMImportProcessor.java"


# static fields
.field protected static final ADDITIONAL_NUMBER_COLUMN:I = 0x4

.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field protected static final EMAIL_COLUMN:I = 0x3

.field protected static final GROUP_COLUMN:I = 0x5

.field protected static final INDEX_COLUMN:I = 0x0

.field private static final MAX_OP_COUNT_IN_ONE_BATCH:I = 0x5a

.field protected static final NAME_COLUMN:I = 0x1

.field protected static final NUMBER_COLUMN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SIMImportProcessor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "index"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "additionalNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V
    .locals 1
    .parameter "context"
    .parameter "slotId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 78
    invoke-direct {p0, p3, p4}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;-><init>(Landroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .line 79
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mContext:Landroid/content/Context;

    .line 80
    iput p2, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mGroupIdMap:Ljava/util/HashMap;

    .line 82
    return-void
.end method

.method private actuallyImportOneSimContact(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentResolver;IJIJZLjava/util/ArrayList;ILcom/mediatek/contacts/model/AccountWithDataSetEx;ZILjava/lang/String;)I
    .locals 25
    .parameter "context"
    .parameter "cursor"
    .parameter "resolver"
    .parameter "slotId"
    .parameter "simId"
    .parameter "simType"
    .parameter "indexInSim"
    .parameter "importSdnContacts"
    .parameter
    .parameter "loopCheck"
    .parameter "account"
    .parameter "isUsim"
    .parameter "accountSlot"
    .parameter "countryCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Landroid/content/ContentResolver;",
            "IJIJZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            "ZI",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 301
    .local p11, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move/from16 v8, p12

    .line 302
    .local v8, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const-string v2, "SIMImportProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[actuallyImportOneSimContact]cancel, Thread id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v8

    .line 393
    .end local v8           #i:I
    .local v15, i:I
    :goto_0
    return v15

    .line 308
    .end local v15           #i:I
    .restart local v8       #i:I
    :cond_0
    new-instance v19, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 310
    .local v19, namePhoneTypePair:Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 311
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneType:I

    move/from16 v22, v0

    .line 312
    .local v22, phoneType:I
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneTypeSuffix:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 313
    .local v23, phoneTypeSuffix:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 314
    .local v21, phoneNumber:Ljava/lang/String;
    const-string v2, "SIMImportProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "indexInSim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneTypeSuffix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v9, 0x0

    .line 319
    .local v9, j:I
    const/4 v13, 0x0

    .line 320
    .local v13, additionalNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .line 322
    .local v3, accountType:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 324
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v24, values:Landroid/content/ContentValues;
    if-eqz p13, :cond_1

    .line 327
    move-object/from16 v0, p13

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 328
    const-string v2, "account_name"

    move-object/from16 v0, p13

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "account_type"

    move-object/from16 v0, p13

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_1
    const-string v2, "indicate_phone_or_sim_contact"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    const-string v2, "aggregation_mode"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v2, "index_in_sim"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    if-eqz p10, :cond_2

    .line 336
    const-string v2, "is_sdn_contact"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    :cond_2
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 340
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v9, v9, 0x1

    .line 343
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 344
    const-string v2, "SIMImportProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[actuallyImportOneSimContact] phoneNumber before : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v17

    .line 348
    .local v17, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 349
    .local v14, cha:[C
    array-length v0, v14

    move/from16 v16, v0

    .line 350
    .local v16, ii:I
    const/16 v20, 0x0

    .local v20, num:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 351
    aget-char v2, v14, v20

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v21

    .line 350
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 353
    :cond_3
    const-string v2, "SIMImportProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[actuallyImportOneSimContact] phoneNumber after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 357
    const-string v2, "raw_contact_id"

    invoke-virtual {v4, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 358
    const-string v2, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 362
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const/4 v6, 0x2

    const-string v7, "ExtensionForAAS"

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z

    .line 367
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v2

    const-string v5, "ExtensionForOP01"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v5}, Lcom/android/contacts/ext/ContactListExtension;->getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 369
    const-string v2, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 370
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 371
    const-string v2, "data15"

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 373
    :cond_4
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v9, v9, 0x1

    .line 377
    .end local v14           #cha:[C
    .end local v16           #ii:I
    .end local v17           #mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    .end local v20           #num:I
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 378
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 379
    const-string v2, "raw_contact_id"

    invoke-virtual {v4, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 380
    const-string v2, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 381
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 382
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v9, v9, 0x1

    .line 387
    :cond_6
    if-eqz p14, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p11

    move-object/from16 v10, p16

    move-object v11, v3

    move/from16 v12, p15

    .line 388
    invoke-direct/range {v5 .. v12}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->importUSimPart(Landroid/database/Cursor;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 391
    :cond_7
    add-int/2addr v8, v9

    move v15, v8

    .line 393
    .end local v8           #i:I
    .restart local v15       #i:I
    goto/16 :goto_0
.end method

.method private checkSIMStateReady()Z
    .locals 6

    .prologue
    .line 511
    iget v3, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->checkPhoneBookState(I)Z

    move-result v2

    .line 514
    .local v2, simStateReady:Z
    const/16 v1, 0xa

    .line 515
    .local v1, i:I
    :goto_0
    if-lez v1, :cond_0

    .line 516
    if-nez v2, :cond_0

    .line 518
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_1
    iget v3, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->checkPhoneBookState(I)Z

    move-result v2

    .line 528
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SIMImportProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkSIMStateReady]excepiotn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return v2
.end method

.method private importAllSimContacts(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentResolver;IJILjava/util/HashSet;Z)V
    .locals 26
    .parameter "context"
    .parameter "cursor"
    .parameter "resolver"
    .parameter "slotId"
    .parameter "simId"
    .parameter "simType"
    .parameter
    .parameter "importSdnContacts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Landroid/content/ContentResolver;",
            "IJI",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p8, insertSimIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[importAllSimContacts]cancel, Thread id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v22

    .line 194
    .local v22, atm:Lcom/android/contacts/model/AccountTypeManager;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v25

    .line 195
    .local v25, lac:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_7

    const/16 v16, 0x1

    .line 197
    .local v16, isUsim:Z
    :goto_1
    const/16 v17, -0x1

    .line 198
    .local v17, accountSlot:I
    const/4 v15, 0x0

    .line 199
    .local v15, account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 200
    .local v19, accountData:Lcom/android/contacts/model/account/AccountWithDataSet;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v2, :cond_2

    move-object/from16 v20, v19

    .line 201
    check-cast v20, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 202
    .local v20, accountEx:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v17

    .line 203
    move/from16 v0, v17

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 204
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "USIM Account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v21, 0x1

    .line 207
    .local v21, accountSimType:I
    :goto_2
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "UIM Account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    const/16 v21, 0x2

    .line 211
    :cond_3
    move/from16 v0, v21

    move/from16 v1, p7

    if-ne v0, v1, :cond_4

    .line 212
    move-object/from16 v15, v20

    .line 220
    .end local v19           #accountData:Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v20           #accountEx:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .end local v21           #accountSimType:I
    :cond_4
    if-nez v15, :cond_5

    .line 224
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importAllSimContacts]account is null!"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v13, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 230
    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 232
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 233
    .local v18, countryCode:Ljava/lang/String;
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[importAllSimContacts] countryCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v14, 0x0

    .line 235
    .local v14, i:I
    :cond_6
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 236
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 238
    .local v10, indexInSim:J
    if-eqz p8, :cond_9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 239
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[importAllSimContacts]slot id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "||indexInSim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "||isInserted is true,contine to do next."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 195
    .end local v10           #indexInSim:J
    .end local v13           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v14           #i:I
    .end local v15           #account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .end local v16           #isUsim:Z
    .end local v17           #accountSlot:I
    .end local v18           #countryCode:Ljava/lang/String;
    .end local v24           #i$:Ljava/util/Iterator;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 204
    .restart local v15       #account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .restart local v16       #isUsim:Z
    .restart local v17       #accountSlot:I
    .restart local v19       #accountData:Lcom/android/contacts/model/account/AccountWithDataSet;
    .restart local v20       #accountEx:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .end local v19           #accountData:Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v20           #accountEx:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .restart local v10       #indexInSim:J
    .restart local v13       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v14       #i:I
    .restart local v18       #countryCode:Ljava/lang/String;
    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v12, p9

    .line 244
    invoke-direct/range {v2 .. v18}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->actuallyImportOneSimContact(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentResolver;IJIJZLjava/util/ArrayList;ILcom/mediatek/contacts/model/AccountWithDataSetEx;ZILjava/lang/String;)I

    move-result v14

    .line 248
    const/16 v2, 0x5a

    if-le v14, v2, :cond_6

    .line 252
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->checkPhoneBookState(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 253
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importAllSimContacts]check sim State: false"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2

    .line 272
    .end local v10           #indexInSim:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mGroupIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 274
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[importAllSimContacts]cancel import work on after while{}. Thread id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    .restart local v10       #indexInSim:J
    :cond_b
    :try_start_1
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importAllSimContacts]Before applyBatch. "

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 258
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importAllSimContacts]After applyBatch "

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2

    .line 266
    :goto_4
    const/4 v14, 0x0

    .line 267
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 259
    :catch_0
    move-exception v23

    .line 260
    .local v23, e:Landroid/os/RemoteException;
    const-string v2, "SIMImportProcessor"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 261
    .end local v23           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    .line 262
    .local v23, e:Landroid/content/OperationApplicationException;
    const-string v2, "SIMImportProcessor"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 263
    .end local v23           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v23

    .line 264
    .local v23, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "SIMImportProcessor"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 279
    .end local v10           #indexInSim:J
    .end local v23           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_c
    :try_start_2
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importAllSimContacts]final,Before applyBatch "

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static/range {p4 .. p4}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->checkPhoneBookState(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 281
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importSimContactcheck] sim State: true"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 283
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 286
    :cond_d
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importAllSimContacts]final,After applyBatch "

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 287
    :catch_3
    move-exception v23

    .line 288
    .local v23, e:Landroid/os/RemoteException;
    const-string v2, "SIMImportProcessor"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    .end local v23           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v23

    .line 290
    .local v23, e:Landroid/content/OperationApplicationException;
    const-string v2, "SIMImportProcessor"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private importUSimPart(Landroid/database/Cursor;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;I)I
    .locals 29
    .parameter "cursor"
    .parameter
    .parameter "loopCheck"
    .parameter "loop"
    .parameter "countryCode"
    .parameter "accountType"
    .parameter "accountSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 399
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move/from16 v9, p3

    .line 400
    .local v9, i:I
    move/from16 v21, p4

    .line 401
    .local v21, j:I
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 404
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 405
    .local v17, emailAddresses:Ljava/lang/String;
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[importUSimPart]import a USIM contact.emailAddresses:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 409
    .local v16, emailAddressArray:[Ljava/lang/String;
    move-object/from16 v12, v16

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v15, v12, v19

    .line 410
    .local v15, emailAddress:Ljava/lang/String;
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[actuallyImportOneSimContact]emailAddress IS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    const-string v2, "raw_contact_id"

    invoke-virtual {v4, v2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 413
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    const-string v2, "data2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 415
    const-string v2, "data1"

    invoke-virtual {v4, v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 416
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v21, v21, 0x1

    .line 409
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 423
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v15           #emailAddress:Ljava/lang/String;
    .end local v16           #emailAddressArray:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v22           #len$:I
    :cond_1
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 424
    .local v11, additionalNumber:Ljava/lang/String;
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[importUSimPart]additionalNumber:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 426
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[importUSimPart] additionalNumber before : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v23

    .line 429
    .local v23, mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .line 430
    .local v13, cha:[C
    array-length v0, v13

    move/from16 v20, v0

    .line 431
    .local v20, ii:I
    const/16 v24, 0x0

    .local v24, num:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 432
    aget-char v2, v13, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v11

    .line 431
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 434
    :cond_2
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[importUSimPart] additionalNumber after : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 436
    const-string v2, "raw_contact_id"

    invoke-virtual {v4, v2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 437
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 445
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const/4 v6, 0x0

    const-string v7, "ExtensionForAAS"

    move-object/from16 v3, p6

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 449
    const-string v2, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 451
    :cond_3
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v2

    const-string v3, "ExtensionForOP01"

    invoke-virtual {v2, v11, v3}, Lcom/android/contacts/ext/ContactListExtension;->getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 454
    const-string v2, "data1"

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 455
    const-string v2, "is_additional_number"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 456
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v21, v21, 0x1

    .line 461
    .end local v13           #cha:[C
    .end local v20           #ii:I
    .end local v23           #mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    .end local v24           #num:I
    :cond_4
    invoke-static/range {p7 .. p7}, Lcom/mediatek/contacts/extension/aassne/SneExt;->hasSne(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v5

    const-string v10, "ExtensionForSNE"

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/ext/ContactAccountExtension;->buildOperationFromCursor(Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    add-int/lit8 v21, v21, 0x1

    .line 469
    :cond_5
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 470
    .local v28, ugrpStr:Ljava/lang/String;
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[importUSimPart]sim group id string: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 472
    const/16 v26, 0x0

    .line 473
    .local v26, ugrpIdArray:[Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 474
    const-string v2, ","

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 476
    :cond_6
    move-object/from16 v12, v26

    .restart local v12       #arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v27, v12, v19

    .line 477
    .local v27, ugrpIdStr:Ljava/lang/String;
    const/16 v25, -0x1

    .line 479
    .local v25, ugrpId:I
    :try_start_0
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 480
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    .line 487
    :cond_7
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[importUSimPart] sim group id ugrpId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    if-lez v25, :cond_8

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mGroupIdMap:Ljava/util/HashMap;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 491
    .local v18, grpId:Ljava/lang/Integer;
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[importUSimPart]simgroup mapping group grpId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-nez v18, :cond_9

    .line 493
    const-string v2, "SIMImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Group] Error. Catch unhandled SIM group error. ugrp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v18           #grpId:Ljava/lang/Integer;
    :cond_8
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 482
    :catch_0
    move-exception v14

    .line 483
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "SIMImportProcessor"

    const-string v3, "[importUSimPart] catched exception"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 497
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v18       #grpId:Ljava/lang/Integer;
    :cond_9
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 498
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 499
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 500
    const-string v2, "raw_contact_id"

    invoke-virtual {v4, v2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 501
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 507
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v18           #grpId:Ljava/lang/Integer;
    .end local v19           #i$:I
    .end local v22           #len$:I
    .end local v25           #ugrpId:I
    .end local v26           #ugrpIdArray:[Ljava/lang/String;
    .end local v27           #ugrpIdStr:Ljava/lang/String;
    :cond_a
    return v21
.end method

.method private querySIMContact(Landroid/content/Context;IILandroid/net/Uri;I)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "slotId"
    .parameter "simType"
    .parameter "iccUri"
    .parameter "simId"

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "SIMImportProcessor"

    const-string v1, "[querySIMContact]canceled,return."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v7, 0x0

    .line 561
    :goto_0
    return-object v7

    .line 538
    :cond_0
    const-string v0, "SIMImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[querySIMContact]slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|simId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|simType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v7, 0x0

    .line 543
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 548
    if-eqz v7, :cond_1

    .line 549
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 550
    .local v6, count:I
    const-string v0, "SIMImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[querySIMContact]count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .end local v6           #count:I
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mGroupIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 555
    new-instance v9, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;

    invoke-direct {v9, p2, p5, p3, v7}, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;-><init>(IIILandroid/database/Cursor;)V

    .line 556
    .local v9, workData:Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mGroupIdMap:Ljava/util/HashMap;

    invoke-static {p1, v9, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->syncUSIMGroupContactsGroup(Landroid/content/Context;Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;Ljava/util/HashMap;)V

    goto :goto_0

    .line 544
    .end local v9           #workData:Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;
    :catch_0
    move-exception v8

    .line 545
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v0, "SIMImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[querySIMContact]exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 558
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_2
    invoke-static {p1, p2}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->deleteUSIMGroupOnPhone(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public doWork()V
    .locals 14

    .prologue
    .line 91
    const-string v0, "SIMImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dowork]Processor [slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] running...Thread id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "SIMImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dowork]cancel import work. Thread id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v0, v1}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->deleteSimContact(Landroid/content/Context;I)V

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "SIMImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dowork]cancelimport work after deleteSimContact. Thread id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->checkSIMStateReady()Z

    move-result v13

    .line 105
    .local v13, simStateReady:Z
    const/4 v5, -0x1

    .line 106
    .local v5, simId:I
    if-eqz v13, :cond_3

    .line 107
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v12

    .line 108
    .local v12, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v12, :cond_2

    .line 109
    iget-wide v0, v12, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v5, v0

    .line 118
    :cond_2
    iget v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getSimTypeBySlot(I)I

    move-result v3

    .line 119
    .local v3, simType:I
    iget v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 120
    .local v4, iccUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->querySIMContact(Landroid/content/Context;IILandroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v9

    .line 121
    .local v9, simCursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    move-object v6, p0

    move v10, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->importAllSimContacts(Landroid/content/Context;ILandroid/database/Cursor;II)V

    goto :goto_0

    .line 113
    .end local v3           #simType:I
    .end local v4           #iccUri:Landroid/net/Uri;
    .end local v9           #simCursor:Landroid/database/Cursor;
    .end local v12           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v0, v1}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->sendFinishIntent(Landroid/content/Context;I)V

    .line 114
    const-string v0, "SIMImportProcessor"

    const-string v1, "[doWork]simStateReady is not ready, return!"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public importAllSimContacts(Landroid/content/Context;ILandroid/database/Cursor;II)V
    .locals 18
    .parameter "context"
    .parameter "slotId"
    .parameter "simCursor"
    .parameter "simType"
    .parameter "simId"

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "SIMImportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[importAllSimContacts]cancel import work,Thread id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 133
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v1, "SIMImportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[importAllSimContacts]insert slot id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sim id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sim type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p3, :cond_4

    .line 137
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ge v0, v1, :cond_1

    .line 138
    invoke-static/range {p1 .. p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v17

    .line 139
    .local v17, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v17, :cond_1

    .line 140
    move-object/from16 v0, v17

    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v0, v1

    move/from16 p5, v0

    .line 144
    .end local v17           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    const-string v1, "SIMImportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[importAllSimContacts]sim Id changed as:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-lez p5, :cond_2

    .line 146
    monitor-enter p0

    .line 147
    move/from16 v0, p5

    int-to-long v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v5, p2

    move/from16 v8, p4

    :try_start_0
    invoke-direct/range {v1 .. v10}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->importAllSimContacts(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentResolver;IJILjava/util/HashSet;Z)V

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 153
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->checkPhoneBookState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez p5, :cond_4

    .line 154
    const/4 v8, 0x0

    .line 155
    .local v8, sdnCursor:Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimSdnUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 156
    .local v5, iccSdnUri:Landroid/net/Uri;
    const-string v1, "SIMImportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[importAllSimContacts]iccSdnUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v6, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #sdnCursor:Landroid/database/Cursor;
    move-result-object v8

    .line 158
    .restart local v8       #sdnCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 159
    const-string v1, "SIMImportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[importAllSimContacts]sdnCursor.getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 163
    move/from16 v0, p5

    int-to-long v11, v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v4

    move/from16 v10, p2

    move/from16 v13, p4

    invoke-direct/range {v6 .. v15}, Lcom/mediatek/contacts/simservice/SIMImportProcessor;->importAllSimContacts(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentResolver;IJILjava/util/HashSet;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    :cond_3
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 175
    .end local v5           #iccSdnUri:Landroid/net/Uri;
    .end local v8           #sdnCursor:Landroid/database/Cursor;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    const-string v1, "SIMImportProcessor"

    const-string v2, "[ImportAllSimContactsThread] cancel."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 166
    .restart local v5       #iccSdnUri:Landroid/net/Uri;
    .restart local v8       #sdnCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 167
    .local v16, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SIMImportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[importAllSimContacts]exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 169
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 179
    .end local v5           #iccSdnUri:Landroid/net/Uri;
    .end local v8           #sdnCursor:Landroid/database/Cursor;
    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->sendFinishIntent(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
