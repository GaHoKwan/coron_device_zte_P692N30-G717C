.class public Lcom/itextpdf/text/pdf/MappedRandomAccessFile;
.super Ljava/lang/Object;
.source "MappedRandomAccessFile.java"


# static fields
.field private static final BUFSIZE:I = 0x40000000


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private mappedBuffers:[Ljava/nio/MappedByteBuffer;

.field private pos:J

.field private size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 81
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->init(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel$MapMode;)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->init(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel$MapMode;)V

    goto :goto_0
.end method

.method public static clean(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .parameter "buffer"

    .prologue
    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    :cond_0
    const/4 v1, 0x0

    .line 273
    :goto_0
    return v1

    .line 255
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/MappedRandomAccessFile$1;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile$1;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 273
    .local v0, b:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private init(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel$MapMode;)V
    .locals 13
    .parameter "channel"
    .parameter "mapMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 104
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->size:J

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    .line 106
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->size:J

    const-wide/32 v9, 0x40000000

    div-long/2addr v0, v9

    long-to-int v1, v0

    iget-wide v9, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->size:J

    const-wide/32 v11, 0x40000000

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int v8, v1, v0

    .line 109
    .local v8, requiredBuffers:I
    new-array v0, v8, [Ljava/nio/MappedByteBuffer;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    .line 111
    const/4 v7, 0x0

    .line 112
    .local v7, index:I
    const-wide/16 v2, 0x0

    .local v2, offset:J
    :goto_1
    :try_start_0
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->size:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 113
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->size:J

    sub-long/2addr v0, v2

    const-wide/32 v9, 0x40000000

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 114
    .local v4, size2:J
    iget-object v9, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    aput-object v0, v9, v7

    .line 115
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 112
    const-wide/32 v0, 0x40000000

    add-long/2addr v2, v0

    goto :goto_1

    .line 106
    .end local v2           #offset:J
    .end local v4           #size2:J
    .end local v7           #index:I
    .end local v8           #requiredBuffers:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    .restart local v2       #offset:J
    .restart local v7       #index:I
    .restart local v8       #requiredBuffers:I
    :cond_1
    if-eq v7, v8, :cond_2

    .line 119
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Should never happen - "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " != "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :catch_0
    move-exception v6

    .line 122
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->close()V

    .line 123
    throw v6

    .line 124
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 125
    .local v6, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->close()V

    .line 126
    throw v6

    .line 129
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->clean(Ljava/nio/ByteBuffer;)Z

    .line 227
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    aput-object v2, v1, v0

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 233
    :cond_2
    iput-object v2, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 234
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->close()V

    .line 243
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 244
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->size:J

    return-wide v0
.end method

.method public read()I
    .locals 9

    .prologue
    const/4 v3, -0x1

    .line 144
    :try_start_0
    iget-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    const-wide/32 v7, 0x40000000

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 145
    .local v2, mapN:I
    iget-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    const-wide/32 v7, 0x40000000

    rem-long/2addr v5, v7

    long-to-int v4, v5

    .line 147
    .local v4, offN:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    array-length v5, v5

    if-lt v2, v5, :cond_1

    .line 159
    .end local v2           #mapN:I
    .end local v4           #offN:I
    :cond_0
    :goto_0
    return v3

    .line 150
    .restart local v2       #mapN:I
    .restart local v4       #offN:I
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v0

    .line 154
    .local v0, b:B
    iget-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    and-int/lit16 v3, v0, 0xff

    .line 157
    .local v3, n:I
    goto :goto_0

    .line 158
    .end local v0           #b:B
    .end local v2           #mapN:I
    .end local v3           #n:I
    .end local v4           #offN:I
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/nio/BufferUnderflowException;
    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .parameter "bytes"
    .parameter "off"
    .parameter "len"

    .prologue
    const-wide/32 v7, 0x40000000

    .line 171
    iget-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 172
    .local v2, mapN:I
    iget-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    rem-long/2addr v5, v7

    long-to-int v3, v5

    .line 173
    .local v3, offN:I
    const/4 v4, 0x0

    .line 175
    .local v4, totalRead:I
    :goto_0
    if-ge v4, p3, :cond_0

    .line 176
    iget-object v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 192
    :cond_0
    if-nez v4, :cond_1

    const/4 v4, -0x1

    .end local v4           #totalRead:I
    :cond_1
    return v4

    .line 178
    .restart local v4       #totalRead:I
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->mappedBuffers:[Ljava/nio/MappedByteBuffer;

    aget-object v1, v5, v2

    .line 179
    .local v1, currentBuffer:Ljava/nio/MappedByteBuffer;
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 181
    invoke-virtual {v1, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v5

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    .local v0, bytesFromThisBuffer:I
    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 184
    add-int/2addr p2, v0

    .line 185
    iget-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    .line 186
    add-int/2addr v4, v0

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 189
    const/4 v3, 0x0

    .line 191
    goto :goto_0
.end method

.method public seek(J)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/itextpdf/text/pdf/MappedRandomAccessFile;->pos:J

    .line 209
    return-void
.end method
