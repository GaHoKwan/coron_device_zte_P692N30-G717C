.class public Lcom/android/gallery3d/filtershow/cache/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Gallery2/ImageLoader"

.field static final MAX_BITMAP_DIM:I = 0x800

.field public static final ORI_FLIP_HOR:I = 0x2

.field public static final ORI_FLIP_VERT:I = 0x4

.field public static final ORI_NORMAL:I = 0x1

.field public static final ORI_ROTATE_180:I = 0x3

.field public static final ORI_ROTATE_270:I = 0x8

.field public static final ORI_ROTATE_90:I = 0x6

.field public static final ORI_TRANSPOSE:I = 0x5

.field public static final ORI_TRANSVERSE:I = 0x7

.field private static mZoomOrientation:I


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

.field private mContext:Landroid/content/Context;

.field private mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

.field private final mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingFinish:Z

.field private mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mOrientation:I

.field private mOriginalBitmapLarge:Landroid/graphics/Bitmap;

.field private mOriginalBitmapSmall:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mUri:Landroid/net/Uri;

.field private mWarnListenersRunnable:Ljava/lang/Runnable;

.field private final mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V
    .locals 3
    .parameter "activity"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    .line 62
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 63
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 64
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 67
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 68
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    .line 70
    iput v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    .line 71
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 73
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 75
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingFinish:Z

    .line 86
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 87
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 89
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 376
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 96
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 98
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 270
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 137
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientationFromPath(Ljava/lang/String;)I

    move-result v12

    .line 195
    :goto_0
    return v12

    .line 141
    :cond_0
    const/4 v6, 0x0

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v11

    .line 151
    .local v11, ori:I
    sparse-switch v11, :sswitch_data_0

    .line 157
    const/4 v12, -0x1

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 152
    :sswitch_0
    const/4 v12, 0x1

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 153
    :sswitch_1
    const/4 v12, 0x6

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 154
    :sswitch_2
    const/16 v12, 0x8

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 155
    :sswitch_3
    const/4 v12, 0x3

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 160
    .end local v11           #ori:I
    :cond_1
    const/4 v12, -0x1

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v7

    .line 163
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const/4 v12, 0x0

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 164
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 165
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const/4 v12, 0x0

    .line 195
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 166
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 167
    .local v7, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 168
    .local v12, orientation:I
    if-eqz p1, :cond_4

    :try_start_1
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const/4 v10, 0x0

    .line 172
    .local v10, is:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 173
    invoke-static {v10}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v12

    .line 174
    const-string v0, "Gallery2/ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "come here,oritation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 179
    if-eqz v10, :cond_2

    .line 181
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 195
    .end local v10           #is:Ljava/io/InputStream;
    :cond_2
    :goto_1
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 182
    .restart local v10       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v9

    .line 183
    .local v9, e2:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    const-string v0, "Gallery2/ImageLoader"

    const-string v1, "getOrientation: exception when closing InputStream "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 195
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #e2:Ljava/io/IOException;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #orientation:I
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 175
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v12       #orientation:I
    :catch_4
    move-exception v8

    .line 176
    .local v8, e1:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 179
    if-eqz v10, :cond_2

    .line 181
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 182
    :catch_5
    move-exception v9

    .line 183
    .restart local v9       #e2:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    const-string v0, "Gallery2/ImageLoader"

    const-string v1, "getOrientation: exception when closing InputStream "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 179
    .end local v8           #e1:Ljava/io/FileNotFoundException;
    .end local v9           #e2:Ljava/io/IOException;
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_3

    .line 181
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 185
    :cond_3
    :goto_2
    :try_start_9
    throw v0

    .line 182
    :catch_6
    move-exception v9

    .line 183
    .restart local v9       #e2:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    const-string v1, "Gallery2/ImageLoader"

    const-string v2, "getOrientation: exception when closing InputStream "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    .end local v9           #e2:Ljava/io/IOException;
    .end local v10           #is:Ljava/io/InputStream;
    :cond_4
    const-string v0, "Gallery2/ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrientation: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot fetch orientation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static getOrientationFromPath(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 200
    const/4 v2, -0x1

    .line 202
    .local v2, orientation:I
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, EXIF:Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 208
    .end local v0           #EXIF:Landroid/media/ExifInterface;
    :goto_0
    return v2

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getZoomOrientation()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return v0
.end method

.method private loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "uri"
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 278
    const/4 v2, 0x0

    .line 280
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 281
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 282
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 288
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 290
    .end local v0           #decoder:Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    return-object v3

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v4, "Gallery2/ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 285
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method

.method private loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "uri"
    .parameter "size"

    .prologue
    .line 295
    const/4 v3, 0x0

    .line 297
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 298
    const-string v9, "Gallery2/ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loading uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 301
    .local v5, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    const/4 v9, 0x0

    invoke-static {v3, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 304
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 305
    .local v8, width_tmp:I
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 307
    .local v2, height_tmp:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 309
    const/4 v7, 0x1

    .line 311
    .local v7, scale:I
    :goto_0
    const/16 v9, 0x800

    if-gt v8, v9, :cond_2

    const/16 v9, 0x800

    if-gt v2, v9, :cond_2

    .line 312
    div-int/lit8 v9, v8, 0x2

    move/from16 v0, p2

    if-lt v9, v0, :cond_0

    div-int/lit8 v9, v2, 0x2

    move/from16 v0, p2

    if-ge v9, v0, :cond_2

    .line 322
    :cond_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 323
    .local v6, o2:Landroid/graphics/BitmapFactory$Options;
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 325
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 326
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 327
    const/4 v9, 0x0

    invoke-static {v3, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 330
    .local v4, mbitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    if-nez v9, :cond_1

    .line 331
    const-wide/high16 v9, 0x3ff0

    const-wide/high16 v11, 0x4000

    int-to-double v13, v7

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double/2addr v9, v11

    double-to-float v9, v9

    const/4 v10, 0x1

    invoke-static {v4, v9, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 341
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 343
    .end local v2           #height_tmp:I
    .end local v4           #mbitmap:Landroid/graphics/Bitmap;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #scale:I
    .end local v8           #width_tmp:I
    :goto_1
    return-object v4

    .line 316
    .restart local v2       #height_tmp:I
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v7       #scale:I
    .restart local v8       #width_tmp:I
    :cond_2
    :try_start_1
    div-int/lit8 v8, v8, 0x2

    .line 317
    div-int/lit8 v2, v2, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 318
    mul-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 334
    .end local v2           #height_tmp:I
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #scale:I
    .end local v8           #width_tmp:I
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v9, "Gallery2/ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[loadScaledBitmap] out of memory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 343
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 336
    :catch_1
    move-exception v1

    .line 337
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v9, "Gallery2/ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 338
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    throw v9
.end method

.method public static rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "ori"

    .prologue
    const/high16 v10, 0x4387

    const/high16 v6, 0x42b4

    const/high16 v4, 0x3f80

    const/high16 v2, -0x4080

    const/high16 v3, 0x4000

    .line 223
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 224
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 225
    .local v9, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 226
    .local v7, h:I
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 230
    :cond_0
    move v8, v9

    .line 231
    .local v8, tmp:I
    move v9, v7

    .line 232
    move v7, v8

    .line 234
    .end local v8           #tmp:I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 263
    .end local p0
    :goto_0
    return-object p0

    .line 236
    .restart local p0
    :pswitch_0
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 263
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 239
    :pswitch_1
    const/high16 v0, 0x4334

    int-to-float v1, v9

    div-float/2addr v1, v3

    int-to-float v2, v7

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 242
    :pswitch_2
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 245
    :pswitch_3
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 248
    :pswitch_4
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 251
    :pswitch_5
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 252
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 255
    :pswitch_6
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 256
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private updateBitmaps()V
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 216
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    sput v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/cache/Cache;->setOriginalBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/cache/Cache;->setOriginalBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->warnListeners()V

    .line 220
    return-void
.end method

.method private warnListeners()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "imageShow"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 370
    return-void
.end method

.method public getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public getBackgroundBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resources"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 348
    const v0, 0x7f02003f

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    return-object v0
.end method

.method public getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "caller"
    .parameter "imagePreset"
    .parameter "hiRes"

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingFinish:Z

    if-nez v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 420
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, filteredImage:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_3

    .line 430
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->get(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    :goto_1
    if-nez v0, :cond_2

    .line 436
    if-eqz p3, :cond_4

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->prepare(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 438
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 444
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 432
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->get(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/filtershow/cache/Cache;->prepare(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 441
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    goto :goto_2
.end method

.method public getOriginalBitmapLarge()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBitmapSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScaleOneImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "caller"
    .parameter "imagePreset"
    .parameter "bounds"
    .parameter "force"

    .prologue
    .line 391
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 392
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-virtual {v3, p2, p3}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->getImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v3, p3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_1

    .line 397
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 398
    .local v1, bmp2:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getScaleFactor()F

    move-result v2

    .line 399
    .local v2, scaleFactor:F
    const/high16 v3, 0x3f80

    invoke-virtual {p2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 400
    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 401
    invoke-virtual {p2, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 402
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-virtual {v3, p2, p3, v1}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->setImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 403
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 408
    .end local v1           #bmp2:Landroid/graphics/Bitmap;
    .end local v2           #scaleFactor:F
    :goto_0
    return-object v1

    .line 407
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v0

    .line 408
    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getXmpObject()Lcom/adobe/xmp/XMPMeta;
    .locals 4

    .prologue
    .line 481
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 482
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 484
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Landroid/net/Uri;I)Z
    .locals 3
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 111
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 112
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    .line 113
    const/16 v1, 0xa0

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 114
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 120
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->updateBitmaps()V

    .line 122
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingFinish:Z

    .line 123
    const-string v1, "Gallery2/ImageLoader"

    const-string v2, "loadBitmap(): loading finish"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public queryLightCycle360()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 495
    const/4 v5, 0x0

    .line 497
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 498
    invoke-static {v5}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v6

    .line 499
    .local v6, meta:Lcom/adobe/xmp/XMPMeta;
    if-nez v6, :cond_1

    .line 531
    if-eqz v5, :cond_0

    .line 533
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 536
    .end local v6           #meta:Lcom/adobe/xmp/XMPMeta;
    :cond_0
    :goto_0
    return v9

    .line 534
    .restart local v6       #meta:Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v2

    .line 535
    .local v2, e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Lcom/adobe/xmp/XMPMeta;->getPacketHeader()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v7

    .line 504
    .local v7, name:Ljava/lang/String;
    :try_start_3
    const-string v8, "http://ns.google.com/photos/1.0/panorama/"

    .line 505
    .local v8, namespace:Ljava/lang/String;
    const-string v1, "GPano:CroppedAreaImageWidthPixels"

    .line 506
    .local v1, cropWidthName:Ljava/lang/String;
    const-string v4, "GPano:FullPanoWidthPixels"

    .line 508
    .local v4, fullWidthName:Ljava/lang/String;
    invoke-interface {v6, v8, v1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v10

    if-nez v10, :cond_2

    .line 531
    if-eqz v5, :cond_0

    .line 533
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 534
    :catch_1
    move-exception v2

    .line 535
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :try_start_5
    invoke-interface {v6, v8, v4}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    move-result v10

    if-nez v10, :cond_3

    .line 531
    if-eqz v5, :cond_0

    .line 533
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 534
    :catch_2
    move-exception v2

    .line 535
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_7
    invoke-interface {v6, v8, v1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 516
    .local v0, cropValue:Ljava/lang/Integer;
    invoke-interface {v6, v8, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 520
    .local v3, fullValue:Ljava/lang/Integer;
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 521
    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v9

    .line 531
    if-eqz v5, :cond_0

    .line 533
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 534
    :catch_3
    move-exception v2

    .line 535
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    if-eqz v5, :cond_0

    .line 533
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 534
    :catch_4
    move-exception v2

    .line 535
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    .end local v0           #cropValue:Ljava/lang/Integer;
    .end local v1           #cropWidthName:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fullValue:Ljava/lang/Integer;
    .end local v4           #fullWidthName:Ljava/lang/String;
    .end local v8           #namespace:Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 531
    .local v2, e:Lcom/adobe/xmp/XMPException;
    if-eqz v5, :cond_0

    .line 533
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_0

    .line 534
    :catch_6
    move-exception v2

    .line 535
    .local v2, e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #meta:Lcom/adobe/xmp/XMPMeta;
    .end local v7           #name:Ljava/lang/String;
    :catch_7
    move-exception v2

    .line 531
    .local v2, e:Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_0

    .line 533
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 534
    :catch_8
    move-exception v2

    .line 535
    .local v2, e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 531
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_5

    .line 533
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 536
    :cond_5
    :goto_1
    throw v9

    .line 534
    :catch_9
    move-exception v2

    .line 535
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "Gallery2/ImageLoader"

    const-string v11, "queryLightCycle360: exception when closing InputStream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public quitHandlerThread()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    check-cast v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->quitHandlerThread()V

    .line 543
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    check-cast v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->quitHandlerThread()V

    .line 544
    return-void
.end method

.method public resetImageForPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "imagePreset"
    .parameter "caller"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mHiresCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mCache:Lcom/android/gallery3d/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/cache/Cache;->reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 454
    return-void
.end method

.method public saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 5
    .parameter "preset"
    .parameter "filterShowActivity"
    .parameter "destination"

    .prologue
    const/4 v4, 0x1

    .line 458
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsHighQuality(Z)V

    .line 459
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 460
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    new-instance v3, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;

    invoke-direct {v3, p0, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V

    new-array v1, v4, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 469
    return-void
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 473
    return-void
.end method
