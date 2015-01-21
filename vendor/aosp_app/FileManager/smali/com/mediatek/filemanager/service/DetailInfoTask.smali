.class Lcom/mediatek/filemanager/service/DetailInfoTask;
.super Lcom/mediatek/filemanager/service/BaseAsyncTask;
.source "DetailInfoTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailInfoTask"


# instance fields
.field private final mDetailfileInfo:Lcom/mediatek/filemanager/FileInfo;

.field private mTotal:J


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Lcom/mediatek/filemanager/FileInfo;)V
    .locals 2
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "file"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/service/BaseAsyncTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mTotal:J

    .line 67
    iput-object p3, p0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mDetailfileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 68
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 17
    .parameter "params"

    .prologue
    .line 72
    const-string v1, "DetailInfoTask"

    const-string v2, "doInBackground..."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mDetailfileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mDetailfileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mDetailfileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 77
    .local v11, files:[Ljava/io/File;
    const/4 v14, 0x0

    .line 78
    .local v14, ret:I
    if-eqz v11, :cond_2

    .line 79
    move-object v9, v11

    .local v9, arr$:[Ljava/io/File;
    array-length v13, v9

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v10, v9, v12

    .line 80
    .local v10, file:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/mediatek/filemanager/service/DetailInfoTask;->getContentSize(Ljava/io/File;)I

    move-result v14

    .line 81
    if-gez v14, :cond_0

    .line 82
    const-string v1, "DetailInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground,ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 93
    .end local v9           #arr$:[Ljava/io/File;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #files:[Ljava/io/File;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #ret:I
    :goto_1
    return-object v1

    .line 79
    .restart local v9       #arr$:[Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #files:[Ljava/io/File;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #ret:I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 89
    .end local v9           #arr$:[Ljava/io/File;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #files:[Ljava/io/File;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #ret:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mDetailfileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileSize()J

    move-result-wide v4

    .line 90
    .local v4, size:J
    const/4 v1, 0x1

    new-array v15, v1, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v16, 0x0

    new-instance v1, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v1, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 93
    .end local v4           #size:J
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/DetailInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getContentSize(Ljava/io/File;)I
    .locals 17
    .parameter "root"

    .prologue
    .line 103
    const-string v1, "DetailInfoTask"

    const-string v2, "getContentSize..."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v14, 0x0

    .line 105
    .local v14, ret:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 107
    .local v11, files:[Ljava/io/File;
    move-object v9, v11

    .local v9, arr$:[Ljava/io/File;
    array-length v13, v9

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v10, v9, v12

    .line 108
    .local v10, file:Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, -0x7

    .line 120
    .end local v9           #arr$:[Ljava/io/File;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #files:[Ljava/io/File;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :goto_1
    return v1

    .line 111
    .restart local v9       #arr$:[Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #files:[Ljava/io/File;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/mediatek/filemanager/service/DetailInfoTask;->getContentSize(Ljava/io/File;)I

    move-result v14

    .line 112
    if-gez v14, :cond_1

    .line 113
    const-string v1, "DetailInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentSize ,ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v14

    .line 114
    goto :goto_1

    .line 107
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 118
    .end local v9           #arr$:[Ljava/io/File;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #files:[Ljava/io/File;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_2
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mTotal:J

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mTotal:J

    .line 119
    const/4 v1, 0x1

    new-array v15, v1, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v16, 0x0

    new-instance v1, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v2, ""

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mTotal:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;->mTotal:J

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v1, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 120
    const/4 v1, 0x0

    goto :goto_1
.end method
