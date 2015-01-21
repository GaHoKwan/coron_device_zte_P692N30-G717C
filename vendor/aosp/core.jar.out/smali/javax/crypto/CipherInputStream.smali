.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# static fields
.field private static final I_BUFFER_SIZE:I = 0x14


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private finished:Z

.field private final inputBuffer:[B

.field private outputBuffer:[B

.field private outputIndex:I

.field private outputLength:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 75
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 1
    .parameter "is"
    .parameter "c"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    .line 62
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 63
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 175
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 87
    iget-boolean v0, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    if-eqz v0, :cond_1

    .line 88
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    if-ne v0, v1, :cond_0

    move v0, v8

    .line 118
    :goto_0
    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 90
    :cond_1
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    if-ge v0, v1, :cond_2

    .line 91
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 93
    :cond_2
    iput v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    .line 94
    iput v2, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    .line 95
    :goto_1
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    if-nez v0, :cond_5

    .line 98
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v7

    .line 99
    .local v7, outputSize:I
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    array-length v0, v0

    if-ge v0, v7, :cond_4

    .line 100
    :cond_3
    new-array v0, v7, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    .line 102
    :cond_4
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 103
    .local v3, byteCount:I
    if-ne v3, v8, :cond_6

    .line 105
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    .line 118
    .end local v3           #byteCount:I
    .end local v7           #outputSize:I
    :cond_5
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    goto :goto_0

    .line 106
    .restart local v3       #byteCount:I
    .restart local v7       #outputSize:I
    :catch_0
    move-exception v6

    .line 107
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    .end local v6           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    const/4 v2, 0x0

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 114
    :catch_1
    move-exception v6

    .line 115
    .local v6, e:Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 137
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 138
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "in == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 143
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    .line 144
    .local v0, b:I
    if-ne v0, v2, :cond_2

    .line 145
    if-nez v1, :cond_1

    move v1, v2

    .line 151
    .end local v0           #b:I
    .end local v1           #i:I
    :cond_1
    return v1

    .line 147
    .restart local v0       #b:I
    .restart local v1       #i:I
    :cond_2
    if-eqz p1, :cond_3

    .line 148
    add-int v3, p2, v1

    int-to-byte v4, v0

    aput-byte v4, p1, v3

    .line 142
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 2
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
