.class public Lcom/mediatek/apst/util/entity/contacts/Photo;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "Photo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0xa

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/photo"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private photoBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/Photo;-><init>(J)V

    .line 80
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 75
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Photo;->clone()Lcom/mediatek/apst/util/entity/contacts/Photo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Photo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 109
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Photo;
    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "vnd.android.cursor.item/photo"

    return-object v0
.end method

.method public getPhotoBytes()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Photo;->photoBytes:[B

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 131
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Photo;->photoBytes:[B

    .line 132
    return-void
.end method

.method public setPhotoBytes([B)V
    .locals 0
    .parameter "photoBytes"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Photo;->photoBytes:[B

    .line 96
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Photo;->photoBytes:[B

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBytes(Ljava/nio/ByteBuffer;[B)V

    .line 125
    return-void
.end method
