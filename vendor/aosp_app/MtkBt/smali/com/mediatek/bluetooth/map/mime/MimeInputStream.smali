.class public Lcom/mediatek/bluetooth/map/mime/MimeInputStream;
.super Ljava/lang/Object;
.source "MimeInputStream.java"


# static fields
.field private static final LINE_BREAK:Ljava/lang/String; = "\r\n"

.field public static final MAXIUM_LINE_LENGTH:I = 0x3e6

.field private static final TAG:Ljava/lang/String; = "MimeInputStream"


# instance fields
.field private currentPosition:I

.field private mCurrentLine:[B

.field private mInput:Ljava/io/PushbackInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    .line 63
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    .line 64
    const/16 v0, 0x3e6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mCurrentLine:[B

    .line 65
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    const-string v0, "MimeInputStream"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public readByteWithoutMark()I
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, value:I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public readLine([B)I
    .locals 7
    .parameter "cache"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, current:B
    const/4 v2, 0x0

    .line 71
    .local v2, previous:B
    const-string v5, "readLine()"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    .line 72
    iput v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    .line 74
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return v3

    .line 78
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    int-to-byte v2, v5

    move v0, v2

    .line 82
    :goto_1
    if-eq v0, v4, :cond_1

    iget v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    const/16 v6, 0x3e6

    if-ge v5, v6, :cond_1

    .line 83
    iget-object v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mCurrentLine:[B

    iget v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    aput-byte v0, v5, v6

    .line 84
    const/16 v5, 0xd

    if-ne v2, v5, :cond_3

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    .line 86
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mCurrentLine:[B

    iget v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    aput-byte v3, v4, v5

    .line 87
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mCurrentLine:[B

    iget v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    aput-byte v3, v4, v5

    .line 99
    :cond_1
    iget v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    if-lez v4, :cond_2

    .line 100
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mCurrentLine:[B

    iget v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    invoke-static {v4, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    new-instance v4, Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    invoke-direct {v4, p1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    .line 103
    :cond_2
    iget v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    goto :goto_0

    .line 90
    :cond_3
    move v2, v0

    .line 92
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    int-to-byte v0, v5

    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/io/IOException;
    const-string v3, "fail to read byte"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    move v3, v4

    .line 96
    goto :goto_0

    .line 79
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public transferData(Ljava/io/OutputStream;II)Z
    .locals 6
    .parameter "out"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transferData():offset is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, ret:Z
    const/4 v1, -0x1

    .line 149
    .local v1, index:I
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 150
    :cond_0
    const/4 v2, 0x0

    move v4, v2

    .line 170
    :goto_0
    return v4

    .line 155
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 156
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 157
    .local v3, value:I
    if-ge v1, p2, :cond_3

    .line 166
    :goto_1
    if-lt v1, p3, :cond_1

    .end local v3           #value:I
    :cond_2
    :goto_2
    move v4, v2

    .line 170
    goto :goto_0

    .line 160
    .restart local v3       #value:I
    :cond_3
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 163
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v3           #value:I
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public unreadLine()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreadLine():currentPosition is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    .line 109
    iget v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    if-gtz v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mCurrentLine:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    iput v5, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->currentPosition:I

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unreadLine([BII)V
    .locals 3
    .parameter "cache"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreadLine()offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    .line 122
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->mInput:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
