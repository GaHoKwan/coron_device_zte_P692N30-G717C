.class public Lcom/mediatek/apst/util/entity/message/MmsPart;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "MmsPart.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CT_AMR:Ljava/lang/String; = "audio/amr"

.field public static final CT_GIF:Ljava/lang/String; = "image/gif"

.field public static final CT_JPG:Ljava/lang/String; = "image/jpeg"

.field public static final CT_MIDI:Ljava/lang/String; = "audio/midi"

.field public static final CT_SMIL:Ljava/lang/String; = "application/smil"

.field public static final CT_TXT:Ljava/lang/String; = "text/plain"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private byteArray:[B

.field private charset:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private cl:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private dataPath:Ljava/lang/String;

.field private mmsId:J

.field private name:Ljava/lang/String;

.field private sequence:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/message/MmsPart;-><init>(J)V

    .line 60
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->mmsId:J

    .line 56
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/MmsPart;->clone()Lcom/mediatek/apst/util/entity/message/MmsPart;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/message/MmsPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/MmsPart;

    .line 159
    .local v0, copy:Lcom/mediatek/apst/util/entity/message/MmsPart;
    return-object v0
.end method

.method public getByteArray()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsId()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->mmsId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->sequence:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->text:Ljava/lang/String;

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->mmsId:J

    .line 193
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->sequence:I

    .line 196
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->contentType:Ljava/lang/String;

    .line 199
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->name:Ljava/lang/String;

    .line 202
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->charset:Ljava/lang/String;

    .line 204
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cid:Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cl:Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    .line 210
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->text:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 215
    .local v0, length:I
    if-eqz v0, :cond_1

    .line 216
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    .line 217
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 222
    .end local v0           #length:I
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v0       #length:I
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    goto :goto_0
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->mmsId:J

    .line 232
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->sequence:I

    .line 235
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->contentType:Ljava/lang/String;

    .line 238
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->name:Ljava/lang/String;

    .line 241
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->charset:Ljava/lang/String;

    .line 243
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cid:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cl:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    .line 249
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->text:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 255
    .local v0, length:I
    if-eqz v0, :cond_1

    .line 256
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    .line 257
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 262
    .end local v0           #length:I
    :cond_0
    :goto_0
    return-void

    .line 259
    .restart local v0       #length:I
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    goto :goto_0
.end method

.method public setByteArray([B)V
    .locals 0
    .parameter "byteArray"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    .line 146
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->charset:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cid:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCl(Ljava/lang/String;)V
    .locals 0
    .parameter "cl"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cl:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->contentType:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setDataPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dataPath"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setMmsId(J)V
    .locals 0
    .parameter "mmsId"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->mmsId:J

    .line 110
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->name:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .parameter "sequence"

    .prologue
    .line 113
    iput p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->sequence:I

    .line 114
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->text:Ljava/lang/String;

    .line 142
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
    .line 164
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 166
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->mmsId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 168
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->sequence:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->contentType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->charset:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 294
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->mmsId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 296
    iget v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->sequence:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 298
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->contentType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->charset:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->cl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 315
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/MmsPart;->byteArray:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
