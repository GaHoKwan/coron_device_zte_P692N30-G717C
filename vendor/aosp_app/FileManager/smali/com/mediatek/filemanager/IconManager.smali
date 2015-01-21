.class public final Lcom/mediatek/filemanager/IconManager;
.super Ljava/lang/Object;
.source "IconManager.java"


# static fields
.field private static final OFFX:I = 0x4

.field public static final TAG:Ljava/lang/String; = "IconManager"

.field private static sCustomDrableIdsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/mediatek/filemanager/IconManager;


# instance fields
.field protected mDefIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

.field protected mIconsHead:Landroid/graphics/Bitmap;

.field private mRes:Landroid/content/res/Resources;

.field protected mSdcard2Icons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/mediatek/filemanager/IconManager;

    invoke-direct {v0}, Lcom/mediatek/filemanager/IconManager;-><init>()V

    sput-object v0, Lcom/mediatek/filemanager/IconManager;->sInstance:Lcom/mediatek/filemanager/IconManager;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/mediatek/filemanager/IconManager;->mDefIcons:Ljava/util/HashMap;

    .line 75
    iput-object v0, p0, Lcom/mediatek/filemanager/IconManager;->mSdcard2Icons:Ljava/util/HashMap;

    .line 77
    iput-object v0, p0, Lcom/mediatek/filemanager/IconManager;->mIconsHead:Landroid/graphics/Bitmap;

    .line 79
    iput-object v0, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    .line 90
    return-void
.end method

.method private static getCustomDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "mimeType"

    .prologue
    .line 141
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isOP01Surported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-static {}, Lcom/mediatek/filemanager/IconManager;->getUnknownTypeDrawableId()I

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/mediatek/filemanager/MediaFileManager;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, fileType:I
    sget-object v1, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-static {}, Lcom/mediatek/filemanager/IconManager;->getUnknownTypeDrawableId()I

    move-result v1

    goto :goto_0

    .line 152
    :cond_1
    sget-object v1, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "mimeType"

    .prologue
    const v0, 0x7f020010

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const v0, 0x7f02003c

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const v0, 0x7f02000f

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "application/zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    const v0, 0x7f02003f

    goto :goto_0

    .line 115
    :cond_3
    const-string v1, "application/ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const-string v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const v0, 0x7f02002d

    goto :goto_0

    .line 121
    :cond_4
    const-string v0, "text/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    const v0, 0x7f02003b

    goto :goto_0

    .line 123
    :cond_5
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    const v0, 0x7f02003d

    goto :goto_0

    .line 126
    :cond_6
    invoke-static {p0, p1}, Lcom/mediatek/filemanager/IconManager;->getCustomDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getFileIcon(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "iconId"
    .parameter "isExternal"

    .prologue
    .line 251
    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/IconManager;->getExternalIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/IconManager;->getDefaultIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getFolderIcon(Lcom/mediatek/filemanager/FileInfo;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "fileInfo"
    .parameter "isExternal"

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/filemanager/MountPointManager;->isInternalMountPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const v2, 0x7f020044

    invoke-virtual {p0, v2}, Lcom/mediatek/filemanager/IconManager;->getDefaultIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/filemanager/MountPointManager;->isExternalMountPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    const v2, 0x7f020045

    invoke-virtual {p0, v2}, Lcom/mediatek/filemanager/IconManager;->getDefaultIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    invoke-interface {v2, v1}, Lcom/mediatek/filemanager/ext/IIconExtension;->isSystemFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    iget-object v2, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    invoke-interface {v2, v1}, Lcom/mediatek/filemanager/ext/IIconExtension;->getSystemFolderIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 267
    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lcom/mediatek/filemanager/IconManager;->createExternalIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 274
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_3
    const v2, 0x7f020023

    invoke-direct {p0, v2, p2}, Lcom/mediatek/filemanager/IconManager;->getFileIcon(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/filemanager/IconManager;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/mediatek/filemanager/IconManager;->sInstance:Lcom/mediatek/filemanager/IconManager;

    return-object v0
.end method

.method public static getUnknownTypeDrawableId()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f02003c

    return v0
.end method

.method private static isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "mimeType"

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 164
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 167
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static updateCustomDrableMap(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 171
    sget-object v0, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 174
    const-string v0, "application/vnd.ms-excel"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    sget-object v0, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    const/16 v1, 0x2c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "IconManager"

    const-string v1, "add excel type drawable"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    const-string v0, "application/mspowerpoint"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    :cond_2
    sget-object v0, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    const/16 v1, 0x2c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "IconManager"

    const-string v1, "add ppt type drawable"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_3
    const-string v0, "application/msword"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    :cond_4
    sget-object v0, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    const/16 v1, 0x2c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "IconManager"

    const-string v1, "add world type drawable"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_5
    const-string v0, "application/pdf"

    invoke-static {p0, v0}, Lcom/mediatek/filemanager/IconManager;->isSupportedByCurrentSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    sget-object v0, Lcom/mediatek/filemanager/IconManager;->sCustomDrableIdsMap:Ljava/util/HashMap;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "IconManager"

    const-string v1, "add pdf type drawable"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_6
    return-void
.end method


# virtual methods
.method public createExternalIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "parameter bitmap is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_0
    iget-object v5, p0, Lcom/mediatek/filemanager/IconManager;->mIconsHead:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 338
    iget-object v5, p0, Lcom/mediatek/filemanager/IconManager;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f020030

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/filemanager/IconManager;->mIconsHead:Landroid/graphics/Bitmap;

    .line 341
    :cond_1
    iget-object v5, p0, Lcom/mediatek/filemanager/IconManager;->mIconsHead:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x4

    .line 342
    .local v3, offx:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int v4, v3, v5

    .line 343
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 344
    .local v1, height:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 345
    .local v2, icon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    .local v0, c:Landroid/graphics/Canvas;
    int-to-float v5, v3

    invoke-virtual {v0, p1, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    iget-object v5, p0, Lcom/mediatek/filemanager/IconManager;->mIconsHead:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 348
    return-object v2
.end method

.method public getDefaultIcon(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "resId"

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mDefIcons:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mDefIcons:Ljava/util/HashMap;

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mDefIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mDefIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #icon:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 372
    .restart local v0       #icon:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    if-nez v0, :cond_2

    .line 367
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "decodeResource()fail, or invalid resId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mDefIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getExternalIcon(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "resId"

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mSdcard2Icons:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mSdcard2Icons:Ljava/util/HashMap;

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mSdcard2Icons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mSdcard2Icons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #icon:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 324
    .restart local v0       #icon:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 321
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/IconManager;->getDefaultIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/filemanager/IconManager;->createExternalIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mSdcard2Icons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIcon(Landroid/content/res/Resources;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "res"
    .parameter "fileInfo"
    .parameter "service"

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, icon:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/mediatek/filemanager/MountPointManager;->isExternalFile(Lcom/mediatek/filemanager/FileInfo;)Z

    move-result v3

    .line 223
    .local v3, isExternal:Z
    const-string v5, "IconManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIcon,isExternal ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    invoke-direct {p0, p2, v3}, Lcom/mediatek/filemanager/IconManager;->getFolderIcon(Lcom/mediatek/filemanager/FileInfo;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    :cond_0
    :goto_0
    return-object v1

    .line 227
    :cond_1
    invoke-virtual {p2, p3}, Lcom/mediatek/filemanager/FileInfo;->getFileMimeType(Lcom/mediatek/filemanager/service/FileManagerService;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, mimeType:Ljava/lang/String;
    const-string v5, "IconManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIcon imimeType ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {p3, v4}, Lcom/mediatek/filemanager/IconManager;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, iconId:I
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    invoke-static {v4}, Lcom/mediatek/drm/OmaDrmUtils;->getMediaActionType(Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, actionId:I
    const-string v5, "IconManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIcon isDrmFile & actionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 235
    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v5

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v0, v2}, Lcom/mediatek/filemanager/utils/DrmManager;->overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {p0, v1}, Lcom/mediatek/filemanager/IconManager;->createExternalIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    .end local v0           #actionId:I
    :cond_2
    if-nez v1, :cond_0

    .line 243
    invoke-direct {p0, v2, v3}, Lcom/mediatek/filemanager/IconManager;->getFileIcon(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mRes:Landroid/content/res/Resources;

    .line 286
    :try_start_0
    const-class v1, Lcom/mediatek/filemanager/ext/IIconExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/ext/IIconExtension;

    iput-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    invoke-interface {v1, p2}, Lcom/mediatek/filemanager/ext/IIconExtension;->createSystemFolder(Ljava/lang/String;)V

    .line 292
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/filemanager/ext/DefaultIconExtension;

    invoke-direct {v1}, Lcom/mediatek/filemanager/ext/DefaultIconExtension;-><init>()V

    iput-object v1, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    goto :goto_0
.end method

.method public isSystemFolder(Lcom/mediatek/filemanager/FileInfo;)Z
    .locals 2
    .parameter "fileInfo"

    .prologue
    .line 301
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    if-nez v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/filemanager/IconManager;->mExt:Lcom/mediatek/filemanager/ext/IIconExtension;

    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/filemanager/ext/IIconExtension;->isSystemFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
