.class public Lcom/android/providers/contacts/CallLogSearchSupport;
.super Ljava/lang/Object;
.source "CallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;,
        Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestionQuery;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CallLogSearchSupport"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private final mContactsProvider:Landroid/content/ContentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/CallLogSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProvider;)V
    .locals 0
    .parameter "contactsProvider"

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/android/providers/contacts/CallLogSearchSupport;->mContactsProvider:Landroid/content/ContentProvider;

    .line 309
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/contacts/CallLogSearchSupport;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "db"
    .parameter "filter"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 321
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/CallLogSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "filter"
    .parameter "limit"

    .prologue
    .line 326
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v26, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v27, suggestionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;>;"
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v17, 0x1

    .line 331
    .local v17, haveFilter:Z
    :goto_0
    const-string v4, "calls LEFT JOIN view_data ON (view_data._id=calls.data_id) "

    .line 332
    .local v4, table:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 333
    invoke-static/range {p4 .. p4}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 334
    .local v21, nomalizeName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT JOIN ( SELECT contact_id AS snippet_contact_id FROM search_index WHERE name MATCH \'*?*\')  ON (snippet_contact_id=view_data.contact_id)"

    const-string v5, "?"

    move-object/from16 v0, v21

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    .end local v21           #nomalizeName:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 338
    .local v6, where:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    move-object/from16 v6, p3

    .line 341
    :cond_1
    if-eqz v17, :cond_2

    .line 342
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calls.number GLOB \'*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "snippet_contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 353
    :cond_2
    :goto_1
    const/4 v3, 0x0

    sget-object v5, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v11, p5

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 355
    .local v12, c:Landroid/database/Cursor;
    const-string v2, "CallLogSearchSupport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[buildCursorForSearchSuggestions] where = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; Count ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport;->mContactsProvider:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 359
    .local v15, context:Landroid/content/Context;
    sput-object v15, Lcom/android/providers/contacts/CallLogSearchSupport;->sContext:Landroid/content/Context;

    .line 360
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 361
    .local v13, callsId:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    .line 362
    .local v25, suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    if-nez v25, :cond_3

    .line 363
    new-instance v25, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    .end local v25           #suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    move-object/from16 v0, v25

    invoke-direct {v0, v13, v14}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;-><init>(J)V

    .line 364
    .restart local v25       #suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_3
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mCallsRawContactsId:I

    .line 367
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v25

    iput-wide v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->date:J

    .line 368
    new-instance v28, Landroid/text/format/Time;

    invoke-direct/range {v28 .. v28}, Landroid/text/format/Time;-><init>()V

    .line 369
    .local v28, time:Landroid/text/format/Time;
    move-object/from16 v0, v25

    iget-wide v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->date:J

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 370
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 371
    .local v22, number:Ljava/lang/String;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mCallsRawContactsId:I

    if-nez v2, :cond_6

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport;->mContactsProvider:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 373
    .local v23, r:Landroid/content/res/Resources;
    const/high16 v2, 0x7f04

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 374
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 382
    .end local v23           #r:Landroid/content/res/Resources;
    :goto_3
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->type:I

    .line 383
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    .line 384
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 385
    .local v19, indicate_phone_sim:I
    sget-object v2, Lcom/android/providers/contacts/CallLogSearchSupport;->sContext:Landroid/content/Context;

    move/from16 v0, v19

    int-to-long v7, v0

    invoke-static {v2, v7, v8}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->slotId:I

    .line 386
    const/16 v2, 0x9

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isSdnContact:I

    .line 387
    const/16 v2, 0xa

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mPhotoUri:Ljava/lang/String;

    .line 388
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 390
    .end local v13           #callsId:J
    .end local v15           #context:Landroid/content/Context;
    .end local v19           #indicate_phone_sim:I
    .end local v22           #number:Ljava/lang/String;
    .end local v25           #suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .end local v28           #time:Landroid/text/format/Time;
    :catch_0
    move-exception v16

    .line 391
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CallLogSearchSupport"

    const-string v3, "[buildCursorForSearchSuggestions] catched exception !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 397
    .end local v16           #e:Ljava/lang/Exception;
    :goto_4
    new-instance v2, Lcom/android/providers/contacts/CallLogSearchSupport$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/providers/contacts/CallLogSearchSupport$1;-><init>(Lcom/android/providers/contacts/CallLogSearchSupport;)V

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 403
    new-instance v24, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_9

    move-object/from16 v2, p2

    :goto_5
    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 406
    .local v24, retCursor:Landroid/database/MatrixCursor;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_6
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_a

    .line 407
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 406
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 329
    .end local v4           #table:Ljava/lang/String;
    .end local v6           #where:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v17           #haveFilter:Z
    .end local v18           #i:I
    .end local v24           #retCursor:Landroid/database/MatrixCursor;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 347
    .restart local v4       #table:Ljava/lang/String;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v17       #haveFilter:Z
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND calls.number GLOB \'*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "snippet_contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 376
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #callsId:J
    .restart local v15       #context:Landroid/content/Context;
    .restart local v22       #number:Ljava/lang/String;
    .restart local v25       #suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .restart local v28       #time:Landroid/text/format/Time;
    :cond_6
    const/4 v2, 0x5

    :try_start_2
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 377
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 378
    .local v29, type:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/contacts/CallLogSearchSupport;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, -0x1

    :goto_7
    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 380
    .local v20, label:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 394
    .end local v13           #callsId:J
    .end local v15           #context:Landroid/content/Context;
    .end local v20           #label:Ljava/lang/String;
    .end local v22           #number:Ljava/lang/String;
    .end local v25           #suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .end local v28           #time:Landroid/text/format/Time;
    .end local v29           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 378
    .restart local v13       #callsId:J
    .restart local v15       #context:Landroid/content/Context;
    .restart local v22       #number:Ljava/lang/String;
    .restart local v25       #suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .restart local v28       #time:Landroid/text/format/Time;
    .restart local v29       #type:Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    goto :goto_7

    .line 394
    .end local v13           #callsId:J
    .end local v15           #context:Landroid/content/Context;
    .end local v22           #number:Ljava/lang/String;
    .end local v25           #suggestion:Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .end local v28           #time:Landroid/text/format/Time;
    .end local v29           #type:Ljava/lang/String;
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 403
    :cond_9
    sget-object v2, Lcom/android/providers/contacts/CallLogSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    goto/16 :goto_5

    .line 409
    .restart local v18       #i:I
    .restart local v24       #retCursor:Landroid/database/MatrixCursor;
    :cond_a
    const-string v2, "CallLogSearchSupport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[buildCursorForSearchSuggestions] retCursor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-object v24
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "db"
    .parameter "projection"
    .parameter "callId"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calls._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/CallLogSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "db"
    .parameter "uri"
    .parameter "limit"

    .prologue
    .line 312
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 317
    :goto_0
    return-object v1

    .line 316
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, searchClause:Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/contacts/CallLogSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method
