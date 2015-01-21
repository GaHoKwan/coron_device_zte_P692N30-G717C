.class public Lcom/mediatek/gallery3d/videowriter/FileWriter;
.super Ljava/lang/Object;
.source "FileWriter.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mFileChannel:Ljava/nio/channels/FileChannel;

.field private static mHeaderBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "Gallery2/FileWriter"

    sput-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    .line 16
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 3

    .prologue
    .line 73
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v2, "file writer close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 77
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v2, "file writer close error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCurBufPos()I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public static openFile(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 19
    sget-object v2, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :try_start_0
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 25
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sput-object v2, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .end local v1           #file:Ljava/io/File;
    :goto_0
    sget-object v2, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 32
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v3, "openFile: file not found exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v3, "openFile error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setBufferData(II)V
    .locals 2
    .parameter "pos"
    .parameter "data"

    .prologue
    .line 39
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 40
    .local v0, curPos:I
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 41
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 43
    return-void
.end method

.method public static setFileData(II)V
    .locals 5
    .parameter "pos"
    .parameter "data"

    .prologue
    .line 46
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 49
    :try_start_0
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mFileChannel:Ljava/nio/channels/FileChannel;

    sget-object v2, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v2, "set file data error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeBitStreamToFile([BI)V
    .locals 4
    .parameter "outData"
    .parameter "length"

    .prologue
    .line 101
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_0

    .line 102
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v2, "FileChannel is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 105
    :cond_0
    array-length v1, p0

    if-eq v1, p1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 109
    :cond_1
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBitStream,length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v2, "write bit stream error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeBufToFile()V
    .locals 4

    .prologue
    .line 57
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v2, "FileChannel is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write buf to file,lenght:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 65
    :try_start_0
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mFileChannel:Ljava/nio/channels/FileChannel;

    sget-object v2, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 67
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v1, Lcom/mediatek/gallery3d/videowriter/FileWriter;->TAG:Ljava/lang/String;

    const-string v2, "write buf to file error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static writeBytes([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 85
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    return-void
.end method

.method public static writeInt16(S)V
    .locals 1
    .parameter "data"

    .prologue
    .line 88
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 89
    return-void
.end method

.method public static writeInt32(I)V
    .locals 1
    .parameter "data"

    .prologue
    .line 91
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 92
    return-void
.end method

.method public static writeInt8(B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 82
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 83
    return-void
.end method

.method public static writeString(Ljava/lang/String;I)V
    .locals 2
    .parameter "str"
    .parameter "len"

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/videowriter/FileWriter;->mHeaderBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    return-void
.end method
