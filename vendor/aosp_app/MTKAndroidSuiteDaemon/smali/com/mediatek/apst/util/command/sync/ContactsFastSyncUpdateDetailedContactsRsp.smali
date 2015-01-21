.class public Lcom/mediatek/apst/util/command/sync/ContactsFastSyncUpdateDetailedContactsRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "ContactsFastSyncUpdateDetailedContactsRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 57
    const/high16 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 58
    return-void
.end method


# virtual methods
.method public getResults(I)[Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;
    .locals 5
    .parameter "versionCode"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 74
    .local v1, count:I
    new-array v3, v1, [Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;

    .line 75
    .local v3, results:[Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 80
    return-object v3

    .line 76
    :cond_0
    new-instance v4, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;

    invoke-direct {v4}, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;-><init>()V

    aput-object v4, v3, v2

    .line 78
    aget-object v4, v3, v2

    invoke-virtual {v4, v0, p1}, Lcom/mediatek/apst/util/entity/sync/ContactsSyncFlag;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
