.class public Layt;
.super Ljava/io/RandomAccessFile;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected a:J

.field protected a:Ljava/lang/String;

.field protected a:Z

.field protected a:[B

.field protected b:I

.field protected b:J

.field protected b:Z

.field protected c:I

.field protected c:J

.field protected d:J

.field protected e:J

.field protected f:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Layt;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p2, p3}, Layt;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Layt;->c:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Layt;->a:Z

    .line 102
    iget-object v0, p0, Layt;->a:[B

    invoke-super {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    return v0
.end method

.method private a(JJ)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 240
    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, p3

    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-boolean v0, p0, Layt;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 91
    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-wide v2, p0, Layt;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 92
    iget-wide v0, p0, Layt;->c:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    :cond_0
    iget-object v0, p0, Layt;->a:[B

    iget v1, p0, Layt;->c:I

    invoke-super {p0, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 95
    iput-boolean v4, p0, Layt;->a:Z

    .line 97
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 65
    iput-boolean v2, p0, Layt;->b:Z

    .line 70
    :goto_0
    iput-object p1, p0, Layt;->a:Ljava/lang/String;

    .line 71
    invoke-super {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Layt;->f:J

    .line 72
    iget-wide v0, p0, Layt;->f:J

    sub-long/2addr v0, v6

    iput-wide v0, p0, Layt;->e:J

    .line 73
    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Layt;->b:J

    .line 75
    if-gez p3, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufbitlen size must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-boolean v3, p0, Layt;->b:Z

    goto :goto_0

    .line 79
    :cond_1
    iput p3, p0, Layt;->a:I

    .line 80
    shl-int v0, v3, p3

    iput v0, p0, Layt;->b:I

    .line 81
    iget v0, p0, Layt;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Layt;->a:[B

    .line 82
    iget v0, p0, Layt;->b:I

    int-to-long v0, v0

    sub-long/2addr v0, v6

    xor-long/2addr v0, v4

    iput-wide v0, p0, Layt;->a:J

    .line 83
    iput-boolean v2, p0, Layt;->a:Z

    .line 84
    iput v2, p0, Layt;->c:I

    .line 85
    iput-wide v4, p0, Layt;->c:J

    .line 86
    iput-wide v4, p0, Layt;->d:J

    .line 87
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Layt;->a()V

    .line 245
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 246
    return-void
.end method

.method public getFilePointer()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Layt;->b:J

    return-wide v0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 223
    iget-wide v0, p0, Layt;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Layt;->f:J

    invoke-direct {p0, v0, v1, v2, v3}, Layt;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([B)I
    .locals 2
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Layt;->read([BII)I

    move-result v0

    return v0
.end method

.method public seek(J)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 205
    iget-wide v0, p0, Layt;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Layt;->d:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 206
    :cond_0
    invoke-direct {p0}, Layt;->a()V

    .line 208
    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Layt;->e:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    iget-wide v0, p0, Layt;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 209
    iget-wide v0, p0, Layt;->a:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Layt;->c:J

    .line 210
    invoke-direct {p0}, Layt;->a()I

    move-result v0

    iput v0, p0, Layt;->c:I

    .line 217
    :cond_1
    :goto_0
    iget-wide v0, p0, Layt;->c:J

    iget v2, p0, Layt;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Layt;->d:J

    .line 219
    :cond_2
    iput-wide p1, p0, Layt;->b:J

    .line 220
    return-void

    .line 212
    :cond_3
    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    iget-wide v0, p0, Layt;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :cond_4
    iget-wide v0, p0, Layt;->e:J

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 214
    :cond_5
    iput-wide p1, p0, Layt;->c:J

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Layt;->c:I

    goto :goto_0
.end method

.method public setLength(J)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 227
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 228
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, Layt;->e:J

    .line 232
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 233
    return-void

    .line 230
    :cond_0
    iput-wide v1, p0, Layt;->e:J

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Layt;->write([BII)V

    .line 197
    return-void
.end method

.method public write([BII)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x1

    .line 157
    iget-wide v0, p0, Layt;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    sub-long/2addr v0, v7

    .line 159
    iget-wide v2, p0, Layt;->d:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 160
    iget-object v2, p0, Layt;->a:[B

    iget-wide v3, p0, Layt;->b:J

    iget-wide v5, p0, Layt;->c:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Layt;->a:Z

    .line 162
    iget-wide v2, p0, Layt;->c:J

    sub-long v2, v0, v2

    add-long/2addr v2, v7

    long-to-int v2, v2

    iput v2, p0, Layt;->c:I

    .line 169
    :goto_0
    iget-wide v2, p0, Layt;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 170
    iput-wide v0, p0, Layt;->e:J

    .line 172
    :cond_0
    add-long/2addr v0, v7

    invoke-virtual {p0, v0, v1}, Layt;->seek(J)V

    .line 173
    return-void

    .line 165
    :cond_1
    iget-wide v2, p0, Layt;->b:J

    invoke-super {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 166
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0
.end method
