.class Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;
.super Landroid/os/AsyncTask;
.source "DisguiseCommunicationFragmentTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;-><init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)V

    return-void
.end method

.method private insertCalllogToDisguise(Ljava/util/HashSet;)Z
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, acHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 450
    const/4 v2, 0x0

    .line 514
    :cond_0
    :goto_0
    return v2

    .line 453
    :cond_1
    const/4 v9, 0x0

    .line 455
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 457
    if-eqz v9, :cond_5

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 459
    const-string v2, "number"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 460
    .local v19, numberIndex:I
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 461
    .local v12, dateIndex:I
    const-string v2, "duration"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 462
    .local v14, durationIndex:I
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 463
    .local v22, typeIndex:I
    const-string v2, "new"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 464
    .local v17, newIndex:I
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->CALL_LOG_MODE_NAME:[Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v21

    .line 469
    .local v21, sim_idIndex:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 470
    .local v16, max:I
    const/16 v20, 0x0

    .line 471
    .local v20, progress:I
    const/4 v13, 0x0

    .line 473
    .local v13, deal:I
    :cond_2
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 474
    .local v18, number:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 476
    .local v8, ac:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 478
    .local v10, date:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$500(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v2

    const-string v3, "calllog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ac=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and date="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->isItemExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 481
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "number"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v2, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 484
    const-string v2, "duration"

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v2, "type"

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v2, "new"

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v2, "ac"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_3

    .line 490
    const-string v2, "sim_id"

    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 493
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$500(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v2

    const-string v3, "calllog"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v4, v0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 496
    add-int/lit8 v13, v13, 0x1

    .line 499
    .end local v10           #date:J
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0a0350

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 503
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 510
    .end local v8           #ac:Ljava/lang/String;
    .end local v12           #dateIndex:I
    .end local v13           #deal:I
    .end local v14           #durationIndex:I
    .end local v16           #max:I
    .end local v17           #newIndex:I
    .end local v18           #number:Ljava/lang/String;
    .end local v19           #numberIndex:I
    .end local v20           #progress:I
    .end local v21           #sim_idIndex:I
    .end local v22           #typeIndex:I
    :cond_5
    if-eqz v9, :cond_6

    .line 511
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 506
    :catch_0
    move-exception v15

    .line 507
    .local v15, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    const/4 v2, 0x0

    .line 510
    if-eqz v9, :cond_0

    .line 511
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 510
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_7

    .line 511
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method private insertContactToDisguise(Ljava/util/ArrayList;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;>;"
    const/4 v9, 0x0

    .line 324
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 326
    .local v1, acHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 327
    .local v5, max:I
    const/4 v7, 0x0

    .line 328
    .local v7, progress:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;

    .line 329
    .local v4, item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    add-int/lit8 v7, v7, 0x1

    .line 330
    if-eqz v4, :cond_0

    .line 333
    iget-object v10, v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->number:Ljava/lang/String;

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, ac:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 340
    iget-object v10, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    invoke-static {v10}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$500(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v10

    const-string v11, "contact"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ac=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->isItemExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 343
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "number"

    iget-object v11, v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->number:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v10, v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 346
    const-string v10, "name"

    iget-object v11, v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1
    :goto_1
    const-string v10, "ac"

    invoke-virtual {v8, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v10, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    invoke-static {v10}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$500(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v10

    const-string v11, "contact"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v8}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 360
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const v12, 0x7f0a03bc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 366
    .end local v0           #ac:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    .end local v5           #max:I
    .end local v7           #progress:I
    :catch_0
    move-exception v2

    .line 367
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->insertSmsToDisguise(Ljava/util/HashSet;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 371
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->insertCalllogToDisguise(Ljava/util/HashSet;)Z

    move-result v9

    .line 374
    :cond_4
    return v9

    .line 348
    .restart local v0       #ac:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    .restart local v5       #max:I
    .restart local v7       #progress:I
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    iget-object v10, v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->number:Ljava/lang/String;

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, name:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 351
    const-string v10, "name"

    invoke-virtual {v8, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private insertSmsToDisguise(Ljava/util/HashSet;)Z
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, acHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 379
    const/4 v2, 0x0

    .line 445
    :cond_0
    :goto_0
    return v2

    .line 382
    :cond_1
    const/4 v10, 0x0

    .line 384
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 386
    if-eqz v10, :cond_5

    .line 387
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 388
    const-string v2, "address"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 389
    .local v18, numberIndex:I
    const-string v2, "date"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 390
    .local v13, dateIndex:I
    const-string v2, "read"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 391
    .local v20, readIndex:I
    const-string v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 392
    .local v23, typeIndex:I
    const-string v2, "subject"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 393
    .local v22, subjectIndex:I
    const-string v2, "body"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 394
    .local v9, bodyIndex:I
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->SMS_MODE_NAME:[Ljava/lang/String;

    invoke-static {v10, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v21

    .line 398
    .local v21, sim_idIndex:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 399
    .local v16, max:I
    const/16 v19, 0x0

    .line 400
    .local v19, progress:I
    const/4 v14, 0x0

    .line 402
    .local v14, deal:I
    :cond_2
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 403
    .local v17, number:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 405
    .local v8, ac:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 407
    .local v11, date:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$500(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v2

    const-string v3, "sms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ac=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and date="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->isItemExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 410
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v24, values:Landroid/content/ContentValues;
    const-string v2, "number"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v2, "date"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-string v2, "read"

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v2, "type"

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v2, "subject"

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v2, "body"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_3

    .line 420
    const-string v2, "sim_id"

    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    :cond_3
    const-string v2, "ac"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$500(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v2

    const-string v3, "sms"

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v4, v0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 427
    add-int/lit8 v14, v14, 0x1

    .line 430
    .end local v11           #date:J
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0a034f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 434
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 441
    .end local v8           #ac:Ljava/lang/String;
    .end local v9           #bodyIndex:I
    .end local v13           #dateIndex:I
    .end local v14           #deal:I
    .end local v16           #max:I
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #numberIndex:I
    .end local v19           #progress:I
    .end local v20           #readIndex:I
    .end local v21           #sim_idIndex:I
    .end local v22           #subjectIndex:I
    .end local v23           #typeIndex:I
    :cond_5
    if-eqz v10, :cond_6

    .line 442
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 437
    :catch_0
    move-exception v15

    .line 438
    .local v15, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    const/4 v2, 0x0

    .line 441
    if-eqz v10, :cond_0

    .line 442
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 441
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_7

    .line 442
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;>;"
    const/4 v2, 0x0

    .line 283
    aget-object v0, p1, v2

    .line 284
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 285
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->insertContactToDisguise(Ljava/util/ArrayList;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mImportTask:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$402(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;)Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 293
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 294
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 295
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    const v2, 0x7f0a03bc

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 298
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 302
    aget-object v3, p1, v8

    check-cast v3, Ljava/lang/Integer;

    .line 303
    .local v3, progress:Ljava/lang/Integer;
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Integer;

    .line 304
    .local v1, max:Ljava/lang/Integer;
    const/4 v4, 0x2

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Integer;

    .line 305
    .local v2, msgRes:Ljava/lang/Integer;
    const/4 v4, 0x3

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    .line 307
    .local v0, deal:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 308
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 309
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    #getter for: Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method
