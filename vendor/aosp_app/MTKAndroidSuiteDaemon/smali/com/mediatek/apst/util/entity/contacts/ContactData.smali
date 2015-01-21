.class public Lcom/mediatek/apst/util/entity/contacts/ContactData;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "ContactData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mimeType:I

.field private primary:Z

.field private rawContactId:J

.field private superPrimary:Z


# direct methods
.method public constructor <init>(I)V
    .locals 9
    .parameter "mimeType"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v6, 0x0

    .line 103
    move-object v0, p0

    move v3, p1

    move-wide v4, v1

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JIJZZI)V

    .line 104
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 9
    .parameter "id"
    .parameter "mimeType"

    .prologue
    const/4 v6, 0x0

    .line 99
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JIJZZI)V

    .line 100
    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 9
    .parameter "id"
    .parameter "mimeType"
    .parameter "rawContactId"

    .prologue
    const/4 v6, 0x0

    .line 95
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JIJZZI)V

    .line 96
    return-void
.end method

.method public constructor <init>(JIJZZI)V
    .locals 0
    .parameter "id"
    .parameter "mimeType"
    .parameter "rawContactId"
    .parameter "primary"
    .parameter "superPrimary"
    .parameter "dataVersion"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 87
    iput p3, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->mimeType:I

    .line 88
    iput-wide p4, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->rawContactId:J

    .line 89
    iput-boolean p6, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->primary:Z

    .line 90
    iput-boolean p7, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->superPrimary:Z

    .line 92
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 191
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    return-object v0
.end method

.method public getMimeType()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->mimeType:I

    return v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, ""

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->rawContactId:J

    return-wide v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->primary:Z

    return v0
.end method

.method public isSuperPrimary()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->superPrimary:Z

    return v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 217
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->rawContactId:J

    .line 219
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->mimeType:I

    .line 220
    return-void
.end method

.method public setMimeType(I)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 173
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->mimeType:I

    .line 174
    return-void
.end method

.method public setPrimary(Z)V
    .locals 0
    .parameter "primary"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->primary:Z

    .line 159
    return-void
.end method

.method public setRawContactId(J)V
    .locals 0
    .parameter "rawContactId"

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->rawContactId:J

    .line 154
    return-void
.end method

.method public setSuperPrimary(Z)V
    .locals 0
    .parameter "superPrimary"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->superPrimary:Z

    .line 164
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 208
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->rawContactId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 210
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/ContactData;->mimeType:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 211
    return-void
.end method
