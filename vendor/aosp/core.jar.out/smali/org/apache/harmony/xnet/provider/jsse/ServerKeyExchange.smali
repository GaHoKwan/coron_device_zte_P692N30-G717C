.class public Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerKeyExchange.java"


# instance fields
.field final bytes1:[B

.field final bytes2:[B

.field final bytes3:[B

.field final hash:[B

.field private key:Ljava/security/interfaces/RSAPublicKey;

.field final par1:Ljava/math/BigInteger;

.field final par2:Ljava/math/BigInteger;

.field final par3:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 2
    .parameter "par1"
    .parameter "par2"
    .parameter "par3"
    .parameter "hash"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    .line 63
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 64
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    .line 66
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    .line 68
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 71
    if-eqz p4, :cond_0

    .line 72
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    array-length v1, p4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 74
    :cond_0
    if-nez p3, :cond_1

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 79
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V
    .locals 5
    .parameter "in"
    .parameter "length"
    .parameter "keyExchange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 163
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 165
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 166
    .local v0, size:I
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    .line 167
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    .line 168
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 169
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 170
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    .line 171
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    .line 172
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 173
    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    .line 174
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 175
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 176
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 177
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 182
    :goto_0
    const/16 v1, 0xa

    if-eq p3, v1, :cond_2

    const/16 v1, 0x9

    if-eq p3, v1, :cond_2

    .line 184
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 185
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    .line 186
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 190
    :goto_1
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v1, p2, :cond_0

    .line 191
    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ServerKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->fatalAlert(BLjava/lang/String;)V

    .line 194
    :cond_0
    return-void

    .line 179
    :cond_1
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 180
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    goto :goto_0

    .line 188
    :cond_2
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    goto :goto_1
.end method

.method public static toUnsignedByteArray(Ljava/math/BigInteger;)[B
    .locals 5
    .parameter "bi"

    .prologue
    const/4 v4, 0x0

    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 97
    :goto_0
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 92
    .local v0, bb:[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_1

    .line 93
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 94
    .local v1, noZero:[B
    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v1           #noZero:[B
    :cond_1
    move-object v1, v0

    .line 97
    goto :goto_0
.end method

.method public static updateSignatureDh(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .parameter "ds"
    .parameter "p"
    .parameter "g"
    .parameter "y"

    .prologue
    const v5, 0xff00

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const/4 v2, 0x2

    new-array v1, v2, [B

    .line 121
    .local v1, tmpLength:[B
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 122
    .local v0, tmp:[B
    array-length v2, v0

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 123
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 124
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 126
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 127
    array-length v2, v0

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 128
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 129
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 130
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 131
    invoke-static {p3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 132
    array-length v2, v0

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 133
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 134
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 135
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 136
    return-void
.end method

.method public static updateSignatureRsa(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .parameter "ds"
    .parameter "modulus"
    .parameter "publicExponent"

    .prologue
    const v5, 0xff00

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    const/4 v2, 0x2

    new-array v1, v2, [B

    .line 105
    .local v1, tmpLength:[B
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 106
    .local v0, tmp:[B
    array-length v2, v0

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 107
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 108
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 109
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 110
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 111
    array-length v2, v0

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 112
    array-length v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 113
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 114
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 115
    return-void
.end method


# virtual methods
.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 5

    .prologue
    .line 223
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    .line 233
    :goto_0
    return-object v2

    .line 227
    :cond_0
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 228
    .local v1, kf:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    .line 230
    .end local v1           #kf:Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0xc

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 203
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 204
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 205
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 206
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 208
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 212
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 214
    :cond_1
    return-void
.end method

.method public verifySignature(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;)Z
    .locals 3
    .parameter "ds"

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->updateSignatureDh(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->verifySignature([B)Z

    move-result v0

    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->updateSignatureRsa(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method
