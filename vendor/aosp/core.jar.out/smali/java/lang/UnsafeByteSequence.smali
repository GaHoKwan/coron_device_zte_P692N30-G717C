.class public Ljava/lang/UnsafeByteSequence;
.super Ljava/lang/Object;
.source "UnsafeByteSequence.java"


# instance fields
.field private bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    .line 37
    return-void
.end method


# virtual methods
.method public rewind()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/UnsafeByteSequence;->count:I

    .line 49
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Ljava/lang/UnsafeByteSequence;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    iget-object v2, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    new-array v0, v1, [B

    .line 76
    .local v0, result:[B
    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .parameter "cs"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 62
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    iget-object v2, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 63
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 64
    .local v0, newBytes:[B
    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    .line 67
    .end local v0           #newBytes:[B
    :cond_0
    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/UnsafeByteSequence;->count:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 68
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 52
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iget-object v2, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 53
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 54
    .local v0, newBytes:[B
    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v0, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    .line 57
    .end local v0           #newBytes:[B
    :cond_0
    iget-object v1, p0, Ljava/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Ljava/lang/UnsafeByteSequence;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/lang/UnsafeByteSequence;->count:I

    .line 59
    return-void
.end method
