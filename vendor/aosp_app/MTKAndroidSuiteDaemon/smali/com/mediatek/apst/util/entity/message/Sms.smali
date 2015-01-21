.class public Lcom/mediatek/apst/util/entity/message/Sms;
.super Lcom/mediatek/apst/util/entity/message/Message;
.source "Sms.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private body:Ljava/lang/String;

.field private serviceCenter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>(J)V

    .line 77
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;-><init>(J)V

    .line 73
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Sms;->clone()Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/message/Message;->clone()Lcom/mediatek/apst/util/entity/message/Message;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/Sms;

    .line 112
    .local v0, copy:Lcom/mediatek/apst/util/entity/message/Sms;
    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->serviceCenter:Ljava/lang/String;

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
    .line 132
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/message/Message;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->serviceCenter:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->body:Ljava/lang/String;

    .line 137
    return-void
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
    .line 142
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 144
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->serviceCenter:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->body:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Sms;->body:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setServiceCenter(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceCenter"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Sms;->serviceCenter:Ljava/lang/String;

    .line 95
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
    .line 120
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/message/Message;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->serviceCenter:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->body:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 125
    return-void
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
    .line 152
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->serviceCenter:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Sms;->body:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 157
    return-void
.end method
