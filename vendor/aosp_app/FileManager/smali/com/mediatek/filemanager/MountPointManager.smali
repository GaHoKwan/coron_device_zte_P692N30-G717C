.class public final Lcom/mediatek/filemanager/MountPointManager;
.super Ljava/lang/Object;
.source "MountPointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/MountPointManager$1;,
        Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    }
.end annotation


# static fields
.field public static final HOME:Ljava/lang/String; = "Home"

.field public static final ROOT_PATH:Ljava/lang/String; = "/storage"

.field public static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "MountPointManager"

.field private static sInstance:Lcom/mediatek/filemanager/MountPointManager;


# instance fields
.field private final mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mediatek/filemanager/MountPointManager$MountPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mRootPath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/mediatek/filemanager/MountPointManager;

    invoke-direct {v0}, Lcom/mediatek/filemanager/MountPointManager;-><init>()V

    sput-object v0, Lcom/mediatek/filemanager/MountPointManager;->sInstance:Lcom/mediatek/filemanager/MountPointManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "Root Path"

    iput-object v0, p0, Lcom/mediatek/filemanager/MountPointManager;->mRootPath:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/MountPointManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/mediatek/filemanager/MountPointManager;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/mediatek/filemanager/MountPointManager;->sInstance:Lcom/mediatek/filemanager/MountPointManager;

    return-object v0
.end method


# virtual methods
.method public changeMountState(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 6
    .parameter "path"
    .parameter "isMounted"

    .prologue
    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, ret:Z
    iget-object v3, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 268
    .local v1, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    iget-object v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    iget-boolean v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsMounted:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 278
    .end local v1           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_1
    :goto_0
    const-string v3, "MountPointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeMountState ,path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return v2

    .line 272
    .restart local v1       #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsMounted:Z

    .line 273
    const/4 v2, 0x1

    .line 274
    goto :goto_0
.end method

.method public getDefaultPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    const-string v0, "MountPointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 374
    const-string v2, "MountPointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDescriptionPath ,path ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 377
    .local v1, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :goto_0
    return-object v2

    .line 378
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_1
    iget-object v2, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mDescription:Ljava/lang/String;

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_2
    move-object v2, p1

    .line 384
    goto :goto_0
.end method

.method public getMountCount()I
    .locals 6

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, count:I
    iget-object v3, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 162
    .local v2, mPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    iget-boolean v3, v2, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsMounted:Z

    if-eqz v3, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v2           #mPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_1
    const-string v3, "MountPointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMountCount,count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v0
.end method

.method public getMountPointFileInfo()Ljava/util/List;
    .locals 5
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
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v0, fileInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    iget-object v3, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 147
    .local v2, mp:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    iget-boolean v3, v2, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsMounted:Z

    if-eqz v3, :cond_0

    .line 148
    new-instance v3, Lcom/mediatek/filemanager/FileInfo;

    iget-object v4, v2, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v2           #mp:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_1
    return-object v0
.end method

.method public getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 223
    const-string v2, "MountPointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRealMountPointPath ,path ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 225
    .local v1, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "MountPointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRealMountPointPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    .line 231
    .end local v1           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :goto_0
    return-object v2

    .line 230
    :cond_1
    const-string v2, "MountPointManager"

    const-string v3, "getRealMountPointPath = \"\" "

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, ""

    goto :goto_0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/filemanager/MountPointManager;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 77
    const-string v7, "storage"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    iput-object v7, p0, Lcom/mediatek/filemanager/MountPointManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/filemanager/MountPointManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, defaultPath:Ljava/lang/String;
    const-string v7, "MountPointManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init,defaultPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 81
    const-string v7, "/storage"

    iput-object v7, p0, Lcom/mediatek/filemanager/MountPointManager;->mRootPath:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v7, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 85
    iget-object v7, p0, Lcom/mediatek/filemanager/MountPointManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 86
    .local v5, storageVolumeList:[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_1

    .line 87
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 88
    .local v6, volume:Landroid/os/storage/StorageVolume;
    new-instance v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/mediatek/filemanager/MountPointManager$MountPoint;-><init>(Lcom/mediatek/filemanager/MountPointManager$1;)V

    .line 89
    .local v4, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    invoke-virtual {v6, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mDescription:Ljava/lang/String;

    .line 90
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    .line 91
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/filemanager/MountPointManager;->isMounted(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsMounted:Z

    .line 92
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    iput-boolean v7, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsExternal:Z

    .line 93
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mMaxFileSize:J

    .line 94
    const-string v7, "MountPointManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init,description :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mDescription:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isMounted : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsMounted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isExternal : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsExternal:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMaxFileSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v4, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mMaxFileSize:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v7, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    invoke-static {}, Lcom/mediatek/filemanager/IconManager;->getInstance()Lcom/mediatek/filemanager/IconManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/mediatek/filemanager/IconManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public isExternalFile(Lcom/mediatek/filemanager/FileInfo;)Z
    .locals 5
    .parameter "fileInfo"

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, ret:Z
    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/filemanager/MountPointManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, mountPath:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const-string v2, "MountPointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExternalFile,return false .mountPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x0

    .line 357
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/filemanager/MountPointManager;->isExternalMountPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const/4 v1, 0x1

    .line 362
    .end local v0           #mountPath:Ljava/lang/String;
    :cond_1
    const-string v2, "MountPointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExternalFile,ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return v1
.end method

.method public isExternalMountPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 331
    const-string v3, "MountPointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExternalMountPath ,path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v2

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 336
    .local v1, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    iget-boolean v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsExternal:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isFat32Disk(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 241
    const-string v3, "MountPointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFat32Disk ,path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 243
    .local v1, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const-string v3, "MountPointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFat32Disk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-wide v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mMaxFileSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 246
    const-string v2, "MountPointManager"

    const-string v3, "isFat32Disk = true."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v2, 0x1

    .line 255
    .end local v1           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :goto_0
    return v2

    .line 249
    .restart local v1       #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_1
    const-string v3, "MountPointManager"

    const-string v4, "isFat32Disk = false."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v1           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_2
    const-string v3, "MountPointManager"

    const-string v4, "isFat32Disk = false."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInternalMountPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 312
    const-string v3, "MountPointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInternalMountPath ,path ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    if-nez p1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v2

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 317
    .local v1, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    iget-boolean v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mIsExternal:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isMountPoint(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, ret:Z
    const-string v4, "MountPointManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMountPoint ,path ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    if-nez p1, :cond_0

    move v3, v2

    .line 302
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_0
    return v3

    .line 295
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    iget-object v4, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    .line 296
    .local v1, mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    iget-object v4, v1, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    const/4 v2, 0x1

    .line 301
    .end local v1           #mountPoint:Lcom/mediatek/filemanager/MountPointManager$MountPoint;
    :cond_2
    const-string v4, "MountPointManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMountPoint ,ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 302
    .restart local v3       #ret:I
    goto :goto_0
.end method

.method protected isMounted(Ljava/lang/String;)Z
    .locals 4
    .parameter "mountPoint"

    .prologue
    .line 188
    const-string v1, "MountPointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMounted, mountPoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 196
    :goto_0
    return v1

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 194
    .local v0, state:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/filemanager/MountPointManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v1, "MountPointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isPrimaryVolume(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 388
    const-string v1, "MountPointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrimaryVolume ,path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/mediatek/filemanager/MountPointManager;->mMountPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/MountPointManager$MountPoint;

    iget-object v0, v0, Lcom/mediatek/filemanager/MountPointManager$MountPoint;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 393
    :goto_0
    return v0

    .line 392
    :cond_0
    const-string v1, "MountPointManager"

    const-string v2, "mMountPathList null!"

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRootPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/filemanager/MountPointManager;->mRootPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isRootPathMount(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 206
    const-string v2, "MountPointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRootPathMount,  path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, ret:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 213
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 211
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/MountPointManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/filemanager/MountPointManager;->isMounted(Ljava/lang/String;)Z

    move-result v0

    .line 212
    const-string v2, "MountPointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRootPathMount,  ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 213
    .restart local v1       #ret:I
    goto :goto_0
.end method
