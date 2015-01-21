.class public Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "ImportDetailedContactsRsp.java"


# static fields
.field public static final PHASE_CONTACT_DATA:I = 0x1

.field public static final PHASE_RAW_CONTACT:I = 0x0

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private phase:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 83
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 84
    return-void
.end method


# virtual methods
.method public getAllContactData(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v5, 0x1

    iget v6, p0, Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsRsp;->phase:I

    if-eq v5, v6, :cond_1

    .line 151
    const/4 v4, 0x0

    .line 162
    :cond_0
    return-object v4

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 155
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/ContactData;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 159
    invoke-static {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactDataAdapter;->readRaw(Ljava/nio/ByteBuffer;I)Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v3

    .line 160
    .local v3, item:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAllRawContacts(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget v5, p0, Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsRsp;->phase:I

    if-eqz v5, :cond_1

    .line 128
    const/4 v4, 0x0

    .line 139
    :cond_0
    return-object v4

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 132
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/RawContact;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 134
    new-instance v3, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 136
    .local v3, item:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    invoke-virtual {v3, v0, p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 137
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPhase()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsRsp;->phase:I

    return v0
.end method

.method public setPhase(I)V
    .locals 0
    .parameter "phase"

    .prologue
    .line 113
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/ImportDetailedContactsRsp;->phase:I

    .line 114
    return-void
.end method
