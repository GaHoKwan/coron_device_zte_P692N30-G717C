.class public Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final COPY_EXIF_ATTRIBUTES:[Ljava/lang/String; = null

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5f

.field private static final DEFAULT_SAVE_DIRECTORY:Ljava/lang/String; = "EditedOnlinePhotos"

.field private static final FAILED_SAVE:I = -0x2

.field private static final LOGTAG:Ljava/lang/String; = "Gallery2/SaveCopyTask"

.field private static final SPACE_FULL_FAILED_SAVE:I = -0x1

.field private static final SUCCEED_SAVE:I = 0x0

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static mFailedType:I


# instance fields
.field private final callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private final destinationFile:Ljava/io/File;

.field private mNewBitmap:Landroid/graphics/Bitmap;

.field private mOriBitmap:Landroid/graphics/Bitmap;

.field private final saveFileName:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 202
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "sourceUri"
    .parameter "destination"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 272
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 273
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 126
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    .line 128
    if-nez p3, :cond_0

    .line 129
    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    .line 134
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 136
    return-void

    .line 131
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    goto :goto_0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 95
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private copyExif(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .parameter "sourceUri"
    .parameter "destPath"

    .prologue
    const/4 v3, 0x0

    .line 244
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v3

    .line 253
    .local v2, PROJECTION:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {v8, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v8           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 263
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Gallery2/SaveCopyTask"

    const-string v1, "Failed to copy exif"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "sourcePath"
    .parameter "destPath"

    .prologue
    .line 225
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 226
    .local v6, source:Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, dest:Landroid/media/ExifInterface;
    const/4 v5, 0x0

    .line 228
    .local v5, needsSave:Z
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 229
    .local v7, tag:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 231
    const/4 v5, 0x1

    .line 232
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 236
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dest:Landroid/media/ExifInterface;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #needsSave:Z
    .end local v6           #source:Landroid/media/ExifInterface;
    :cond_2
    :goto_1
    return-void

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, ex:Ljava/io/IOException;
    const-string v9, "Gallery2/SaveCopyTask"

    const-string v10, "Failed to copy exif metadata"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, saveDirectory:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #saveDirectory:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EditedOnlinePhotos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .restart local v0       #saveDirectory:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    :cond_2
    return-object v0
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 151
    .local v1, saveDirectory:Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 393
    new-array v0, v1, [Ljava/io/File;

    .line 394
    .local v0, dir:[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 404
    aget-object v1, v0, v3

    return-object v1
.end method

.method public static insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "context"
    .parameter "sourceUri"
    .parameter "file"
    .parameter "saveFileName"

    .prologue
    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 413
    .local v4, now:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "title"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v8, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v8, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 418
    const-string v8, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    const-string v8, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v8, "orientation"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v8, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v8, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v8, "ImageLength"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 429
    .local v2, imageLength:I
    const-string v8, "ImageWidth"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 430
    .local v3, imageWidth:I
    const-string v8, "width"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v8, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #imageLength:I
    .end local v3           #imageWidth:I
    :goto_0
    const/4 v8, 0x3

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "datetaken"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "latitude"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "longitude"

    aput-object v9, v6, v8

    .line 441
    .local v6, projection:[Ljava/lang/String;
    new-instance v8, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;

    invoke-direct {v8, v7}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v6, v8}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 432
    .end local v6           #projection:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 433
    .local v0, ex:Ljava/io/IOException;
    const-string v8, "Gallery2/SaveCopyTask"

    const-string v9, "ExifInterface throws IOException"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadMutableBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 159
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 160
    .local v7, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 161
    .local v3, fd:Ljava/io/FileDescriptor;
    const/4 v0, 0x0

    .line 162
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 163
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 166
    :cond_0
    if-eqz v3, :cond_1

    .line 167
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v3, v8, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :cond_1
    if-eqz v7, :cond_2

    .line 188
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 190
    :cond_2
    if-eqz v0, :cond_3

    .line 191
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 192
    .local v6, orientation:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .end local v6           #orientation:I
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_4

    move-object v8, v0

    .line 197
    :goto_0
    return-object v8

    :cond_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const/16 v5, 0x8

    .line 174
    .local v5, maxTryNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v8, 0x8

    if-ge v4, v8, :cond_5

    .line 176
    :try_start_1
    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 177
    const-string v8, "Gallery2/SaveCopyTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCroppedImage:try for sample size::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    const/4 v8, 0x0

    :try_start_2
    invoke-static {v3, v8, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 184
    :goto_2
    if-eqz v0, :cond_8

    .line 187
    :cond_5
    if-eqz v7, :cond_6

    .line 188
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 190
    :cond_6
    if-eqz v0, :cond_7

    .line 191
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 192
    .restart local v6       #orientation:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .end local v6           #orientation:I
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_9

    move-object v8, v0

    .line 195
    goto :goto_0

    .line 180
    :catch_1
    move-exception v2

    .line 181
    .local v2, e1:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v8, "Gallery2/SaveCopyTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  saveBitmap :out of memory when decoding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    const/4 v0, 0x0

    goto :goto_2

    .line 174
    .end local v2           #e1:Ljava/lang/OutOfMemoryError;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    :cond_9
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 187
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #i:I
    .end local v5           #maxTryNum:I
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_a

    .line 188
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 190
    :cond_a
    if-eqz v0, :cond_b

    .line 191
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 192
    .restart local v6       #orientation:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .end local v6           #orientation:I
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_c

    move-object v8, v0

    .line 195
    goto/16 :goto_0

    .line 197
    :cond_c
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .parameter "context"
    .parameter "sourceUri"
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 378
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 380
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-interface {p3, v6}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    if-eqz v6, :cond_1

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v1

    .line 386
    if-eqz v6, :cond_1

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)Z
    .locals 7
    .parameter "bitmap"
    .parameter "destination"
    .parameter "xmp"

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 77
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 84
    .local v3, result:Z
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 86
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_0
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/gallery3d/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return v3

    .line 79
    .end local v3           #result:Z
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v4, "Gallery2/SaveCopyTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in writing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    const/4 v3, 0x0

    .line 84
    .restart local v3       #result:Z
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #result:Z
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    throw v4

    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 79
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;
    .locals 18
    .parameter "params"

    .prologue
    .line 277
    const/4 v14, 0x0

    aget-object v14, p1, v14

    if-nez v14, :cond_1

    .line 278
    const/4 v12, 0x0

    .line 360
    :cond_0
    :goto_0
    return-object v12

    .line 280
    :cond_1
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground begin!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v6, 0x0

    .line 282
    .local v6, is:Ljava/io/InputStream;
    const/4 v14, 0x0

    aget-object v10, p1, v14

    .line 284
    .local v10, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v14, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 286
    const/4 v14, 0x1

    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 287
    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 288
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->loadMutableBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v7

    .line 289
    .local v7, mBitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 293
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v10, v7}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 312
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 313
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 314
    const/4 v13, 0x0

    .line 315
    .local v13, xmp:Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isPanoramaSafe()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 317
    invoke-static {v6}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v13

    .line 319
    .end local v13           #xmp:Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-static {v1, v14, v13}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)Z

    move-result v11

    .line 320
    .local v11, result:Z
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground: saveBitmap!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-nez v11, :cond_6

    .line 323
    const/4 v14, -0x1

    sput v14, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mFailedType:I

    .line 324
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground: space full!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 325
    const/4 v12, 0x0

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_4

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_5
    if-eqz v6, :cond_0

    .line 357
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, e:Ljava/io/IOException;
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground: exception when closing InputStream "

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v2           #e:Ljava/io/IOException;
    .end local v11           #result:Z
    :catch_1
    move-exception v2

    .line 295
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/16 v8, 0x8

    .line 296
    .local v8, maxTryNum:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/16 v14, 0x8

    if-ge v5, v14, :cond_2

    .line 297
    :try_start_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    iget v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v14, v14, 0x2

    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 299
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->loadMutableBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 301
    const-string v14, "Gallery2/SaveCopyTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doInBackground:getCroppedImage:try for sample size::"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 303
    :try_start_5
    invoke-virtual {v10, v7}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v1

    .line 308
    :goto_2
    if-nez v1, :cond_2

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    :catch_2
    move-exception v3

    .line 305
    .local v3, e1:Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v14, "Gallery2/SaveCopyTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  doInBackground:saveBitmap :out of memory when decoding:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x0

    goto :goto_2

    .line 327
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #e1:Ljava/lang/OutOfMemoryError;
    .end local v5           #i:I
    .end local v8           #maxTryNum:I
    .restart local v11       #result:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Landroid/net/Uri;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 330
    .local v12, uri:Landroid/net/Uri;
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground end!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_7

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_8

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_8
    if-eqz v6, :cond_0

    .line 357
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 358
    :catch_3
    move-exception v2

    .line 359
    .local v2, e:Ljava/io/IOException;
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground: exception when closing InputStream "

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 335
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #mBitmap:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #result:Z
    .end local v12           #uri:Landroid/net/Uri;
    :catch_4
    move-exception v4

    .line 336
    .local v4, ex:Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "Failed to save image!"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    const/4 v14, -0x2

    sput v14, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mFailedType:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 339
    const/4 v12, 0x0

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_9

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_a

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_a
    if-eqz v6, :cond_0

    .line 357
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 358
    :catch_5
    move-exception v2

    .line 359
    .restart local v2       #e:Ljava/io/IOException;
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground: exception when closing InputStream "

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 340
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v2

    .line 341
    .local v2, e:Ljava/lang/Exception;
    :try_start_a
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "Failed to save image!"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v14, -0x2

    sput v14, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mFailedType:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 344
    const/4 v12, 0x0

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_b

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_c

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_c
    if-eqz v6, :cond_0

    .line 357
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 358
    :catch_7
    move-exception v2

    .line 359
    .local v2, e:Ljava/io/IOException;
    const-string v14, "Gallery2/SaveCopyTask"

    const-string v15, "doInBackground: exception when closing InputStream "

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_d

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mOriBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_e

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_e
    if-eqz v6, :cond_f

    .line 357
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 360
    :cond_f
    :goto_3
    throw v14

    .line 358
    :catch_8
    move-exception v2

    .line 359
    .restart local v2       #e:Ljava/io/IOException;
    const-string v15, "Gallery2/SaveCopyTask"

    const-string v16, "doInBackground: exception when closing InputStream "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 367
    const-string v0, "Gallery2/SaveCopyTask"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    sget v1, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mFailedType:I

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;I)V

    .line 371
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
