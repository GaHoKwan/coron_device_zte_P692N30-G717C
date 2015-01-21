.class public Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;
.super Ljava/lang/Object;


# static fields
.field private static final ALL_TASK_PROJECTION:[Ljava/lang/String;

.field private static final CHECK_SUB_TASK_PROJECTION:[Ljava/lang/String;

.field private static final CHECK_TASK_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->mInstance:Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const-string v1, "local_url"

    aput-object v1, v0, v6

    const-string v1, "remote_url"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "offset_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "extra_info_num"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->ALL_TASK_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "state"

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->CHECK_TASK_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "remote_url"

    aput-object v1, v0, v4

    const-string v1, "local_url"

    aput-object v1, v0, v5

    const-string v1, "is_dir"

    aput-object v1, v0, v6

    const-string v1, "size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "offset_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->CHECK_SUB_TASK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExistTask(Landroid/content/Context;Lcom/baidu/pcs/BaiduPCSFileTransferTask;)Z
    .locals 11

    const/4 v5, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v3, "account_id=? and remote_url=? and type=? "

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmRemotePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v0

    if-eq v0, v8, :cond_0

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v3, "account_id=? and local_url=? and type=? "

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/baidu/pcs/BaiduPCSCommon;->getInstance()Lcom/baidu/pcs/BaiduPCSCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSCommon;->getAccountID()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmLocalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->getmType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "taskinfo"

    sget-object v2, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->CHECK_TASK_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "state"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    :goto_0
    return v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v10

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static getInstance()Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;
    .locals 1

    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->mInstance:Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    invoke-direct {v0}, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;-><init>()V

    sput-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->mInstance:Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    :cond_0
    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->mInstance:Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;

    return-object v0
.end method


# virtual methods
.method public getFileTaskListFromDb(Ljava/lang/String;Landroid/content/Context;Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------------getFileTaskListFromDb-------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "taskinfo"

    sget-object v2, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->ALL_TASK_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->setFileTaskListener(Lcom/baidu/pcs/file/BaiduPCSFileTaskListener;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    const-string v1, "------------------getFileTaskListFromDb-------------------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :pswitch_0
    :try_start_3
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;

    invoke-direct {v0, p2, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :pswitch_1
    :try_start_4
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;

    invoke-direct {v0, p2, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileDownload;

    invoke-direct {v0, p2, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileUpload;

    invoke-direct {v0, p2, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getSubFileInfoListFromDB(Landroid/content/Context;Ljava/lang/String;JJI)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "JJI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------------getSubFileInfoListFromDB-------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v1

    const-string v2, "subfiletaskinfo"

    sget-object v3, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->CHECK_SUB_TASK_PROJECTION:[Ljava/lang/String;

    const-string v4, "account_id=? and task_id=? and _id>?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    if-eqz v10, :cond_3

    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x3

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    const-string v1, "remote_url"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "is_dir"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    const/4 v5, 0x1

    :goto_2
    const-string v1, "size"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v1, "offset_size"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v1, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;

    invoke-direct/range {v1 .. v9}, Lcom/baidu/pcs/BaiduPCSFileTransferTask$SubFileInfo;-><init>(JLjava/lang/String;ZJJ)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v10

    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_4
    sget-object v1, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    const-string v2, "------------------getFileTaskListFromDb-------------------"

    invoke-static {v1, v2}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_1
    :try_start_3
    const-string v1, "local_url"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v10, v9

    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v10, v9

    :goto_6
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v10, v2

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v2, v9

    goto :goto_3
.end method

.method public initTasksFromDB(Ljava/lang/String;Landroid/content/Context;Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;)V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTasksFromDB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->getInstance(Landroid/content/Context;)Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;

    move-result-object v0

    const-string v1, "taskinfo"

    sget-object v2, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->ALL_TASK_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/pcs/file/BaiduPCSTaskDBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileUploadTask;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/baidu/pcs/BaiduPCSFileUploadTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-interface {p3, v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v2, Lcom/baidu/pcs/file/BaiduPCSFileDBHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/pcs/BaiduPCSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-void

    :pswitch_1
    :try_start_3
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/baidu/pcs/BaiduPCSFileDownloadTask;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-interface {p3, v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :pswitch_2
    :try_start_4
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileDownload;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/baidu/pcs/BaiduPCSFileDownload;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-interface {p3, v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/baidu/pcs/BaiduPCSFileUpload;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/baidu/pcs/BaiduPCSFileUpload;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-interface {p3, v0}, Lcom/baidu/pcs/file/BaiduPCSFileTaskProcessorInterface;->addTask(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
