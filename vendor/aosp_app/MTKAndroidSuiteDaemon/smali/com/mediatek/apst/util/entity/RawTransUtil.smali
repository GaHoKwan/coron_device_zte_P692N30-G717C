.class public Lcom/mediatek/apst/util/entity/RawTransUtil;
.super Ljava/lang/Object;
.source "RawTransUtil.java"


# static fields
.field public static final BOOLEAN:I = 0x1

.field public static final BYTE:I = 0x1

.field public static final CHAR:I = 0x2

.field public static final DEFAULT_BUFFER_SIZE:I = 0xc3500

.field public static final DOUBLE:I = 0x8

.field public static final FLOAT:I = 0x4

.field public static final INT:I = 0x4

.field public static final LENGTH_NULL:I = -0x1

.field public static final LONG:I = 0x8

.field public static final SHORT:I = 0x2

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateDefaultBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 73
    const v0, 0xc3500

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static final getBoolean(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 143
    move-object v0, v3

    check-cast v0, [B

    .line 145
    .local v0, arr:[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 146
    .local v2, len:I
    if-ltz v2, :cond_0

    .line 148
    :try_start_0
    new-array v0, v2, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v3, v0

    .line 155
    :cond_0
    return-object v3

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "catch it"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 7
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v4, 0x0

    .line 187
    .local v4, out:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 188
    .local v3, len:I
    if-ltz v3, :cond_0

    .line 189
    const/4 v0, 0x0

    check-cast v0, [C

    .line 191
    .local v0, arr:[C
    :try_start_0
    new-array v0, v3, [C
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 198
    new-instance v4, Ljava/lang/String;

    .end local v4           #out:Ljava/lang/String;
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 200
    .end local v0           #arr:[C
    .end local v2           #i:I
    .restart local v4       #out:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 192
    .restart local v0       #arr:[C
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "catch it"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v0, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static final getStringArray(Ljava/nio/ByteBuffer;)[Ljava/lang/String;
    .locals 6
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    .line 234
    .local v3, out:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 235
    .local v2, len:I
    if-ltz v2, :cond_0

    .line 237
    :try_start_0
    new-array v3, v2, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 245
    .end local v1           #i:I
    :cond_0
    return-object v3

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "catch outofmemorry error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #i:I
    :cond_1
    invoke-static {p0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final putBoolean(Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .parameter "buffer"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 131
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final putBytes(Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .parameter "buffer"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static final putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 212
    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 214
    .local v0, arr:[C
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 221
    .end local v0           #arr:[C
    .end local v1           #i:I
    :goto_1
    return-void

    .line 216
    .restart local v0       #arr:[C
    .restart local v1       #i:I
    :cond_0
    aget-char v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0           #arr:[C
    .end local v1           #i:I
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public static final putStringArray(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 2
    .parameter "buffer"
    .parameter "arr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p1, :cond_1

    .line 258
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 265
    .end local v0           #i:I
    :goto_1
    return-void

    .line 260
    .restart local v0       #i:I
    :cond_0
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public static final sizeOfBytes([B)I
    .locals 2
    .parameter "arr"

    .prologue
    .line 98
    const/4 v0, 0x4

    .line 100
    .local v0, size:I
    if-eqz p0, :cond_0

    .line 101
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 103
    :cond_0
    return v0
.end method

.method public static final sizeOfString(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 83
    const/4 v0, 0x4

    .line 85
    .local v0, size:I
    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 88
    :cond_0
    return v0
.end method
