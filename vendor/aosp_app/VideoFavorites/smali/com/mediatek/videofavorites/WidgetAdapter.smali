.class public Lcom/mediatek/videofavorites/WidgetAdapter;
.super Landroid/widget/RemoteViewsService;
.source "WidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String; = null

.field private static final CONTACT_UPDATE_DATA_DELAY:I = 0x7d0

.field public static final KEY_NAME:Ljava/lang/String; = "com.mediatek.videofavorites.NAME"

.field public static final LARGE_MAX_NUM_VIDEOS:I = 0x4

.field private static final MSG_CONTACT_DATA_CHANGED:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROVIDER_KEY_NAME:Ljava/lang/String; = "name"

.field private static final SORT_ASCENDING:Ljava/lang/String; = " ASC"

.field private static final SORT_DESCENDING:Ljava/lang/String; = " DESC"

.field private static final TAG:Ljava/lang/String; = "WidgetAdapter"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_uri"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "video_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "storage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/videofavorites/WidgetAdapter;->PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/videofavorites/WidgetAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 86
    new-instance v0, Lcom/mediatek/videofavorites/WidgetAdapter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/WidgetAdapter$1;-><init>(Lcom/mediatek/videofavorites/WidgetAdapter;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter;->mHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/videofavorites/WidgetAdapter;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter;->mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/videofavorites/WidgetAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/mediatek/videofavorites/WidgetAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/videofavorites/WidgetAdapter;Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/videofavorites/WidgetAdapter;->getThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/mediatek/videofavorites/WidgetAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/videofavorites/WidgetAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetAdapter;->sendRefreshBroadcast()V

    return-void
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 146
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v5, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 147
    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v10, v11, v12}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 161
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 164
    :goto_0
    if-nez v0, :cond_0

    .line 165
    const/4 v10, 0x0

    .line 179
    :goto_1
    return-object v10

    .line 148
    :catch_0
    move-exception v1

    .line 150
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v10, "WidgetAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 153
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 158
    .local v6, rex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v10, "WidgetAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Runtime Exception occure getting thumbnal: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    const/4 v0, 0x0

    .line 161
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v6           #rex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v10

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 170
    .local v9, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 171
    .local v3, height:I
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 172
    .local v4, max:I
    const/16 v10, 0x200

    if-le v4, v10, :cond_1

    .line 173
    const/high16 v10, 0x4400

    int-to-float v11, v4

    div-float v7, v10, v11

    .line 174
    .local v7, scale:F
    int-to-float v10, v9

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 175
    .local v8, w:I
    int-to-float v10, v3

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 176
    .local v2, h:I
    const/4 v10, 0x1

    invoke-static {v0, v8, v2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v2           #h:I
    .end local v7           #scale:F
    .end local v8           #w:I
    :cond_1
    move-object v10, v0

    .line 179
    goto :goto_1
.end method

.method private getSourceRect(IIII)Landroid/graphics/Rect;
    .locals 9
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 112
    int-to-float v6, p1

    int-to-float v7, p2

    div-float v3, v6, v7

    .line 113
    .local v3, rSrc:F
    int-to-float v6, p3

    int-to-float v7, p4

    div-float v2, v6, v7

    .line 117
    .local v2, rMax:F
    const/4 v0, 0x0

    .line 118
    .local v0, marginX:I
    const/4 v1, 0x0

    .line 122
    .local v1, marginY:I
    cmpg-float v6, v3, v2

    if-gez v6, :cond_0

    .line 123
    move v5, p1

    .line 124
    .local v5, targetWidth:I
    mul-int v6, v5, p4

    div-int v4, v6, p3

    .line 125
    .local v4, targetHeight:I
    sub-int v6, p2, v4

    div-int/lit8 v1, v6, 0x2

    .line 132
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v0, v5

    add-int v8, v1, v4

    invoke-direct {v6, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    .line 127
    .end local v4           #targetHeight:I
    .end local v5           #targetWidth:I
    :cond_0
    move v4, p2

    .line 128
    .restart local v4       #targetHeight:I
    mul-int v6, v4, p3

    div-int v5, v6, p4

    .line 129
    .restart local v5       #targetWidth:I
    sub-int v6, p1, v5

    div-int/lit8 v0, v6, 0x2

    goto :goto_0
.end method

.method private getThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "resolver"
    .parameter "uri"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 189
    if-nez p2, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const-string v8, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 194
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 196
    const-string v8, "WidgetAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    .end local v3           #f:Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/videofavorites/Storage;->isAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 200
    const-string v8, "WidgetAdapter"

    const-string v9, "Storage is not ready"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/mediatek/videofavorites/WidgetAdapter;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 206
    .local v7, videoThumb:Landroid/graphics/Bitmap;
    if-nez v7, :cond_3

    .line 207
    const-string v8, "WidgetAdapter"

    const-string v9, "bitmap create failed!!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 212
    .local v6, srcWidth:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 214
    .local v4, srcHeight:I
    invoke-direct {p0, v6, v4, p3, p4}, Lcom/mediatek/videofavorites/WidgetAdapter;->getSourceRect(IIII)Landroid/graphics/Rect;

    move-result-object v5

    .line 215
    .local v5, srcRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 216
    .local v2, dstRect:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p3, p4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 218
    const-string v8, "WidgetAdapter"

    const-string v9, "bitmap create failed!!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 221
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 222
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v5, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 224
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private sendRefreshBroadcast()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.videofavorites.REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .parameter "intent"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter;->mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    if-nez v1, :cond_0

    .line 101
    new-instance v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;

    const/high16 v1, 0x7f03

    invoke-direct {v0, p0, v1}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;-><init>(Lcom/mediatek/videofavorites/WidgetAdapter;I)V

    .line 102
    .local v0, vf:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->init(Landroid/content/Context;)V

    .line 103
    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter;->mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 105
    .end local v0           #vf:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetAdapter;->mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    return-object v1
.end method
