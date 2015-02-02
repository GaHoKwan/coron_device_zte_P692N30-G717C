.class public Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$1;,
        Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;
    }
.end annotation


# static fields
.field private static final DEFALT_FORMAT:I = 0x2

.field private static final DEFAULT_CHANNEL:I = 0x10

.field private static final DEFAULT_SAMPLE_RATE:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"


# instance fields
.field private mAmplitude:I

.field private mBitsPerSample:S

.field private mBuffer:[B

.field private mBufferSizeInBytes:I

.field private mChannels:S

.field private mOutputFileName:Ljava/lang/String;

.field private mOutputFileWriter:Ljava/io/RandomAccessFile;

.field private mRecordSize:I

.field private mRecordThread:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecording:Z

.field private mSampleRate:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "audioSource"

    .prologue
    .line 45
    const/16 v0, 0x1f40

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;-><init>(IIII)V

    .line 46
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordSize:I

    .line 40
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mAmplitude:I

    .line 49
    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I

    .line 51
    const-string v0, "AudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinBufferSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I

    .line 53
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 56
    if-ne p3, v7, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mChannels:S

    .line 62
    :goto_0
    if-ne p4, v6, :cond_1

    .line 63
    iput-short v7, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBitsPerSample:S

    .line 68
    :goto_1
    iput p2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mSampleRate:I

    .line 69
    return-void

    .line 59
    :cond_0
    iput-short v6, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mChannels:S

    goto :goto_0

    .line 65
    :cond_1
    const/16 v0, 0x8

    iput-short v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBitsPerSample:S

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Landroid/media/AudioRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecording:Z

    return v0
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I

    return v0
.end method

.method static synthetic access$500(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Ljava/io/RandomAccessFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$612(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-short v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBitsPerSample:S

    return v0
.end method

.method static synthetic access$800(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mAmplitude:I

    return v0
.end method

.method static synthetic access$802(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mAmplitude:I

    return p1
.end method


# virtual methods
.method public prepare()V
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileName:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    .line 81
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 82
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 85
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const-string v2, "fmt "

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 90
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 92
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mChannels:S

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 94
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 96
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mSampleRate:I

    iget-short v3, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBitsPerSample:S

    mul-int/2addr v2, v3

    iget-short v3, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mChannels:S

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 99
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mChannels:S

    iget-short v3, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBitsPerSample:S

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 102
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBitsPerSample:S

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 103
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_0
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B

    .line 114
    :cond_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "AudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "output file not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AudioRecorder"

    const-string v2, "error to write record to file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 152
    const-string v1, "AudioRecorder"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AudioRecorder"

    const-string v2, "I/O exception occured while closing output file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "AudioRecorder"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecording:Z

    .line 120
    new-instance v0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;-><init>(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$1;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordThread:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;

    .line 121
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordThread:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->start()V

    .line 123
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 126
    const-string v1, "AudioRecorder"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordThread:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecording:Z

    .line 129
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordThread:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;

    invoke-virtual {v1}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->interrupt()V

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordSize:I

    add-int/lit8 v2, v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 141
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecordSize:I

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 144
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :cond_0
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "AudioRecorder"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AudioRecorder"

    const-string v2, "I/O exception occured while closing output file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
