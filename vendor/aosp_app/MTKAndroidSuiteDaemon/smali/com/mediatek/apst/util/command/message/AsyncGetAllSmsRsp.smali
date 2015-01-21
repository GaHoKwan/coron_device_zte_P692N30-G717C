.class public Lcom/mediatek/apst/util/command/message/AsyncGetAllSmsRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "AsyncGetAllSmsRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 69
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 70
    return-void
.end method


# virtual methods
.method public getAll(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/message/Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 90
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/message/Sms;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 97
    return-object v4

    .line 92
    :cond_0
    new-instance v3, Lcom/mediatek/apst/util/entity/message/Sms;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>()V

    .line 94
    .local v3, item:Lcom/mediatek/apst/util/entity/message/Sms;
    invoke-virtual {v3, v0, p1}, Lcom/mediatek/apst/util/entity/message/Sms;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 95
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
