.class public Lzte/com/cn/cloudnotepad/filer/FilerUtils;
.super Ljava/lang/Object;
.source "FilerUtils.java"


# static fields
.field public static mRootPhonePath:Ljava/lang/String;

.field public static mRootSdcardPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    .line 22
    sput-object v0, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSnippet(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "context"
    .parameter "appInfo"
    .parameter "archiveFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 50
    const-string v7, "android.content.res.AssetManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, assetMagCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 52
    .local v2, assetMagCt:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, assetMag:Ljava/lang/Object;
    const-string v7, "addAssetPath"

    new-array v8, v11, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 54
    .local v3, assetMag_addAssetPathMtd:Ljava/lang/reflect/Method;
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p2, v7, v10

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 56
    .local v5, pRes:Landroid/content/res/Resources;
    new-instance v6, Landroid/content/res/Resources;

    check-cast v0, Landroid/content/res/AssetManager;

    .end local v0           #assetMag:Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v0, v7, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 57
    .local v6, res:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 58
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_0

    .line 59
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 61
    :cond_0
    return-object v4
.end method

.method public static getFilerListIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 80
    .local v2, start:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 81
    sget-object v3, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, id:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #id:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    :cond_1
    return-object v0
.end method

.method public static getImageThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "srcBitmap"

    .prologue
    const/16 v2, 0x30

    .line 71
    invoke-static {p0, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    return-object v1
.end method

.method public static getInitPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->getRootPath()V

    .line 40
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getRootPath()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getStorageVolume()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 26
    .local v1, mStorageVolume:[Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 27
    .local v2, path:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 36
    return-void

    .line 28
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 29
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lzte/com/cn/cloudnotepad/NoteApp;->isSDCardExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    sput-object v2, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    .line 32
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 33
    sput-object v2, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    .line 27
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 65
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    return-object v1
.end method
