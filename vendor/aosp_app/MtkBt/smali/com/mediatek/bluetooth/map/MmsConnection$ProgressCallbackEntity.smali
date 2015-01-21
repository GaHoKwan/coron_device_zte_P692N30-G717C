.class public Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "MmsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MmsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressCallbackEntity"
.end annotation


# static fields
.field private static final DEFAULT_PIECE_SIZE:I = 0x1000


# instance fields
.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private final mToken:J

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MmsConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/MmsConnection;Landroid/content/Context;J[B)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "token"
    .parameter "b"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    .line 512
    invoke-direct {p0, p5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 514
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;->mContext:Landroid/content/Context;

    .line 515
    iput-object p5, p0, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;->mContent:[B

    .line 516
    iput-wide p3, p0, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;->mToken:J

    .line 517
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_0
    const/4 v0, 0x0

    .line 528
    .local v0, completed:Z
    const/4 v2, 0x0

    .local v2, pos:I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    .line 529
    .local v3, totalLen:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 530
    sub-int v1, v3, v2

    .line 531
    .local v1, len:I
    const/16 v4, 0x1000

    if-le v1, v4, :cond_1

    .line 532
    const/16 v1, 0x1000

    .line 534
    :cond_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/MmsConnection$ProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 535
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    add-int/2addr v2, v1

    .line 540
    goto :goto_0

    .line 542
    .end local v1           #len:I
    :cond_2
    const/4 v0, 0x1

    .line 546
    return-void

    .line 543
    .end local v3           #totalLen:I
    :catchall_0
    move-exception v4

    throw v4
.end method
