.class public Lcom/mediatek/apst/util/entity/contacts/Organization;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "Organization.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/BaseTypes;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0x8

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/organization"

.field public static final TYPE_OTHER:I = 0x2

.field public static final TYPE_WORK:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private company:Ljava/lang/String;

.field private department:Ljava/lang/String;

.field private jobDescription:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private officeLocation:Ljava/lang/String;

.field private phoneticName:Ljava/lang/String;

.field private phoneticNameStyle:Ljava/lang/String;

.field private symbol:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/Organization;-><init>(J)V

    .line 104
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 98
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 99
    const/16 v0, -0xff

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->type:I

    .line 100
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Organization;->clone()Lcom/mediatek/apst/util/entity/contacts/Organization;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Organization;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 203
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Organization;
    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->department:Ljava/lang/String;

    return-object v0
.end method

.method public getJobDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->jobDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "vnd.android.cursor.item/organization"

    return-object v0
.end method

.method public getOfficeLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->officeLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->phoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticNameStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->phoneticNameStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->type:I

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
    .line 259
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 261
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->company:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->type:I

    .line 265
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->label:Ljava/lang/String;

    .line 267
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->title:Ljava/lang/String;

    .line 269
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->department:Ljava/lang/String;

    .line 271
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->jobDescription:Ljava/lang/String;

    .line 273
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->symbol:Ljava/lang/String;

    .line 275
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->phoneticName:Ljava/lang/String;

    .line 277
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->officeLocation:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0
    .parameter "company"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->company:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDepartment(Ljava/lang/String;)V
    .locals 0
    .parameter "department"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->department:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setJobDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "jobDescription"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->jobDescription:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->label:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setOfficeLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "officeLocation"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->officeLocation:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setPhoneticName(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneticName"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->phoneticName:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPhoneticNameStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneticNameStyle"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->phoneticNameStyle:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0
    .parameter "symbol"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->symbol:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->title:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 157
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->type:I

    .line 158
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
    .line 234
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 236
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->company:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 240
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->label:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->department:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->jobDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->symbol:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->phoneticName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Organization;->officeLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 255
    return-void
.end method
