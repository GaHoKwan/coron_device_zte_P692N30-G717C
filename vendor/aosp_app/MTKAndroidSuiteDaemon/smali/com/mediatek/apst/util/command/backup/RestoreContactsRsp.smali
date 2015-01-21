.class public Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "RestoreContactsRsp.java"


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
    .line 85
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 86
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
    .line 151
    const/4 v5, 0x1

    iget v6, p0, Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;->phase:I

    if-eq v5, v6, :cond_1

    .line 153
    const/4 v4, 0x0

    .line 164
    :cond_0
    return-object v4

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 157
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/ContactData;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 161
    invoke-static {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactDataAdapter;->readRaw(Ljava/nio/ByteBuffer;I)Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v3

    .line 162
    .local v3, item:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
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
    .line 128
    iget v5, p0, Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;->phase:I

    if-eqz v5, :cond_1

    .line 130
    const/4 v4, 0x0

    .line 141
    :cond_0
    return-object v4

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 133
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 134
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/RawContact;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 136
    new-instance v3, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 138
    .local v3, item:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    invoke-virtual {v3, v0, p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 139
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPhase()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;->phase:I

    return v0
.end method

.method public setPhase(I)V
    .locals 0
    .parameter "phase"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;->phase:I

    .line 116
    return-void
.end method
