.class public Lcom/mediatek/apst/util/entity/contacts/Nickname;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "Nickname.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/BaseTypes;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0x4

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/nickname"

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_INITIALS:I = 0x5

.field public static final TYPE_MAIDEN_NAME:I = 0x3

.field public static final TYPE_OTHER_NAME:I = 0x2

.field public static final TYPE_SHORT_NAME:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private label:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/Nickname;-><init>(J)V

    .line 93
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 87
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 88
    const/16 v0, -0xff

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->type:I

    .line 89
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->clone()Lcom/mediatek/apst/util/entity/contacts/Nickname;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Nickname;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 138
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "vnd.android.cursor.item/nickname"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->type:I

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
    .line 166
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 168
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->name:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->type:I

    .line 172
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->label:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->label:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 120
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->type:I

    .line 121
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
    .line 155
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Nickname;->label:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 162
    return-void
.end method
