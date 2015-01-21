.class public Lcom/mediatek/apst/util/entity/contacts/Website;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "Website.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/BaseTypes;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0x5

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/website"

.field public static final TYPE_BLOG:I = 0x2

.field public static final TYPE_FTP:I = 0x6

.field public static final TYPE_HOME:I = 0x4

.field public static final TYPE_HOMEPAGE:I = 0x1

.field public static final TYPE_OTHER:I = 0x7

.field public static final TYPE_PROFILE:I = 0x3

.field public static final TYPE_WORK:I = 0x5

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private label:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/Website;-><init>(J)V

    .line 95
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 89
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 90
    const/16 v0, -0xff

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->type:I

    .line 91
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Website;->clone()Lcom/mediatek/apst/util/entity/contacts/Website;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Website;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 140
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Website;
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "vnd.android.cursor.item/website"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->url:Ljava/lang/String;

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
    .line 168
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 170
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->url:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->type:I

    .line 174
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->label:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->label:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 122
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->type:I

    .line 123
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->url:Ljava/lang/String;

    .line 119
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
    .line 157
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Website;->label:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 164
    return-void
.end method
