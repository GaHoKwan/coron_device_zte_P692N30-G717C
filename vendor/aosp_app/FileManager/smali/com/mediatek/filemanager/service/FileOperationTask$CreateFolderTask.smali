.class Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;
.super Lcom/mediatek/filemanager/service/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreateFolderTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateFolderTask"


# instance fields
.field private final mDstFolder:Ljava/lang/String;

.field mFilterType:I


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "context"
    .parameter "dstFolder"
    .parameter "filterType"

    .prologue
    .line 778
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/filemanager/service/FileOperationTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;)V

    .line 779
    iput-object p4, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    .line 780
    iput p5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;->mFilterType:I

    .line 781
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    .line 785
    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    monitor-enter v6

    .line 786
    const/4 v4, -0x1

    .line 787
    .local v4, ret:I
    :try_start_0
    const-string v5, "CreateFolderTask"

    const-string v7, "doInBackground..."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/filemanager/utils/FileUtils;->checkFileName(Ljava/lang/String;)I

    move-result v4

    .line 789
    if-gez v4, :cond_0

    .line 790
    const-string v5, "CreateFolderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground,ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6

    .line 828
    :goto_0
    return-object v5

    .line 793
    :cond_0
    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, dstFile:Ljava/lang/String;
    const-string v5, "CreateFolderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create a new folder,dstFile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, dir:Ljava/io/File;
    const-string v5, "CreateFolderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The folder to be created exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 798
    const-string v5, "CreateFolderTask"

    const-string v7, "doInBackground,dir is exist."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6

    goto :goto_0

    .line 829
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #dstFile:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 802
    .restart local v0       #dir:Ljava/io/File;
    .restart local v1       #dstFile:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;->mDstFolder:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/filemanager/utils/FileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    .local v3, path:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_2

    .line 804
    const-string v5, "CreateFolderTask"

    const-string v7, "doInBackground,not enough space."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6

    goto :goto_0

    .line 807
    :cond_2
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 810
    const-string v5, "CreateFolderTask"

    const-string v7, "doInBackground,end with dot."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :goto_1
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 812
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 814
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    .restart local v0       #dir:Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 818
    new-instance v2, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v2, v0}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/io/File;)V

    .line 819
    .local v2, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->isHideFile()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;->mFilterType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_6

    .line 821
    :cond_5
    iget-object v5, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v5, v2}, Lcom/mediatek/filemanager/FileInfoManager;->addItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 823
    :cond_6
    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/filemanager/service/MediaStoreHelper;->scanPathforMediaStore(Ljava/lang/String;)V

    .line 824
    const-string v5, "CreateFolderTask"

    const-string v7, "doInBackground, mkdir return success."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6

    goto/16 :goto_0

    .line 828
    .end local v2           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_7
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 770
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
