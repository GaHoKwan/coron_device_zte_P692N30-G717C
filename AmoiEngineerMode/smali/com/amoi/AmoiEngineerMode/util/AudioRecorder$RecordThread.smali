.class Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;


# direct methods
.method private constructor <init>(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;-><init>(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)V

    return-void
.end method

.method private getShort(BB)S
    .locals 1
    .parameter "argB1"
    .parameter "argB2"

    .prologue
    .line 209
    shl-int/lit8 v0, p2, 0x8

    or-int/2addr v0, p1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 168
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$100(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecording:Z
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$200(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$100(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B
    invoke-static {v5}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$300(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBufferSizeInBytes:I
    invoke-static {v6}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$400(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)I

    move-result v6

    invoke-virtual {v4, v5, v7, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    .line 171
    .local v3, readedSize:I
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mRecording:Z
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$200(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 202
    .end local v3           #readedSize:I
    :cond_1
    :goto_0
    const-string v4, "AudioRecorder"

    const-string v5, "RecordThread end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 175
    .restart local v3       #readedSize:I
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mOutputFileWriter:Ljava/io/RandomAccessFile;
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$500(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v4

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B
    invoke-static {v5}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$300(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 176
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    invoke-static {v4, v3}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$612(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;I)I

    .line 179
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBitsPerSample:S
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$700(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 180
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    div-int/lit8 v4, v3, 0x2

    if-ge v2, v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$300(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)[B

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    aget-byte v4, v4, v5

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B
    invoke-static {v5}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$300(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)[B

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->getShort(BB)S

    move-result v0

    .line 182
    .local v0, curSample:S
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mAmplitude:I
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$800(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)I

    move-result v4

    if-le v0, v4, :cond_3

    .line 183
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #setter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mAmplitude:I
    invoke-static {v4, v0}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$802(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;I)I

    .line 180
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v0           #curSample:S
    .end local v2           #i:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 188
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B
    invoke-static {v4}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$300(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)[B

    move-result-object v4

    aget-byte v4, v4, v2

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mAmplitude:I
    invoke-static {v5}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$800(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)I

    move-result v5

    if-le v4, v5, :cond_5

    .line 189
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    iget-object v5, p0, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->this$0:Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;

    #getter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mBuffer:[B
    invoke-static {v5}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$300(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;)[B

    move-result-object v5

    aget-byte v5, v5, v2

    #setter for: Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->mAmplitude:I
    invoke-static {v4, v5}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;->access$802(Lcom/amoi/AmoiEngineerMode/util/AudioRecorder;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/io/IOException;
    const-string v4, "AudioRecorder"

    const-string v5, "error to write record to file"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/util/AudioRecorder$RecordThread;->stop()V

    goto/16 :goto_0

    .line 197
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "AudioRecorder"

    const-string v5, "error in RecordThread"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
