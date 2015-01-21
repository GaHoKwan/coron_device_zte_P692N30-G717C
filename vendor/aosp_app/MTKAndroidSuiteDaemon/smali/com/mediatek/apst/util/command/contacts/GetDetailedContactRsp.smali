.class public Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "GetDetailedContactRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private raw:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 70
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 71
    return-void
.end method


# virtual methods
.method public getDetailedContact(I)Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 3
    .parameter "versionCode"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;->raw:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, buffer:Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 94
    .local v1, detailedContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    invoke-virtual {v1, v0, p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 95
    return-object v1
.end method

.method public getRaw()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;->raw:[B

    return-object v0
.end method

.method public setDetailedContact(Lcom/mediatek/apst/util/entity/contacts/RawContact;Ljava/nio/ByteBuffer;I)V
    .locals 1
    .parameter "detailedContact"
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 102
    invoke-virtual {p1, p2, p3}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 103
    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 104
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;->raw:[B

    .line 105
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;->raw:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 106
    return-void
.end method

.method public setRaw([B)V
    .locals 0
    .parameter "raw"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactRsp;->raw:[B

    .line 85
    return-void
.end method
