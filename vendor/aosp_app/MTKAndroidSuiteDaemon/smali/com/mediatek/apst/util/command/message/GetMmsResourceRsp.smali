.class public Lcom/mediatek/apst/util/command/message/GetMmsResourceRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "GetMmsResourceRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mmsId:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 79
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 80
    return-void
.end method


# virtual methods
.method public getMmsId()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/GetMmsResourceRsp;->mmsId:J

    return-wide v0
.end method

.method public getResource(Lcom/mediatek/apst/util/entity/message/Mms;I)V
    .locals 7
    .parameter "msg"
    .parameter "versionCode"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 97
    .local v1, count:I
    move-object v3, p1

    .line 99
    .local v3, mms:Lcom/mediatek/apst/util/entity/message/Mms;
    const/4 v6, -0x1

    if-eq v6, v1, :cond_1

    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v5, parts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 109
    .end local v2           #i:I
    :goto_1
    invoke-virtual {v3, v5}, Lcom/mediatek/apst/util/entity/message/Mms;->setParts(Ljava/util/List;)V

    .line 110
    return-void

    .line 102
    .restart local v2       #i:I
    :cond_0
    new-instance v4, Lcom/mediatek/apst/util/entity/message/MmsPart;

    invoke-direct {v4}, Lcom/mediatek/apst/util/entity/message/MmsPart;-><init>()V

    .line 103
    .local v4, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    invoke-virtual {v4, v0, p2}, Lcom/mediatek/apst/util/entity/message/MmsPart;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 104
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2           #i:I
    .end local v4           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    .end local v5           #parts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #parts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    goto :goto_1
.end method

.method public setMmsId(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/GetMmsResourceRsp;->mmsId:J

    .line 87
    return-void
.end method
