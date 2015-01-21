.class public Lcom/mediatek/apst/util/command/backup/GetAllGroupsForBackupRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "GetAllGroupsForBackupRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 60
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 61
    return-void
.end method


# virtual methods
.method public getAll(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 77
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 83
    return-object v4

    .line 79
    :cond_0
    new-instance v3, Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/contacts/Group;-><init>()V

    .line 80
    .local v3, item:Lcom/mediatek/apst/util/entity/contacts/Group;
    invoke-virtual {v3, v0, p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 81
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
