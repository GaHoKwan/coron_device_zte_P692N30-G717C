.class Lcom/android/mms/ui/ImportSmsActivity$8;
.super Ljava/lang/Thread;
.source "ImportSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ImportSmsActivity;->importMessages(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ImportSmsActivity;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ImportSmsActivity$8;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 263
    const/4 v11, 0x0

    .line 265
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//message//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 267
    .local v16, sdCardDirPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 268
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "sms"

    invoke-static {}, Lcom/android/mms/ui/ImportSmsActivity;->access$400()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 269
    if-nez v11, :cond_2

    .line 270
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "importDict sms cursor is null "

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ImportSmsActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    if-eqz v11, :cond_0

    .line 332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v16           #sdCardDirPath:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 339
    :cond_1
    return-void

    .line 274
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16       #sdCardDirPath:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 275
    .local v10, count:I
    const-string v2, "MMS/ImportSmsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importDict sms count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-lez v10, :cond_c

    .line 277
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v14, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v15, 0x0

    .line 279
    .local v15, patchNumber:I
    const/4 v13, 0x1

    .line 280
    .local v13, loop:Z
    :cond_3
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v13, :cond_8

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 282
    const/4 v13, 0x0

    .line 284
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #calls: Lcom/android/mms/ui/ImportSmsActivity;->getValueFromCursor(Landroid/database/Cursor;)Landroid/content/ContentValues;
    invoke-static {v2, v11}, Lcom/android/mms/ui/ImportSmsActivity;->access$600(Lcom/android/mms/ui/ImportSmsActivity;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v17

    .line 285
    .local v17, v:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 286
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 287
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v15, v15, 0x1

    .line 290
    rem-int/lit8 v2, v15, 0x14

    if-nez v2, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-lez v2, :cond_3

    .line 293
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 294
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "apply end"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    :try_start_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    :goto_2
    const/4 v15, 0x0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v12

    .line 296
    .local v12, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    :try_start_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 327
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #count:I
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v13           #loop:Z
    .end local v14           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v15           #patchNumber:I
    .end local v16           #sdCardDirPath:Ljava/lang/String;
    .end local v17           #v:Landroid/content/ContentValues;
    :catch_1
    move-exception v12

    .line 328
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "can\'t open the database file"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ImportSmsActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 331
    if-eqz v11, :cond_5

    .line 332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 297
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v10       #count:I
    .restart local v13       #loop:Z
    .restart local v14       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #patchNumber:I
    .restart local v16       #sdCardDirPath:Ljava/lang/String;
    .restart local v17       #v:Landroid/content/ContentValues;
    :catch_2
    move-exception v12

    .line 298
    .local v12, e:Landroid/content/OperationApplicationException;
    :try_start_7
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 300
    :try_start_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 331
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #count:I
    .end local v12           #e:Landroid/content/OperationApplicationException;
    .end local v13           #loop:Z
    .end local v14           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v15           #patchNumber:I
    .end local v16           #sdCardDirPath:Ljava/lang/String;
    .end local v17           #v:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_6

    .line 332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 331
    :cond_7
    throw v2

    .line 300
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v10       #count:I
    .restart local v13       #loop:Z
    .restart local v14       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #patchNumber:I
    .restart local v16       #sdCardDirPath:Ljava/lang/String;
    .restart local v17       #v:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    :try_start_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 301
    const/4 v15, 0x0

    .line 300
    throw v2

    .line 306
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #v:Landroid/content/ContentValues;
    :cond_8
    if-lez v15, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v2

    if-lez v2, :cond_9

    .line 308
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_a .. :try_end_a} :catch_4

    .line 314
    :try_start_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 315
    :goto_3
    const/4 v15, 0x0

    .line 322
    :cond_9
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "import message success"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ImportSmsActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    :cond_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1

    .line 331
    if-eqz v11, :cond_b

    .line 332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 309
    :catch_3
    move-exception v12

    .line 310
    .local v12, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 314
    :try_start_d
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_3

    .line 311
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v12

    .line 312
    .local v12, e:Landroid/content/OperationApplicationException;
    :try_start_e
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 314
    :try_start_f
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .end local v12           #e:Landroid/content/OperationApplicationException;
    :catchall_2
    move-exception v2

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 315
    const/4 v15, 0x0

    .line 314
    throw v2

    .line 319
    .end local v13           #loop:Z
    .end local v14           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v15           #patchNumber:I
    :cond_c
    const-string v2, "MMS/ImportSmsActivity"

    const-string v3, "importDict sms is empty"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_1

    .line 331
    if-eqz v11, :cond_d

    .line 332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ImportSmsActivity$8;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #getter for: Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/ui/ImportSmsActivity;->access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    goto/16 :goto_0
.end method
