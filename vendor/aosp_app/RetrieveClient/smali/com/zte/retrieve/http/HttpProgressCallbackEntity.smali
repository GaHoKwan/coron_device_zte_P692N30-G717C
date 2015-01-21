.class public Lcom/zte/retrieve/http/HttpProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "HttpProgressCallbackEntity.java"


# static fields
.field private static final DEFAULT_PIECE_SIZE:I = 0x1000

.field public static final PROGRESS_ABORT:I = -0x2

.field public static final PROGRESS_COMPLETE:I = 0x64

.field public static final PROGRESS_START:I = -0x1

.field public static final PROGRESS_STATUS_ACTION:Ljava/lang/String; = "com.android.mms.PROGRESS_STATUS"


# instance fields
.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private final mToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J[B)V
    .locals 1
    .parameter "context"
    .parameter "token"
    .parameter "b"

    .prologue
    .line 37
    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 39
    iput-object p1, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mContent:[B

    .line 41
    iput-wide p2, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mToken:J

    .line 42
    return-void
.end method

.method private broadcastProgressIfNeeded(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 80
    iget-wide v1, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mToken:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v1, "token"

    iget-wide v2, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x2

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    .local v0, completed:Z
    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 54
    const/4 v2, 0x0

    .local v2, pos:I
    iget-object v4, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    .line 55
    .local v3, totalLen:I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 69
    const/16 v4, 0x64

    invoke-direct {p0, v4}, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/4 v0, 0x1

    .line 73
    if-nez v0, :cond_1

    .line 74
    invoke-direct {p0, v6}, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 77
    :cond_1
    return-void

    .line 56
    :cond_2
    sub-int v1, v3, v2

    .line 57
    .local v1, len:I
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HttpProgressCallbackEntity_writeTo: len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 58
    const/16 v4, 0x1000

    if-le v1, v4, :cond_3

    .line 59
    const/16 v1, 0x1000

    .line 61
    :cond_3
    iget-object v4, p0, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 64
    add-int/2addr v2, v1

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HttpProgressCallbackEntity_writeTo:pos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 66
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v1           #len:I
    .end local v2           #pos:I
    .end local v3           #totalLen:I
    :catchall_0
    move-exception v4

    .line 73
    if-nez v0, :cond_4

    .line 74
    invoke-direct {p0, v6}, Lcom/zte/retrieve/http/HttpProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 76
    :cond_4
    throw v4
.end method
