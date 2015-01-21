.class public Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.super Lcom/mediatek/android/content/AsyncCursorParser;
.source "FastCursorParser.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0xc3500


# instance fields
.field private mBlock:[B

.field private mBlockSize:I

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mBufferFull:Z

.field private mConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V
    .locals 1
    .parameter "cursor"
    .parameter "consumer"

    .prologue
    .line 81
    const v0, 0xc3500

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "cursor"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/android/content/AsyncCursorParser;-><init>(Landroid/database/Cursor;)V

    .line 65
    iput-object p2, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

    .line 66
    iput-object p3, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    .line 67
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "ByteBuffer is null. Auto allocate 800000 bytes now."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const v0, 0xc3500

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    .line 73
    :cond_0
    return-void
.end method

.method private consume([BII)V
    .locals 3
    .parameter "block"
    .parameter "progress"
    .parameter "total"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Consumer is null!"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareNewBlock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 94
    iput v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlockSize:I

    .line 95
    iput-boolean v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBufferFull:Z

    .line 96
    return-void
.end method


# virtual methods
.method public isBlockReady()Z
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBufferFull:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCursorPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBlockReady()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlockSize:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 161
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlock:[B

    .line 164
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlock:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCursorPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ready!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlock:[B

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCursorPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->consume([BII)V

    .line 169
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->prepareNewBlock()V

    .line 170
    return-void
.end method

.method protected onBlockReadyForEx()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlockSize:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 182
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlock:[B

    .line 183
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlock:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCursorPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ready!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlock:[B

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCursorPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCursorPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->consume([BII)V

    .line 188
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->prepareNewBlock()V

    .line 189
    return-void
.end method

.method protected onNewRow(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 132
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 151
    .end local v0           #status:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 134
    .restart local v0       #status:I
    :pswitch_1
    iget v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlockSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBlockSize:I

    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBufferFull:Z

    .line 141
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->move(I)Z

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected onParseOver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/android/content/AsyncCursorParser;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 199
    .local v0, emptyBlock:[B
    invoke-direct {p0, v0, v2, v2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->consume([BII)V

    .line 201
    .end local v0           #emptyBlock:[B
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->mBuffer:Ljava/nio/ByteBuffer;

    .line 202
    return-void
.end method

.method protected onParseStart()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;->prepareNewBlock()V

    .line 104
    return-void
.end method
