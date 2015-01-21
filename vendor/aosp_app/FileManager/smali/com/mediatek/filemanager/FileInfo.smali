.class public Lcom/mediatek/filemanager/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# static fields
.field public static final FILENAME_MAX_LENGTH:I = 0xff

.field public static final MIMETYPE_3GPP2_VIDEO:Ljava/lang/String; = "video/3gpp2"

.field public static final MIMETYPE_3GPP_AUDIO:Ljava/lang/String; = "audio/3gpp"

.field public static final MIMETYPE_3GPP_UNKONW:Ljava/lang/String; = "unknown_3gpp_mimeType"

.field public static final MIMETYPE_3GPP_VIDEO:Ljava/lang/String; = "video/3gpp"

.field public static final MIMETYPE_EXTENSION_NULL:Ljava/lang/String; = "unknown_ext_null_mimeType"

.field public static final MIMETYPE_EXTENSION_UNKONW:Ljava/lang/String; = "unknown_ext_mimeType"

.field public static final MIMETYPE_UNRECOGNIZED:Ljava/lang/String; = "application/zip"

.field public static final MIME_HAED_IMAGE:Ljava/lang/String; = "image/"

.field public static final MIME_HEAD_VIDEO:Ljava/lang/String; = "video/"

.field private static final TAG:Ljava/lang/String; = "FileInfo"


# instance fields
.field private final mAbsolutePath:Ljava/lang/String;

.field private final mFile:Ljava/io/File;

.field private mFileSizeStr:Ljava/lang/String;

.field private mIsChecked:Z

.field private final mIsDir:Z

.field private mLastModifiedTime:J

.field private final mName:Ljava/lang/String;

.field private mParentPath:Ljava/lang/String;

.field private mSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mParentPath:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFileSizeStr:Ljava/lang/String;

    .line 76
    iput-wide v1, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    .line 77
    iput-wide v1, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsChecked:Z

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    .line 97
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mName:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    .line 100
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsDir:Z

    .line 101
    iget-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsDir:Z

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    .line 104
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "absPath"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mParentPath:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFileSizeStr:Ljava/lang/String;

    .line 76
    iput-wide v1, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    .line 77
    iput-wide v1, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsChecked:Z

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    .line 118
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mName:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    .line 120
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsDir:Z

    .line 121
    iget-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsDir:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    .line 124
    :cond_1
    return-void
.end method

.method private getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .parameter "file"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, extension:Ljava/lang/String;
    const-string v3, "FileInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMimeType fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",extension = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-nez v0, :cond_1

    .line 300
    const-string v2, "unknown_ext_null_mimeType"

    .line 317
    :cond_0
    :goto_0
    return-object v2

    .line 303
    :cond_1
    invoke-static {v1}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "FileInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMimeType mimeType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-nez v2, :cond_0

    .line 306
    const-string v2, "unknown_ext_mimeType"

    goto :goto_0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 279
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkDrmApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-static {p0}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, extension:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x1

    .line 285
    .end local v0           #extension:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    .line 382
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 385
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/mediatek/filemanager/FileInfo;

    if-eqz v1, :cond_2

    .line 386
    check-cast p1, Lcom/mediatek/filemanager/FileInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLastModifiedTime()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getFileMimeType(Lcom/mediatek/filemanager/service/FileManagerService;)Ljava/lang/String;
    .locals 4
    .parameter "service"

    .prologue
    .line 222
    const-string v1, "FileInfo"

    const-string v2, "getFileMimeType,service."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/mediatek/filemanager/FileInfo;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "FileInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileMimeType, mimetype is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v1, "FileInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileMimeType, is drm file,mimetype is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileParentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mParentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/filemanager/utils/FileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mParentPath:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mParentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    return-wide v0
.end method

.method public getFileSizeStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFileSizeStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    iget-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/FileUtils;->sizeToString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFileSizeStr:Ljava/lang/String;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFileSizeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getNewModifiedTime()J
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    .line 345
    iget-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    const-string v1, "FileInfo"

    const-string v2, "getShowName..."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->getShowPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, strShowName:Ljava/lang/String;
    const-string v1, "FileInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShowName, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method public getShowParentPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    const-string v0, "FileInfo"

    const-string v1, "getShowParentPath..."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "FileInfo"

    const-string v1, "getShowPath..."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/MountPointManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsChecked:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsDir:Z

    return v0
.end method

.method public isDrmFile()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsDir:Z

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isHideFile()Z
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/mediatek/filemanager/FileInfo;->mIsChecked:Z

    .line 411
    return-void
.end method

.method public updateFileInfo()V
    .locals 4

    .prologue
    .line 430
    const-string v0, "FileInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newModifiedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/filemanager/FileInfo;->mLastModifiedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-boolean v0, p0, Lcom/mediatek/filemanager/FileInfo;->mIsDir:Z

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfo;->mFileSizeStr:Ljava/lang/String;

    .line 434
    const-string v0, "FileInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/filemanager/FileInfo;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method
