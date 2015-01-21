.class public Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "StructuredPostal.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/BaseTypes;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0x3

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/postal-address_v2"

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private formattedAddress:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private neighborhood:Ljava/lang/String;

.field private pobox:Ljava/lang/String;

.field private postcode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;-><init>(J)V

    .line 108
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 102
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 103
    const/16 v0, -0xff

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->type:I

    .line 104
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->clone()Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 209
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->formattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getPobox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->pobox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->postcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->type:I

    return v0
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
    .line 265
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 267
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->formattedAddress:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->type:I

    .line 271
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->label:Ljava/lang/String;

    .line 273
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->street:Ljava/lang/String;

    .line 275
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->pobox:Ljava/lang/String;

    .line 277
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->neighborhood:Ljava/lang/String;

    .line 279
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->city:Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->region:Ljava/lang/String;

    .line 283
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->postcode:Ljava/lang/String;

    .line 285
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->country:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->city:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->country:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setFormattedAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "formattedAddress"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->formattedAddress:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->label:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0
    .parameter "neighborhood"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->neighborhood:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setPobox(Ljava/lang/String;)V
    .locals 0
    .parameter "pobox"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->pobox:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .locals 0
    .parameter "postcode"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->postcode:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->region:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .parameter "street"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->street:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 163
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->type:I

    .line 164
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
    .line 240
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->formattedAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 246
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->label:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->street:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->pobox:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->neighborhood:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->city:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->region:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->postcode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->country:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 261
    return-void
.end method
