.class Lcom/autonavi/xmgd/citydata/DataRemover;
.super Ljava/lang/Object;


# instance fields
.field private mFileList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsRunning:Z

.field private mOnFileDeletedListener:Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;

.field private final mStoreFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mIsRunning:Z

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mStoreFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataRemover;->loadList()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/citydata/DataRemover;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataRemover;->pickNext()V

    return-void
.end method

.method private loadList()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mStoreFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_2
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    :goto_3
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v1

    :goto_4
    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_0

    :catch_7
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_1
    :goto_6
    throw v0

    :catch_8
    move-exception v0

    goto :goto_0

    :catch_9
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private notifyFileDeleted(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mOnFileDeletedListener:Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mOnFileDeletedListener:Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;->onDataRemoved(II)V

    :cond_0
    return-void
.end method

.method private pickNext()V
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mIsRunning:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mIsRunning:Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    const/4 v1, 0x2

    if-eq v3, v1, :cond_5

    const/4 v1, 0x7

    if-eq v3, v1, :cond_5

    const/4 v1, 0x6

    if-eq v3, v1, :cond_5

    if-eq v3, v12, :cond_5

    const/16 v1, 0x64

    new-array v4, v1, [Lcom/autonavi/xm/navigation/server/GDataDirInfo;

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v1

    const/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->GDBL_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v5, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v5, :cond_5

    const/4 v1, 0x0

    aget v1, v6, v1

    if-lez v1, :cond_5

    move v1, v8

    :goto_2
    const/4 v5, 0x0

    aget v5, v6, v5

    if-ge v1, v5, :cond_5

    aget-object v5, v4, v1

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GDataDirInfo;->bDel:I

    if-ne v5, v12, :cond_4

    sget-object v5, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v1

    iget-object v11, v11, Lcom/autonavi/xm/navigation/server/GDataDirInfo;->szDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v10, v4, v1

    iget-object v10, v10, Lcom/autonavi/xm/navigation/server/GDataDirInfo;->szDir:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v8

    :goto_3
    if-ge v2, v4, :cond_8

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v5}, Lcom/autonavi/xmgd/citydata/FileUtils;->deleteDirectiory(Ljava/io/File;)Z

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataRemover;->storeList()Z

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/citydata/DataRemover;->notifyFileDeleted(I)V

    goto/16 :goto_0
.end method

.method private storeList()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mStoreFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mStoreFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_1
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_4
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_6
    throw v0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method addTask(ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/citydata/DataRemover;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addTask(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/citydata/DataRemover;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearTasks()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataRemover;->stop()V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataRemover;->storeList()Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method contains(I)Z
    .locals 3

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getTaskListSize()I
    .locals 2

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mFileList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setOnFileDeletedListener(Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mOnFileDeletedListener:Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;

    return-void
.end method

.method start()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mIsRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mIsRunning:Z

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataRemover$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataRemover$1;-><init>(Lcom/autonavi/xmgd/citydata/DataRemover;)V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataRemover$1;->start()V

    goto :goto_0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataRemover;->mIsRunning:Z

    return-void
.end method

.method store()Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataRemover;->storeList()Z

    move-result v0

    return v0
.end method
