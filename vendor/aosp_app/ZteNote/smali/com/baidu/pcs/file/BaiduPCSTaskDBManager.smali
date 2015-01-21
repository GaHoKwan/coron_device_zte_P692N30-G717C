.class public Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;
.super Ljava/lang/Object;


# static fields
.field private static final DATA1_COLUMN_INDEX:I = 0x9

.field private static final DATA2_COLUMN_INDEX:I = 0xa

.field private static final DATA3_COLUMN_INDEX:I = 0xb

.field private static final DATA4_COLUMN_INDEX:I = 0xc

.field private static final DATE_COLUMN_INDEX:I = 0x5

.field private static final EXTRA_INFO_NUM_COLUMN_INDEX:I = 0x8

.field private static final LOCAL_URL_COLUMN_INDEX:I = 0x3

.field private static final OFFSET_COLUMN_INDEX:I = 0x7

.field private static final REMOTE_URL_COLUMN_INDEX:I = 0x4

.field private static final SIZE_COLUMN_INDEX:I = 0x6

.field private static final STATE_COLUMN_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TaskDBManager"

.field private static final TASKID_COLUMN_INDEX:I = 0x0

.field private static final TYPE_COLUMN_INDEX:I = 0x1

.field private static num:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->num:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "account_id"

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "state"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "local_url"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "remote_url"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmRemotePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "offset_size"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "extra_info_num"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getExtraInfoNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "data1"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data2"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data3"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data4"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v5

    const-string v6, "taskinfo"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmTaskId(J)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmDate(Ljava/lang/String;)V

    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmTaskId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    if-eqz v0, :cond_0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "account_id"

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "task_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "state"

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "local_url"

    iget-object v11, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "remote_url"

    iget-object v11, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-boolean v11, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->isDir:Z

    if-eqz v11, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v11, "is_dir"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "size"

    iget-wide v11, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->size:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "offset_size"

    iget-wide v11, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->offset:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "extra_info_num"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getExtraInfoNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "data1"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data2"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq v7, v0, :cond_2

    if-nez v7, :cond_4

    :cond_2
    const-string v0, "data3"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getUploadSameNameFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "data4"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_1
    const-string v0, "data3"

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "subfiletaskinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[J

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    if-eqz v0, :cond_6

    aget-wide v3, v2, v1

    iput-wide v3, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;->id:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method public static createTaskList(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-eqz v0, :cond_0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "account_id"

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "type"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "state"

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "local_url"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "remote_url"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmRemotePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "size"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "offset_size"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "extra_info_num"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getExtraInfoNum()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "data1"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "data2"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "data3"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "data4"

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getData4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v3, "taskinfo"

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[J

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    if-eqz v0, :cond_4

    aget-wide v7, v3, v1

    invoke-virtual {v0, v7, v8}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmTaskId(J)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static deleteTask(Landroid/content/Context;J)I
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "taskinfo"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "subfiletaskinfo"

    const-string v2, "task_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteTask(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "taskinfo"

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "subfiletaskinfo"

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadTaskByCursor(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;Landroid/database/Cursor;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->loadTaskByCursor(Lcom/baidu/pcs/BaiduPCSFileTransferTask;Landroid/database/Cursor;)V

    return-void
.end method

.method static loadTaskByCursor(Lcom/baidu/pcs/BaiduPCSFileTransferTask;Landroid/database/Cursor;)V
    .locals 4

    const/16 v1, 0x6a

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "TaskDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task or cursor is not available. task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmTaskId(J)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmType(I)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    const/16 v2, 0x70

    if-ne v0, v2, :cond_5

    :cond_2
    const/16 v0, 0x69

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setCurrentState(I)V

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmRemotePath(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmSize(J)V

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmOffset(J)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmDate(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setmLocalPath(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/baidu/pcs/BaiduPCSFileHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setFileName(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setExtraInfoNum(I)V

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setData1(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setData2(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setData3(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setData4(Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    const/16 v2, 0x67

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_6

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_7

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    const/16 v2, 0x68

    if-eq v0, v2, :cond_8

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public static updateTask(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTask(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    invoke-virtual {v1, v2, v0, p3, p4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTaskAndResetMD5(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTaskOffset(Landroid/content/Context;JJ)I
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "offset_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTaskOffset(Landroid/content/Context;JJJJ)J
    .locals 11

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "offset_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "offset_size"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "taskinfo"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "subfiletaskinfo"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static updateTaskOffsetAndMD5(Landroid/content/Context;JJLjava/lang/String;JJ)J
    .locals 12

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "offset_size"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "data2"

    move-object/from16 v0, p5

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "offset_size"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const-string v6, "subfiletaskinfo"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v1, v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static updateTaskOffsetAndMd5(Landroid/content/Context;JJLjava/lang/String;)I
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "offset_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "data2"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTaskSize(Landroid/content/Context;JJ)I
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTaskSize(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static updateTaskState(Landroid/content/Context;JII)I
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "extra_info_num"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "taskinfo"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->num:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->num:I

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateTaskState(Landroid/content/Context;Ljava/lang/String;JI)I
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->num:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v0, Lcom/baidu/pcs/file/BaiduPCSTaskDBManager;->num:I

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
