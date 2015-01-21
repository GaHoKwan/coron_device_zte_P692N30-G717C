.class Lcom/mediatek/filemanager/service/SearchTask;
.super Lcom/mediatek/filemanager/service/BaseAsyncTask;
.source "SearchTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchTask"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPath:Ljava/lang/String;

.field private final mSearchName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "searchName"
    .parameter "path"
    .parameter "contentResolver"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/service/BaseAsyncTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 72
    iput-object p5, p0, Lcom/mediatek/filemanager/service/SearchTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    iput-object p4, p0, Lcom/mediatek/filemanager/service/SearchTask;->mPath:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/mediatek/filemanager/service/SearchTask;->mSearchName:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 19
    .parameter "params"

    .prologue
    .line 79
    const-string v1, "SearchTask"

    const-string v5, "doInBackground..."

    invoke-static {v1, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 81
    .local v2, uri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 82
    .local v15, ret:I
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v1

    .line 83
    .local v3, projection:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v1, "file_name like "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/filemanager/service/SearchTask;->mSearchName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    const-string v1, " and "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_data like "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/filemanager/service/SearchTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/filemanager/service/SearchTask;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 92
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "projection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-nez v13, :cond_0

    .line 95
    const-string v1, "SearchTask"

    const-string v5, "doInBackground, cursor is null."

    invoke-static {v1, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 99
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 100
    .local v17, total:I
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v18, 0x0

    new-instance v5, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v6, ""

    const/4 v7, 0x0

    move/from16 v0, v17

    int-to-long v8, v0

    const/4 v10, 0x0

    move/from16 v0, v17

    int-to-long v11, v0

    invoke-direct/range {v5 .. v12}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v5, v1, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 101
    const/4 v7, 0x0

    .line 102
    .local v7, progress:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    :goto_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const-string v1, "SearchTask"

    const-string v5, "doInBackground,cancel."

    invoke-static {v1, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const/4 v15, -0x7

    .line 118
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 121
    const-string v1, "SearchTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground,ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_2
    :try_start_1
    const-string v1, "_data"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, name:Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 114
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v18, 0x0

    new-instance v5, Lcom/mediatek/filemanager/service/ProgressInfo;

    new-instance v6, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v6, v14}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-long v8, v0

    move/from16 v0, v17

    int-to-long v11, v0

    move v10, v7

    invoke-direct/range {v5 .. v12}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Lcom/mediatek/filemanager/FileInfo;IJIJ)V

    aput-object v5, v1, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 118
    .end local v14           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/SearchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
