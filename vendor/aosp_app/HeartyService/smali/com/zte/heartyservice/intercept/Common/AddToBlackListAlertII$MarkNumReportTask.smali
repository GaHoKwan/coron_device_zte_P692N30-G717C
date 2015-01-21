.class Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;
.super Landroid/os/AsyncTask;
.source "AddToBlackListAlertII.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkNumReportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;-><init>(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .parameter "params"

    .prologue
    .line 257
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v13, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    invoke-virtual {v13}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->getNetState(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 262
    :try_start_0
    const-string v12, "AddToBlackListAlertII"

    const-string v13, " update stage I "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v7, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v7, numberMarkEntityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    new-instance v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;

    invoke-direct {v2}, Ltmsdk/common/module/numbermarker/NumberMarkEntity;-><init>()V

    .line 268
    .local v2, entity:Ltmsdk/common/module/numbermarker/NumberMarkEntity;
    const/4 v12, 0x1

    iput v12, v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->calltime:I

    .line 270
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;
    invoke-static {v12}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$100(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->phonenum:Ljava/lang/String;

    .line 272
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mTagType:I

    iput v12, v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->tagtype:I

    .line 274
    sget v12, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_USER_HANG_UP:I

    iput v12, v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->teltype:I

    .line 275
    sget v12, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_USER_REPORT_TELTAG:I

    iput v12, v2, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->useraction:I

    .line 276
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    invoke-static {v12}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$300(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ltmsdk/common/module/numbermarker/NumMarkerManager;

    move-result-object v12

    invoke-virtual {v12, v7}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->reportPhoneNumber(Ljava/util/List;)I

    move-result v9

    .line 280
    .local v9, result:I
    if-nez v9, :cond_0

    .line 283
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v12}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->open()V

    .line 284
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    iget-object v13, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->phoneNum:Ljava/lang/String;
    invoke-static {v13}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$100(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->updateMarkedData(Ljava/lang/String;)V

    .line 287
    const-string v12, "AddToBlackListAlertII"

    const-string v13, " update finish"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    const-string v12, "AddToBlackListAlertII"

    const-string v13, " update stage II "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v12}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->fetchNoupdateData()Landroid/database/Cursor;

    move-result-object v0

    .line 293
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 294
    .local v4, mCount:I
    const-string v12, "AddToBlackListAlertII"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCount ===="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-lez v4, :cond_2

    .line 299
    new-instance v8, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    .local v8, numberMarkEntityList1:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    new-instance v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;

    invoke-direct {v3}, Ltmsdk/common/module/numbermarker/NumberMarkEntity;-><init>()V

    .line 303
    .local v3, entity1:Ltmsdk/common/module/numbermarker/NumberMarkEntity;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_2

    .line 305
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 306
    const-string v12, "num"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 307
    .local v5, nameColumn:I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 308
    .local v11, type:I
    const-string v12, "data"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 309
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, number:Ljava/lang/String;
    const-string v12, "AddToBlackListAlertII"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " number =========="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v12, "AddToBlackListAlertII"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " type ============"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v12, 0x1

    iput v12, v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->calltime:I

    .line 315
    iput-object v6, v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->phonenum:Ljava/lang/String;

    .line 317
    iput v11, v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->tagtype:I

    .line 319
    sget v12, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->TEL_TYPE_USER_HANG_UP:I

    iput v12, v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->teltype:I

    .line 320
    sget v12, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->USER_ACTION_USER_REPORT_TELTAG:I

    iput v12, v3, Ltmsdk/common/module/numbermarker/NumberMarkEntity;->useraction:I

    .line 321
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    invoke-static {v12}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->access$300(Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;)Ltmsdk/common/module/numbermarker/NumMarkerManager;

    move-result-object v12

    invoke-virtual {v12, v8}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->reportPhoneNumber(Ljava/util/List;)I

    move-result v10

    .line 325
    .local v10, result1:I
    if-nez v10, :cond_1

    .line 328
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v12}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->open()V

    .line 329
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v12, v6}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->updateMarkedData(Ljava/lang/String;)V

    .line 332
    const-string v12, "AddToBlackListAlertII"

    const-string v13, " statage II update finish"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 341
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #entity:Ltmsdk/common/module/numbermarker/NumberMarkEntity;
    .end local v3           #entity1:Ltmsdk/common/module/numbermarker/NumberMarkEntity;
    .end local v4           #mCount:I
    .end local v5           #nameColumn:I
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #numberMarkEntityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    .end local v8           #numberMarkEntityList1:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    .end local v9           #result:I
    .end local v10           #result1:I
    .end local v11           #type:I
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v12, ""

    const-string v13, "error============"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    const-string v12, "AddToBlackListAlertII"

    const-string v13, " update finish"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v12}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->close()V

    .line 359
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v12, 0x0

    return-object v12

    .line 349
    .restart local v0       #cur:Landroid/database/Cursor;
    .restart local v2       #entity:Ltmsdk/common/module/numbermarker/NumberMarkEntity;
    .restart local v4       #mCount:I
    .restart local v7       #numberMarkEntityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    .restart local v9       #result:I
    :cond_2
    const-string v12, "AddToBlackListAlertII"

    const-string v13, " update finish"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v12, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v12}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->close()V

    goto :goto_1

    .line 349
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #entity:Ltmsdk/common/module/numbermarker/NumberMarkEntity;
    .end local v4           #mCount:I
    .end local v7           #numberMarkEntityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/numbermarker/NumberMarkEntity;>;"
    .end local v9           #result:I
    :catchall_0
    move-exception v12

    const-string v13, "AddToBlackListAlertII"

    const-string v14, " update finish"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v13, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->this$0:Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;

    iget-object v13, v13, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII;->m_MarkLocalDataBaseAdapter:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v13}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->close()V

    throw v12

    .line 357
    :cond_3
    const-string v12, "AddToBlackListAlertII"

    const-string v13, " net isn\'t connected, do nothing"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 250
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlertII$MarkNumReportTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 369
    const-string v0, "AddToBlackListAlertII"

    const-string v1, " finish =========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method
