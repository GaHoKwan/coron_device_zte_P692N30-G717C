.class public Lcom/android/mms/TempFileProvider;
.super Landroid/content/ContentProvider;
.source "TempFileProvider.java"


# static fields
.field private static final MMS_SCRAP_SPACE:I = 0x1

.field private static final MMS_SCRAP_SPACE_VIDEO:I = 0x2

.field public static final SCRAP_CONTENT_URI:Landroid/net/Uri;

.field public static final SCRAP_VIDEO_URI:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-string v0, "TempFileProvider"

    sput-object v0, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "content://mms_temp_file/scrapSpace"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://mms_temp_file/scrapSpaceVideo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/TempFileProvider;->SCRAP_VIDEO_URI:Landroid/net/Uri;

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/TempFileProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 46
    sget-object v0, Lcom/android/mms/TempFileProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms_temp_file"

    const-string v2, "scrapSpace"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/android/mms/TempFileProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms_temp_file"

    const-string v2, "scrapSpaceVideo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private cleanScrapFile(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 220
    invoke-static {p1}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    sget-object v2, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScrapPath, delete old file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    sget-object v2, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScrapPath, failed to delete old file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .parameter "sourceFile"
    .parameter "targetFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, inBuff:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 293
    .local v4, outBuff:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    .end local v1           #inBuff:Ljava/io/BufferedInputStream;
    .local v2, inBuff:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 295
    .end local v4           #outBuff:Ljava/io/BufferedOutputStream;
    .local v5, outBuff:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1400

    :try_start_2
    new-array v0, v6, [B

    .line 297
    .local v0, b:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 298
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 302
    .end local v0           #b:[B
    .end local v3           #len:I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5           #outBuff:Ljava/io/BufferedOutputStream;
    .restart local v4       #outBuff:Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2           #inBuff:Ljava/io/BufferedInputStream;
    .restart local v1       #inBuff:Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 304
    :cond_0
    if-eqz v4, :cond_1

    .line 305
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw v6

    .line 300
    .end local v1           #inBuff:Ljava/io/BufferedInputStream;
    .end local v4           #outBuff:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:[B
    .restart local v2       #inBuff:Ljava/io/BufferedInputStream;
    .restart local v3       #len:I
    .restart local v5       #outBuff:Ljava/io/BufferedOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 304
    :cond_3
    if-eqz v5, :cond_4

    .line 305
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 307
    :cond_4
    return-void

    .line 302
    .end local v0           #b:[B
    .end local v2           #inBuff:Ljava/io/BufferedInputStream;
    .end local v3           #len:I
    .end local v5           #outBuff:Ljava/io/BufferedOutputStream;
    .restart local v1       #inBuff:Ljava/io/BufferedInputStream;
    .restart local v4       #outBuff:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v1           #inBuff:Ljava/io/BufferedInputStream;
    .restart local v2       #inBuff:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2           #inBuff:Ljava/io/BufferedInputStream;
    .restart local v1       #inBuff:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static getScrapPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    const-string v0, ".temp.jpg"

    invoke-static {p0, v0}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScrapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getExternalCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 157
    .local v0, mFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getScrapVideoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 238
    const-string v0, ".temp.3gp"

    invoke-static {p0, v0}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScrapVideoUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 245
    invoke-static {p0}, Lcom/android/mms/TempFileProvider;->getScrapVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 250
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTempStoreFd(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .parameter "mode"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, fileName:Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v5, v6

    .line 113
    :goto_0
    return-object v5

    .line 85
    :cond_0
    const/4 v5, 0x0

    .line 88
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 92
    .local v4, parentFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 93
    sget-object v7, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TempFileProvider] tempStoreFd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "does not exist!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 95
    goto :goto_0

    .line 99
    :cond_1
    sget-object v6, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTempStoreFd == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v6, "r"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    const/high16 v3, 0x1000

    .line 107
    .local v3, modeFlags:I
    :goto_1
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 103
    .end local v3           #modeFlags:I
    :cond_2
    const/high16 v3, 0x3c00

    .restart local v3       #modeFlags:I
    goto :goto_1

    .line 109
    .end local v1           #file:Ljava/io/File;
    .end local v3           #modeFlags:I
    .end local v4           #parentFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTempStoreFd: error creating pfd for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isTempFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 214
    const-string v0, ".temp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 8
    .parameter "fileExtension"
    .parameter "uniqueIdentifier"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 178
    invoke-static {p2}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, filePath:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 185
    const-string p1, ""

    .line 189
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, newTempFilePath:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 201
    :cond_1
    :goto_0
    return-object v5

    .line 193
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, newTempFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v4, oldTempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 198
    .local v0, deleted:Z
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public static renameScrapVideoFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 7
    .parameter "fileExtension"
    .parameter "uniqueIdentifier"
    .parameter "context"

    .prologue
    .line 263
    invoke-static {p2}, Lcom/android/mms/TempFileProvider;->getScrapVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, filePath:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 270
    const-string p1, ""

    .line 272
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, newFilePath:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 274
    :cond_1
    const/4 v5, 0x0

    .line 284
    :goto_0
    return-object v5

    .line 276
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, newTempFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v4, oldTempFile:Ljava/io/File;
    :try_start_0
    invoke-static {v4, v3}, Lcom/android/mms/TempFileProvider;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    const-string v6, "TempFileProvider copyFile failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v5, "TempFileProvider copyFile failed"

    const/4 v6, 0x1

    invoke-static {p2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 118
    const-string v0, "*/*"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    sget-object v2, Lcom/android/mms/TempFileProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 129
    .local v1, match:I
    sget-object v2, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    sget-object v2, Lcom/android/mms/TempFileProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFile: uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    return-object v0

    .line 135
    :pswitch_0
    const-string v2, ".temp.jpg"

    invoke-direct {p0, p2, v2}, Lcom/android/mms/TempFileProvider;->getTempStoreFd(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    const-string v2, ".temp.3gp"

    invoke-direct {p0, p2, v2}, Lcom/android/mms/TempFileProvider;->getTempStoreFd(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
