.class public Lcom/mediatek/apst/util/entity/contacts/StructuredName;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "StructuredName.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0x9

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/name"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private displayName:Ljava/lang/String;

.field private familyName:Ljava/lang/String;

.field private givenName:Ljava/lang/String;

.field private middleName:Ljava/lang/String;

.field private phoneticFamilyName:Ljava/lang/String;

.field private phoneticGivenName:Ljava/lang/String;

.field private phoneticMiddleName:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;-><init>(J)V

    .line 98
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 93
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 94
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->clone()Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 191
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "vnd.android.cursor.item/name"

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->suffix:Ljava/lang/String;

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
    .line 243
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 245
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->displayName:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->givenName:Ljava/lang/String;

    .line 249
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->middleName:Ljava/lang/String;

    .line 251
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->familyName:Ljava/lang/String;

    .line 253
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->prefix:Ljava/lang/String;

    .line 255
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->suffix:Ljava/lang/String;

    .line 257
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticGivenName:Ljava/lang/String;

    .line 259
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticMiddleName:Ljava/lang/String;

    .line 261
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticFamilyName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->displayName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 0
    .parameter "familyName"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->familyName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .locals 0
    .parameter "givenName"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->givenName:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0
    .parameter "middleName"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->middleName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneticFamilyName"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticFamilyName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneticGivenName"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticGivenName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneticMiddleName"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticMiddleName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->prefix:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .parameter "suffix"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->suffix:Ljava/lang/String;

    .line 166
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
    .line 220
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->displayName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->givenName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->middleName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->familyName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->prefix:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->suffix:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticGivenName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticMiddleName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->phoneticFamilyName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 239
    return-void
.end method
