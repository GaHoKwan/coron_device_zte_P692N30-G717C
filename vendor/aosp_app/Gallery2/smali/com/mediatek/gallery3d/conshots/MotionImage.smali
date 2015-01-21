.class public Lcom/mediatek/gallery3d/conshots/MotionImage;
.super Lcom/android/gallery3d/data/LocalImage;
.source "MotionImage.java"


# static fields
.field public static final ITEM_PATH:Lcom/android/gallery3d/data/Path; = null

.field private static final TAG:Ljava/lang/String; = "Gallery2/MotionImage"


# instance fields
.field private mIsDisable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "/container/motion/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/conshots/MotionImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "localFilePath"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/MotionImage;->mIsDisable:Z

    .line 25
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    .line 27
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/MotionImage;->loadParameter()V

    .line 28
    return-void
.end method

.method private loadParameter()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 43
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 44
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 45
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 46
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/conshots/MotionImage;->mIsDisable:Z

    return v0
.end method

.method public isMotion()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected loadFromCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 50
    return-void
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 86
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 87
    const/4 p1, 0x3

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/LocalImage;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    return-object v0
.end method

.method public setDisable(Z)V
    .locals 0
    .parameter "isDisable"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/conshots/MotionImage;->mIsDisable:Z

    .line 75
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 79
    return-void
.end method

.method public uploadFilePath(Ljava/lang/String;)V
    .locals 2
    .parameter "localFilePath"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    goto :goto_0
.end method
