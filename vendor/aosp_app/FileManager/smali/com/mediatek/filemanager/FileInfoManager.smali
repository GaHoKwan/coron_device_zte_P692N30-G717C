.class public Lcom/mediatek/filemanager/FileInfoManager;
.super Ljava/lang/Object;
.source "FileInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;
    }
.end annotation


# static fields
.field private static final MAX_LIST_SIZE:I = 0x14

.field public static final PASTE_MODE_COPY:I = 0x2

.field public static final PASTE_MODE_CUT:I = 0x1

.field public static final PASTE_MODE_UNKOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FileInfoManager"


# instance fields
.field private final mAddFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAccessPath:Ljava/lang/String;

.field protected mModifiedTime:J

.field private final mNavigationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasteFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPasteOperation:I

.field private final mRemoveFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowFilesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteOperation:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mModifiedTime:J

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    .line 305
    return-void
.end method


# virtual methods
.method public addItem(Lcom/mediatek/filemanager/FileInfo;)V
    .locals 1
    .parameter "fileInfo"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addItemList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    const-string v0, "FileInfoManager"

    const-string v1, "addItemList"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    return-void
.end method

.method protected addToNavigationList(Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;)V
    .locals 2
    .parameter "navigationRecord"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected clearNavigationList()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    return-void
.end method

.method public clearPasteList()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteOperation:I

    .line 377
    return-void
.end method

.method public getPasteCount()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPasteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPasteType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteOperation:I

    return v0
.end method

.method protected getPrevNavigation()Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;
    .locals 4

    .prologue
    .line 262
    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;

    .line 264
    .local v0, navRecord:Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfoManager;->removeFromNavigationList()V

    .line 265
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    .end local v0           #navRecord:Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowFileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    const-string v0, "FileInfoManager"

    const-string v1, "getShowFileList"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    return-object v0
.end method

.method public isPasteItem(Lcom/mediatek/filemanager/FileInfo;)Z
    .locals 1
    .parameter "currentItem"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPathModified(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v0, 0x1

    .line 89
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mModifiedTime:J

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadFileInfoList(Ljava/lang/String;I)V
    .locals 5
    .parameter "path"
    .parameter "sortType"

    .prologue
    .line 196
    const-string v2, "FileInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFileInfoList,path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sortType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 198
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 199
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mModifiedTime:J

    .line 200
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 202
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    if-nez v0, :cond_1

    .line 203
    const-string v2, "FileInfoManager"

    const-string v3, "loadFileInfoList,file info is null!"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/MountPointManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 212
    invoke-virtual {p0, p2}, Lcom/mediatek/filemanager/FileInfoManager;->sort(I)V

    .line 213
    return-void
.end method

.method public loadFileInfoList(Ljava/lang/String;ILcom/mediatek/filemanager/FileInfo;)V
    .locals 5
    .parameter "path"
    .parameter "sortType"
    .parameter "selectedFileInfo"

    .prologue
    .line 223
    const-string v2, "FileInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFileInfoList,path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sortType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 225
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 226
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mModifiedTime:J

    .line 227
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 229
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    if-nez v0, :cond_1

    .line 230
    const-string v2, "FileInfoManager"

    const-string v3, "loadFileInfoList,file info is null!"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/MountPointManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/FileInfo;->setChecked(Z)V

    goto :goto_0

    .line 241
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 242
    invoke-virtual {p0, p2}, Lcom/mediatek/filemanager/FileInfoManager;->sort(I)V

    .line 243
    return-void
.end method

.method protected removeFromNavigationList()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mNavigationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    :cond_0
    return-void
.end method

.method public removeItem(Lcom/mediatek/filemanager/FileInfo;)V
    .locals 1
    .parameter "fileInfo"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public savePasteList(ILjava/util/List;)V
    .locals 1
    .parameter "pasteType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, fileInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    iput p1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteOperation:I

    .line 78
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-void
.end method

.method public sort(I)V
    .locals 3
    .parameter "sortType"

    .prologue
    .line 395
    const-string v0, "FileInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sort,sortType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-static {p1}, Lcom/mediatek/filemanager/FileInfoComparator;->getInstance(I)Lcom/mediatek/filemanager/FileInfoComparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 397
    return-void
.end method

.method public updateFileInfoList(Ljava/lang/String;I)V
    .locals 5
    .parameter "currentPath"
    .parameter "sortType"

    .prologue
    .line 144
    const-string v2, "FileInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFileInfoList,currentPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sortType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 147
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mModifiedTime:J

    .line 148
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 149
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 156
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 157
    invoke-virtual {p0, p2}, Lcom/mediatek/filemanager/FileInfoManager;->sort(I)V

    .line 158
    return-void
.end method

.method public updateOneFileInfoList(Ljava/lang/String;I)Lcom/mediatek/filemanager/FileInfo;
    .locals 4
    .parameter "path"
    .parameter "sortType"

    .prologue
    .line 170
    const-string v1, "FileInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOneFileInfoList,path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sortType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    .line 173
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mModifiedTime:J

    .line 174
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 176
    .restart local v0       #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mLastAccessPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mPasteFilesInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 183
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mRemoveFilesInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    invoke-virtual {p0, p2}, Lcom/mediatek/filemanager/FileInfoManager;->sort(I)V

    .line 186
    return-object v0
.end method

.method public updateSearchList()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "FileInfoManager"

    const-string v1, "updateSearchList"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mShowFilesInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager;->mAddFilesInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    return-void
.end method
