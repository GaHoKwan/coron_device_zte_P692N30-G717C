.class public Lcom/mediatek/apst/util/entity/contacts/Im;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "Im.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/BaseTypes;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0x2

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_NONE:I = -0xff

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private customProtocol:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private protocol:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 108
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/Im;-><init>(J)V

    .line 109
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "id"

    .prologue
    const/16 v1, -0xff

    .line 102
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 103
    iput v1, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->type:I

    .line 104
    iput v1, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->protocol:I

    .line 105
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Im;->clone()Lcom/mediatek/apst/util/entity/contacts/Im;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Im;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 170
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Im;
    return-object v0
.end method

.method public getCustomProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->customProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "vnd.android.cursor.item/im"

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->protocol:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->type:I

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
    .line 206
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 208
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->data:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->type:I

    .line 212
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->label:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->protocol:I

    .line 216
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->customProtocol:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setCustomProtocol(Ljava/lang/String;)V
    .locals 0
    .parameter "customProtocol"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->customProtocol:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->data:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->label:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setProtocol(I)V
    .locals 0
    .parameter "protocol"

    .prologue
    .line 152
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->protocol:I

    .line 153
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 144
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->type:I

    .line 145
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
    .line 191
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->data:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 195
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 197
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->label:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 199
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->protocol:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 201
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Im;->customProtocol:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 202
    return-void
.end method
