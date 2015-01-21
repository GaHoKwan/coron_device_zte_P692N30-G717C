.class Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;
.super Lcom/mediatek/filemanager/service/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RenameTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RenameTask"


# instance fields
.field private final mDstFileInfo:Lcom/mediatek/filemanager/FileInfo;

.field mFilterType:I

.field private final mSrcFileInfo:Lcom/mediatek/filemanager/FileInfo;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;I)V
    .locals 1
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "context"
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "filterType"

    .prologue
    .line 841
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/filemanager/service/FileOperationTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;)V

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mFilterType:I

    .line 842
    iput-object p5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mDstFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 843
    iput-object p4, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 844
    iput p6, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mFilterType:I

    .line 845
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "params"

    .prologue
    .line 849
    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    monitor-enter v6

    .line 850
    const/4 v4, -0x1

    .line 851
    .local v4, ret:I
    :try_start_0
    const-string v5, "RenameTask"

    const-string v7, "doInBackground..."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mDstFileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v5}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, dstFile:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 854
    const-string v5, "RenameTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rename dstFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {v0}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/filemanager/utils/FileUtils;->checkFileName(Ljava/lang/String;)I

    move-result v4

    .line 856
    if-gez v4, :cond_0

    .line 857
    const-string v5, "RenameTask"

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

    .line 858
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6

    .line 891
    :goto_0
    return-object v5

    .line 861
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    .local v1, newFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v5}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 864
    .local v3, oldFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 865
    const-string v5, "RenameTask"

    const-string v7, "doInBackground,new file is exist."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6

    goto :goto_0

    .line 892
    .end local v0           #dstFile:Ljava/lang/String;
    .end local v1           #newFile:Ljava/io/File;
    .end local v3           #oldFile:Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 868
    .restart local v0       #dstFile:Ljava/lang/String;
    .restart local v1       #newFile:Ljava/io/File;
    .restart local v3       #oldFile:Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 871
    const-string v5, "RenameTask"

    const-string v7, "doInBackground,end with dot."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :goto_1
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 873
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 875
    :cond_2
    new-instance v1, Ljava/io/File;

    .end local v1           #newFile:Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 878
    .restart local v1       #newFile:Ljava/io/File;
    :cond_3
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 879
    new-instance v2, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v2, v1}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/io/File;)V

    .line 880
    .local v2, newFileInfo:Lcom/mediatek/filemanager/FileInfo;
    iget-object v5, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget-object v7, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v5, v7}, Lcom/mediatek/filemanager/FileInfoManager;->removeItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 881
    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->isHideFile()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mFilterType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    .line 883
    :cond_4
    iget-object v5, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v5, v2}, Lcom/mediatek/filemanager/FileInfoManager;->addItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 885
    :cond_5
    iget-object v5, p0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->mSrcFileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/filemanager/service/MediaStoreHelper;->updateInMediaStore(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v5, "RenameTask"

    const-string v7, "doInBackground,return success."

    invoke-static {v5, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-exit v6

    goto/16 :goto_0

    .line 891
    .end local v2           #newFileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_6
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
    .line 833
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
