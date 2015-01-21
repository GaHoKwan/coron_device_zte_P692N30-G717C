.class public Lcom/mediatek/mtklogger/utils/ExceptionInfo;
.super Ljava/lang/Object;
.source "ExceptionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DISCRIPTION_INDEX:I = 0x6

.field private static final LEVEL_INDEX:I = 0x5

.field private static final PRE_FILE_SIZE:I = 0x400

.field private static final PROCESS_INDEX:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Syslog_taglog"

.field private static final TIME_INDEX:I = 0x8

.field private static final TYPE_INDEX:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBuildVersion:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDiscription:Ljava/lang/String;

.field private mLevel:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mToolVersion:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mToolVersion:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmBuildVersion(Ljava/lang/String;)V

    .line 43
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmDeviceName(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getmBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mBuildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getmDiscription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mDiscription:Ljava/lang/String;

    return-object v0
.end method

.method public getmLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getmPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmProcess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getmTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getmToolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mToolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public initFieldsFromZZ(Ljava/lang/String;)V
    .locals 10
    .parameter "zzPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 56
    const-string v6, "Syslog_taglog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ZZ_INTERNAL\'s Path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v5, zzFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    new-instance v6, Ljava/io/IOException;

    const-string v7, "ZZ_INTERNAL file is not exist!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 61
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    new-instance v6, Ljava/io/IOException;

    const-string v7, "ZZ_INTERNAL file is not a file!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 64
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    .local v2, fis:Ljava/io/FileInputStream;
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 66
    .local v1, buf:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 68
    .local v3, len:I
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 69
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v9, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, arr:[Ljava/lang/String;
    array-length v6, v0

    const/16 v7, 0xa

    if-eq v6, v7, :cond_3

    .line 74
    new-instance v6, Ljava/io/IOException;

    const-string v7, "fields count in ZZ_INTERNAL file are not 10"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :cond_3
    aget-object v6, v0, v9

    invoke-virtual {p0, v6}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmType(Ljava/lang/String;)V

    .line 78
    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {p0, v6}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmLevel(Ljava/lang/String;)V

    .line 79
    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-virtual {p0, v6}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmDiscription(Ljava/lang/String;)V

    .line 80
    const/4 v6, 0x7

    aget-object v6, v0, v6

    invoke-virtual {p0, v6}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmProcess(Ljava/lang/String;)V

    .line 81
    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {p0, v6}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmTime(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setmBuildVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "buildVersion"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mBuildVersion:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setmDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mDeviceName:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setmDiscription(Ljava/lang/String;)V
    .locals 0
    .parameter "discription"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mDiscription:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setmLevel(Ljava/lang/String;)V
    .locals 3
    .parameter "level"

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "FATAL"

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mLevel:Ljava/lang/String;

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "EXCEPTION"

    iput-object v0, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mLevel:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_1
    const-string v0, "Syslog_taglog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLevel is not a valid value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mLevel:Ljava/lang/String;

    goto :goto_0
.end method

.method public setmPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mPath:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setmProcess(Ljava/lang/String;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mProcess:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setmTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mTime:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setmToolVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "toolVersion"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mToolVersion:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setmType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mType:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Device Name]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Build Version]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mBuildVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Exception Level]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Exception Class]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Exception Type]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mDiscription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Process]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Datetime]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->mTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
