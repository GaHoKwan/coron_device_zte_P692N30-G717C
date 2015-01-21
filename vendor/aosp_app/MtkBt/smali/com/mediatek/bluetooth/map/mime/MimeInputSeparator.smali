.class public Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;
.super Ljava/lang/Object;
.source "MimeInputSeparator.java"


# static fields
.field private static final BODY_CONTINUE:I = 0x1

.field private static final BODY_END:I = 0x2

.field private static final BODY_START:I = 0x0

.field private static final BOUNDARY_CONTINUE:I = 0x2

.field private static final BOUNDARY_FINAL:I = 0x3

.field private static final BOUNDARY_NO_MATCH:I = 0x0

.field private static final BOUNDARY_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MimeInputSeparator"


# instance fields
.field private mBodyCurrentStatus:I

.field private mBoundary:Ljava/lang/String;

.field private mCache:[B

.field private mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

.field private mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/mediatek/bluetooth/map/mime/MimeListener;)V
    .locals 1
    .parameter "in"
    .parameter "listener"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    .line 69
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    .line 70
    const/16 v0, 0x3e6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBodyCurrentStatus:I

    .line 72
    return-void
.end method

.method private findBoundary()I
    .locals 3

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 228
    .local v1, state:I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->getLine([B)I

    move-result v0

    .line 229
    .local v0, position:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 230
    const/4 v1, 0x3

    .line 239
    :cond_1
    :goto_0
    return v1

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->matchBoundary([B)I

    move-result v1

    .line 235
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method private getHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "field"

    .prologue
    const/4 v1, 0x0

    .line 302
    if-nez p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-object v1

    .line 306
    :cond_1
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "field"

    .prologue
    const/4 v1, 0x0

    .line 314
    if-nez p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :cond_1
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 319
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 322
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLine([B)I
    .locals 1
    .parameter "cache"

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->readLine([B)I

    move-result v0

    goto :goto_0
.end method

.method private getUnfoldLine()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 201
    .local v0, position:I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    invoke-virtual {v3, v4}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->readLine([B)I

    move-result v0

    .line 202
    if-gtz v0, :cond_2

    .line 209
    :cond_1
    :goto_0
    if-ne v0, v6, :cond_3

    .line 210
    const/4 v3, 0x0

    .line 212
    :goto_1
    return-object v3

    .line 205
    :cond_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->readByteWithoutMark()I

    move-result v2

    .line 207
    .local v2, value:I
    if-eq v2, v6, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 212
    .end local v2           #value:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private ignoreComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "field"

    .prologue
    .line 327
    return-object p1
.end method

.method private isBoundaryBegin(Ljava/lang/String;)Z
    .locals 2
    .parameter "boundary"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBoundaryEnd(Ljava/lang/String;)Z
    .locals 2
    .parameter "boundary"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderExist()Z
    .locals 5

    .prologue
    .line 281
    const-string v3, "isHeaderExist()"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->log(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, exist:Z
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    invoke-virtual {v3, v4}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->readLine([B)I

    move-result v1

    .line 284
    .local v1, position:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    .line 286
    :cond_0
    if-nez v1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->isHeaderExist()Z

    move-result v0

    goto :goto_0

    .line 289
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    .line 290
    .local v2, value:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->isValidHeaderLine(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->unreadLine()V

    goto :goto_0

    .line 293
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isValidHeaderLine(Ljava/lang/String;)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 277
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    const-string v0, "MimeInputSeparator"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    return-void
.end method

.method private matchBoundary([B)I
    .locals 6
    .parameter "cache"

    .prologue
    const/16 v5, 0x2d

    const/4 v2, 0x0

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 244
    .local v0, bnd:[B
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    array-length v3, v0

    array-length v4, p1

    if-le v3, v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v2

    .line 248
    :cond_1
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 249
    aget-byte v3, v0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_3

    .line 253
    :cond_2
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 256
    array-length v2, p1

    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_4

    aget-byte v2, p1, v1

    if-ne v2, v5, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_4

    .line 258
    const/4 v2, 0x3

    goto :goto_0

    .line 248
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    :cond_4
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public separate()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v0}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onMessageStart()V

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->separateHeader()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBodyCurrentStatus:I

    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v0}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onRequestBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBodyCurrentStatus:I

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->separateBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v0}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onMessageEnd()V

    .line 84
    return-void
.end method

.method public separateBody()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x3

    const/4 v9, 0x0

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, isEOF:Z
    const/4 v4, 0x0

    .line 114
    .local v4, isHeaderEnd:Z
    const/4 v1, 0x0

    .line 115
    .local v1, isBodyStart:Z
    const/4 v7, 0x0

    .line 116
    .local v7, size:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v0, content:Ljava/io/ByteArrayOutputStream;
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v10}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onBodyStart()V

    .line 118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mBoundary is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->log(Ljava/lang/String;)V

    .line 119
    iget v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBodyCurrentStatus:I

    if-ne v10, v8, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->findBoundary()I

    move-result v10

    iput v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBodyCurrentStatus:I

    .line 122
    iget v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBodyCurrentStatus:I

    if-ne v10, v12, :cond_0

    .line 123
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v8}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onBodyEnd()V

    move v3, v2

    .line 192
    .end local v2           #isEOF:Z
    .local v3, isEOF:I
    :goto_0
    return v3

    .line 127
    .end local v3           #isEOF:I
    .restart local v2       #isEOF:Z
    :cond_0
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mBoundary:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->separateHeader()V

    .line 129
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v10}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onRequestSize()I

    move-result v7

    .line 133
    :cond_1
    :goto_1
    if-lez v7, :cond_2

    .line 134
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mStream:Lcom/mediatek/bluetooth/map/mime/MimeInputStream;

    invoke-virtual {v10, v0, v9, v7}, Lcom/mediatek/bluetooth/map/mime/MimeInputStream;->transferData(Ljava/io/OutputStream;II)Z

    .line 135
    const/4 v7, 0x0

    .line 137
    :cond_2
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->getLine([B)I

    move-result v5

    .line 138
    .local v5, position:I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    .line 139
    const/4 v2, 0x1

    .line 190
    :goto_2
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onContentAdd([B)V

    .line 191
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v8}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onBodyEnd()V

    move v3, v2

    .line 192
    .restart local v3       #isEOF:I
    goto :goto_0

    .line 142
    .end local v3           #isEOF:I
    :cond_3
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->matchBoundary([B)I

    move-result v6

    .line 143
    .local v6, result:I
    const/4 v10, 0x2

    if-eq v6, v10, :cond_4

    if-ne v6, v12, :cond_6

    .line 144
    :cond_4
    if-ne v6, v12, :cond_5

    move v2, v8

    .line 145
    :goto_3
    goto :goto_2

    :cond_5
    move v2, v9

    .line 144
    goto :goto_3

    .line 148
    :cond_6
    if-lez v5, :cond_1

    .line 149
    iget-object v10, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mCache:[B

    invoke-virtual {v0, v10, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method public separateHeader()V
    .locals 4

    .prologue
    .line 92
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v3}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onHeaderStart()V

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->getUnfoldLine()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, headerField:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->isValidHeaderLine(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v3}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onHeaderEnd()V

    .line 107
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->ignoreComment(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->mListener:Lcom/mediatek/bluetooth/map/mime/MimeListener;

    invoke-interface {v3, v1, v2}, Lcom/mediatek/bluetooth/map/mime/MimeListener;->onHeaderFieldAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
