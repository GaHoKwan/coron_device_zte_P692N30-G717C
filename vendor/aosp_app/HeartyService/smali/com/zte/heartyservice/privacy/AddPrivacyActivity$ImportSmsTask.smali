.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;
.super Landroid/os/AsyncTask;
.source "AddPrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportSmsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 438
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 540
    :cond_0
    :goto_0
    return-object v3

    .line 440
    :cond_1
    const/4 v3, 0x0

    aget-object v17, p1, v3

    .line 441
    .local v17, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 442
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 445
    :cond_3
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    const/16 v21, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    const/16 v21, 0x2

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    const/16 v21, 0x3

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->publishProgress([Ljava/lang/Object;)V

    .line 447
    const/16 v18, 0x0

    .line 448
    .local v18, progress:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 450
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 451
    .local v20, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 452
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 454
    :cond_5
    const/4 v12, 0x0

    .line 456
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    .line 457
    .local v16, id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "content://sms/"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 458
    .local v2, realUri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 459
    if-eqz v12, :cond_a

    .line 460
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 461
    const-string v3, "date"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 463
    .local v5, date:J
    const-string v3, "address"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, address:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_6

    .line 530
    if-eqz v12, :cond_4

    .line 531
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 468
    :cond_6
    const/4 v14, 0x0

    .line 469
    .local v14, handle_sent:Z
    :try_start_1
    const-string v3, "read"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 471
    .local v7, read:I
    const-string v3, "type"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 473
    .local v19, type:I
    const/4 v8, 0x2

    .line 474
    .local v8, insertType:I
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_7

    const/4 v3, 0x7

    move/from16 v0, v19

    if-eq v0, v3, :cond_7

    const/16 v3, 0x8

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 477
    :cond_7
    move/from16 v8, v19

    .line 482
    :cond_8
    :goto_2
    const-string v3, "subject"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, subject:Ljava/lang/String;
    const-string v3, "body"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, body:Ljava/lang/String;
    const/4 v11, -0x1

    .line 487
    .local v11, sub_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_9

    .line 490
    :try_start_2
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->SMS_MODE_NAME:[Ljava/lang/String;

    invoke-static {v12, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v11

    .line 499
    :cond_9
    :goto_3
    const/4 v3, 0x1

    if-ne v14, v3, :cond_d

    .line 507
    :try_start_3
    invoke-static {v4, v10, v5, v6, v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sendSms(Ljava/lang/String;Ljava/lang/String;JI)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 509
    const/4 v3, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 530
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #date:J
    .end local v7           #read:I
    .end local v8           #insertType:I
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v14           #handle_sent:Z
    .end local v19           #type:I
    :cond_a
    :goto_4
    if-eqz v12, :cond_b

    .line 531
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_b
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    const/16 v21, 0x1

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    const/16 v21, 0x2

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    const/16 v21, 0x3

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v3, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 478
    .restart local v4       #address:Ljava/lang/String;
    .restart local v5       #date:J
    .restart local v7       #read:I
    .restart local v8       #insertType:I
    .restart local v14       #handle_sent:Z
    .restart local v19       #type:I
    :cond_c
    const/4 v3, 0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 480
    const/4 v14, 0x1

    goto :goto_2

    .line 495
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #sub_id:I
    :catch_0
    move-exception v13

    .line 496
    .local v13, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 526
    .end local v2           #realUri:Landroid/net/Uri;
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #date:J
    .end local v7           #read:I
    .end local v8           #insertType:I
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #handle_sent:Z
    .end local v16           #id:Ljava/lang/String;
    .end local v19           #type:I
    :catch_1
    move-exception v13

    .line 527
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 530
    if-eqz v12, :cond_0

    .line 531
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 513
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v2       #realUri:Landroid/net/Uri;
    .restart local v4       #address:Ljava/lang/String;
    .restart local v5       #date:J
    .restart local v7       #read:I
    .restart local v8       #insertType:I
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #sub_id:I
    .restart local v14       #handle_sent:Z
    .restart local v16       #id:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_d
    const/4 v3, -0x1

    if-ne v11, v3, :cond_e

    .line 514
    const/4 v11, 0x0

    .line 516
    :cond_e
    :try_start_6
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v3

    invoke-virtual/range {v3 .. v11}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertSms(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 521
    const/4 v3, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 530
    .end local v2           #realUri:Landroid/net/Uri;
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #date:J
    .end local v7           #read:I
    .end local v8           #insertType:I
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v14           #handle_sent:Z
    .end local v16           #id:Ljava/lang/String;
    .end local v19           #type:I
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_f

    .line 531
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3

    .line 540
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_10
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$202(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 575
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const v1, 0x7f0a0642

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 431
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 546
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 547
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    const v2, 0x7f0a0649

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 549
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 553
    aget-object v3, p1, v8

    check-cast v3, Ljava/lang/Integer;

    .line 554
    .local v3, progress:Ljava/lang/Integer;
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Integer;

    .line 555
    .local v1, max:Ljava/lang/Integer;
    const/4 v4, 0x2

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Integer;

    .line 556
    .local v2, msgRes:Ljava/lang/Integer;
    const/4 v4, 0x3

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    .line 558
    .local v0, deal:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 559
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 561
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1

    .line 562
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 564
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 565
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 568
    :cond_2
    return-void
.end method
