.class Lcom/mediatek/filemanager/service/ListFileTask;
.super Lcom/mediatek/filemanager/service/BaseAsyncTask;
.source "ListFileTask.java"


# static fields
.field private static final FIRST_NEED_PROGRESS:I = 0xfa

.field private static final NEXT_NEED_PROGRESS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ListFileTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFilterType:I

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "path"
    .parameter "filterType"

    .prologue
    .line 74
    invoke-direct {p0, p2, p3}, Lcom/mediatek/filemanager/service/BaseAsyncTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 75
    iput-object p1, p0, Lcom/mediatek/filemanager/service/ListFileTask;->mContext:Landroid/content/Context;

    .line 76
    iput-object p4, p0, Lcom/mediatek/filemanager/service/ListFileTask;->mPath:Ljava/lang/String;

    .line 77
    iput p5, p0, Lcom/mediatek/filemanager/service/ListFileTask;->mFilterType:I

    .line 78
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 24
    .parameter "params"

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/ListFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    monitor-enter v21

    .line 83
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v11, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    const/4 v12, 0x0

    .line 85
    .local v12, files:[Ljava/io/File;
    const/16 v20, 0x0

    .line 86
    .local v20, total:I
    const/4 v4, 0x0

    .line 87
    .local v4, progress:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 88
    .local v18, startLoadTime:J
    const-string v2, "ListFileTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/filemanager/service/ListFileTask;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/ListFileTask;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/MountPointManager;->getMountPointFileInfo()Ljava/util/List;

    move-result-object v16

    .line 92
    .local v16, mountFileList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    if-eqz v16, :cond_0

    .line 93
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v2, v11}, Lcom/mediatek/filemanager/FileInfoManager;->addItemList(Ljava/util/List;)V

    .line 96
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    .line 147
    .end local v16           #mountFileList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    :goto_0
    return-object v2

    .line 99
    :cond_1
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/ListFileTask;->mPath:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v10, dir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 102
    if-nez v12, :cond_3

    .line 103
    const-string v2, "ListFileTask"

    const-string v3, "doInBackground,directory is null"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    goto :goto_0

    .line 148
    .end local v4           #progress:I
    .end local v10           #dir:Ljava/io/File;
    .end local v11           #fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    .end local v12           #files:[Ljava/io/File;
    .end local v18           #startLoadTime:J
    .end local v20           #total:I
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 107
    .restart local v4       #progress:I
    .restart local v10       #dir:Ljava/io/File;
    .restart local v11       #fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    .restart local v12       #files:[Ljava/io/File;
    .restart local v18       #startLoadTime:J
    .restart local v20       #total:I
    :cond_2
    :try_start_1
    const-string v2, "ListFileTask"

    const-string v3, "doInBackground,directory is not exist."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    goto :goto_0

    .line 110
    :cond_3
    array-length v0, v12

    move/from16 v20, v0

    .line 111
    const-wide/16 v14, 0x0

    .line 112
    .local v14, loadTime:J
    const/16 v17, 0xfa

    .line 113
    .local v17, nextUpdateTime:I
    const-string v2, "ListFileTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground, total = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v2, v12

    if-ge v13, v2, :cond_8

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    const-string v2, "ListFileTask"

    const-string v3, " doInBackground,calcel."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    goto :goto_0

    .line 120
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/filemanager/service/ListFileTask;->mFilterType:I

    if-nez v2, :cond_6

    .line 121
    aget-object v2, v12, v13

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    const-string v2, "ListFileTask"

    const-string v3, " doInBackground,start with.,contine."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 127
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/filemanager/service/ListFileTask;->mFilterType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 128
    aget-object v2, v12, v13

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_7

    .line 129
    const-string v2, "ListFileTask"

    const-string v3, " doInBackground,is not directory,continue.."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    new-instance v3, Lcom/mediatek/filemanager/FileInfo;

    aget-object v5, v12, v13

    invoke-direct {v3, v5}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/FileInfoManager;->addItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v18

    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 138
    move/from16 v0, v17

    int-to-long v2, v0

    cmp-long v2, v14, v2

    if-lez v2, :cond_5

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 140
    const/16 v17, 0xc8

    .line 141
    const-string v2, "ListFileTask"

    const-string v3, "doInBackground,pulish progress."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v2, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v3, ""

    move/from16 v0, v20

    int-to-long v5, v0

    move/from16 v0, v20

    int-to-long v8, v0

    move v7, v4

    invoke-direct/range {v2 .. v9}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v2, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    .line 146
    :cond_8
    const-string v2, "ListFileTask"

    const-string v3, "doInBackground ERROR_CODE_SUCCESS"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/ListFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
