.class public Lcom/mediatek/gallery3d/conshots/MotionSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "MotionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/conshots/MotionSet$fileComparator;
    }
.end annotation


# static fields
.field private static final INDEX_DATA:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Gallery2/MotionSet"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mFilePath:Ljava/lang/String;

.field private mId:I

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field public mLabel:Ljava/lang/String;

.field public mMotionDir:Ljava/io/File;

.field private mName:Ljava/lang/String;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mRotation:I

.field private mWorkPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;I)V
    .locals 3
    .parameter "path"
    .parameter "application"
    .parameter "name"
    .parameter "id"

    .prologue
    .line 58
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 49
    const-string v0, "IMG"

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mLabel:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mRotation:I

    .line 59
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mPath:Lcom/android/gallery3d/data/Path;

    .line 60
    iput-object p2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 61
    sget-object v0, Lcom/mediatek/gallery3d/conshots/MotionImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 62
    iput-object p3, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mName:Ljava/lang/String;

    .line 63
    iput p4, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mId:I

    .line 65
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/MotionSet;->loadParentInfo()V

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mWorkPath:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mWorkPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->getMotionDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    .line 68
    const-string v0, "Gallery2/MotionSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionSet, mLabel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "Gallery2/MotionSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motion dir,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "Gallery2/MotionSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionSet, mMotionDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private loadParentInfo()V
    .locals 5

    .prologue
    .line 74
    const-string v3, "Gallery2/MotionSet"

    const-string v4, "loadParentInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 77
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 79
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "cannot get cursor"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    return-void

    .line 85
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "cannot find data"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private matchLabel(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 203
    .local v0, allFiles:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 204
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 207
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/DataManager;->broadcastUpdatePicture()V

    .line 208
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 209
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    goto :goto_0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 4

    .prologue
    .line 219
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/android/gallery3d/data/MediaDetails;-><init>()V

    .line 220
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0269

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 221
    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 17
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    const-string v14, "Gallery2/MotionSet"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getMediaItem:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, dataDirty:Z
    const/4 v12, 0x0

    .line 120
    .local v12, motionCount:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v14}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 123
    .local v5, dataManager:Lcom/android/gallery3d/data/DataManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v11, 0x0

    .line 163
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_0
    :goto_0
    return-object v11

    .line 125
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 127
    .local v1, allFiles:[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v7, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v2, v1

    .local v2, arr$:[Ljava/io/File;
    array-length v10, v2

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_2

    aget-object v6, v2, v8

    .line 129
    .local v6, file:Ljava/io/File;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 131
    .end local v6           #file:Ljava/io/File;
    :cond_2
    new-instance v14, Lcom/mediatek/gallery3d/conshots/MotionSet$fileComparator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mediatek/gallery3d/conshots/MotionSet$fileComparator;-><init>(Lcom/mediatek/gallery3d/conshots/MotionSet;)V

    invoke-static {v7, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_5

    .line 134
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 135
    .local v3, currFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/gallery3d/conshots/MotionSet;->matchLabel(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 137
    move/from16 v0, p1

    if-ge v12, v0, :cond_4

    .line 133
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 138
    :cond_4
    add-int v14, p1, p2

    if-lt v12, v14, :cond_6

    .line 157
    .end local v3           #currFile:Ljava/io/File;
    :cond_5
    if-eqz v4, :cond_0

    .line 158
    const-string v14, "Gallery2/MotionSet"

    const-string v15, "getMediaItem:data changed in database."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionSet;->nextVersionNumber()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    goto :goto_0

    .line 140
    .restart local v3       #currFile:Ljava/io/File;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v13

    .line 141
    .local v13, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v5, v13}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/mediatek/gallery3d/conshots/MotionImage;

    .line 143
    .local v9, item:Lcom/mediatek/gallery3d/conshots/MotionImage;
    if-nez v9, :cond_8

    .line 144
    new-instance v9, Lcom/mediatek/gallery3d/conshots/MotionImage;

    .end local v9           #item:Lcom/mediatek/gallery3d/conshots/MotionImage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v13, v14, v15}, Lcom/mediatek/gallery3d/conshots/MotionImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 145
    .restart local v9       #item:Lcom/mediatek/gallery3d/conshots/MotionImage;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mRotation:I

    invoke-virtual {v9, v14}, Lcom/mediatek/gallery3d/conshots/MotionImage;->setRotation(I)V

    .line 146
    const/4 v4, 0x1

    .line 152
    :goto_4
    iget-boolean v14, v9, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    if-eqz v14, :cond_7

    const/4 v4, 0x1

    .line 153
    :cond_7
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 148
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/mediatek/gallery3d/conshots/MotionImage;->uploadFilePath(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mRotation:I

    invoke-virtual {v9, v14}, Lcom/mediatek/gallery3d/conshots/MotionImage;->setRotation(I)V

    goto :goto_4
.end method

.method public getMediaItemCount()I
    .locals 4

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, count:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 180
    :goto_0
    return v3

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mMotionDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 174
    .local v0, allFiles:[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 175
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gallery3d/conshots/MotionSet;->matchLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 174
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    .line 180
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 195
    const/16 v0, 0x405

    return v0
.end method

.method public getWorkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mWorkPath:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public isParentExist()Z
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, parent:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 103
    iput p1, p0, Lcom/mediatek/gallery3d/conshots/MotionSet;->mRotation:I

    .line 104
    return-void
.end method
