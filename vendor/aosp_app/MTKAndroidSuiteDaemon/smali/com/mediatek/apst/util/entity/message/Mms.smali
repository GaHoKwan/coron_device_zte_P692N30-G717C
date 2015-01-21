.class public Lcom/mediatek/apst/util/entity/message/Mms;
.super Lcom/mediatek/apst/util/entity/message/Message;
.source "Mms.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private contentType:Ljava/lang/String;

.field private d_rpt:Ljava/lang/String;

.field private m_cls:Ljava/lang/String;

.field private m_id:Ljava/lang/String;

.field private m_size:Ljava/lang/String;

.field private m_type:Ljava/lang/String;

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/message/MmsPart;",
            ">;"
        }
    .end annotation
.end field

.field private seen:Ljava/lang/String;

.field private sub_cs:Ljava/lang/String;

.field private tr_id:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/message/Mms;-><init>(J)V

    .line 53
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;-><init>(J)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Mms;->clone()Lcom/mediatek/apst/util/entity/message/Mms;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/message/Mms;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/message/Message;->clone()Lcom/mediatek/apst/util/entity/message/Message;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/Mms;

    .line 161
    .local v0, copy:Lcom/mediatek/apst/util/entity/message/Mms;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    .line 162
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    return-object v0

    .line 162
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/message/MmsPart;

    .line 163
    .local v1, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getD_rpt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->d_rpt:Ljava/lang/String;

    return-object v0
.end method

.method public getM_cls()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_cls:Ljava/lang/String;

    return-object v0
.end method

.method public getM_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getM_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_size:Ljava/lang/String;

    return-object v0
.end method

.method public getM_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_type:Ljava/lang/String;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/message/MmsPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getSeen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->seen:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_cs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->sub_cs:Ljava/lang/String;

    return-object v0
.end method

.method public getTr_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->tr_id:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->v:Ljava/lang/String;

    return-object v0
.end method

.method public readAllWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 278
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_id:Ljava/lang/String;

    .line 285
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->sub_cs:Ljava/lang/String;

    .line 288
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_cls:Ljava/lang/String;

    .line 292
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_type:Ljava/lang/String;

    .line 296
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->v:Ljava/lang/String;

    .line 301
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_size:Ljava/lang/String;

    .line 305
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->tr_id:Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->d_rpt:Ljava/lang/String;

    .line 311
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->seen:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 316
    .local v2, size:I
    const/4 v3, -0x1

    if-eq v3, v2, :cond_1

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    .line 318
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 326
    .end local v0           #i:I
    :goto_1
    return-void

    .line 319
    .restart local v0       #i:I
    :cond_0
    new-instance v1, Lcom/mediatek/apst/util/entity/message/MmsPart;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/message/MmsPart;-><init>()V

    .line 320
    .local v1, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/apst/util/entity/message/MmsPart;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 321
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0           #i:I
    .end local v1           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    goto :goto_1
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/message/Message;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 195
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 198
    .local v2, size:I
    const/4 v3, -0x1

    if-eq v3, v2, :cond_1

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 208
    .end local v0           #i:I
    :goto_1
    return-void

    .line 201
    .restart local v0       #i:I
    :cond_0
    new-instance v1, Lcom/mediatek/apst/util/entity/message/MmsPart;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/message/MmsPart;-><init>()V

    .line 202
    .local v1, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/message/MmsPart;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 203
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0           #i:I
    .end local v1           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    goto :goto_1
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 215
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setD_rpt(Ljava/lang/String;)V
    .locals 0
    .parameter "dRpt"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->d_rpt:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setM_cls(Ljava/lang/String;)V
    .locals 0
    .parameter "mCls"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_cls:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setM_id(Ljava/lang/String;)V
    .locals 0
    .parameter "mId"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_id:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setM_size(Ljava/lang/String;)V
    .locals 0
    .parameter "mSize"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_size:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setM_type(Ljava/lang/String;)V
    .locals 0
    .parameter "mType"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_type:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/message/MmsPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, parts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    .line 111
    return-void
.end method

.method public setSeen(Ljava/lang/String;)V
    .locals 0
    .parameter "seen"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->seen:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSub_cs(Ljava/lang/String;)V
    .locals 0
    .parameter "subCs"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->sub_cs:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTr_id(Ljava/lang/String;)V
    .locals 0
    .parameter "trId"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->tr_id:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->v:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public writeAllWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 231
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_id:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->sub_cs:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_cls:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_type:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->v:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->m_size:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->tr_id:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->d_rpt:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->seen:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 266
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    :goto_1
    return-void

    .line 266
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/MmsPart;

    .line 267
    .local v0, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/apst/util/entity/message/MmsPart;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 270
    .end local v0           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/message/Message;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Mms;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    :goto_1
    return-void

    .line 180
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/MmsPart;

    .line 181
    .local v0, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/message/MmsPart;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 184
    .end local v0           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Mms;->contentType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 224
    return-void
.end method
