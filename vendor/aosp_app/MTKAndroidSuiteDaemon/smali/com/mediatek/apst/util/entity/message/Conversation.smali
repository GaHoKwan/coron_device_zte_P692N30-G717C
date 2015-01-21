.class public Lcom/mediatek/apst/util/entity/message/Conversation;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private date:J

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private snippet:Ljava/lang/String;

.field private target:Lcom/mediatek/apst/util/entity/message/TargetAddress;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/message/Conversation;-><init>(J)V

    .line 85
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    .line 81
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/Conversation;->clone()Lcom/mediatek/apst/util/entity/message/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/message/Conversation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/Conversation;

    .line 133
    .local v0, copy:Lcom/mediatek/apst/util/entity/message/Conversation;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    .line 134
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    return-object v0

    .line 134
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/message/Message;

    .line 135
    .local v1, msg:Lcom/mediatek/apst/util/entity/message/Message;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->date:J

    return-wide v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/message/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 171
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v3, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->date:J

    .line 175
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->snippet:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 178
    .local v2, size:I
    if-ltz v2, :cond_1

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    .line 180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 188
    .end local v0           #i:I
    :goto_1
    return-void

    .line 181
    .restart local v0       #i:I
    :cond_0
    new-instance v1, Lcom/mediatek/apst/util/entity/message/Message;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/message/Message;-><init>()V

    .line 182
    .local v1, message:Lcom/mediatek/apst/util/entity/message/Message;
    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/message/Message;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 183
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0           #i:I
    .end local v1           #message:Lcom/mediatek/apst/util/entity/message/Message;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    goto :goto_1
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 195
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v3, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->date:J

    .line 199
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->snippet:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 202
    .local v2, size:I
    if-ltz v2, :cond_1

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 212
    .end local v0           #i:I
    :goto_1
    return-void

    .line 205
    .restart local v0       #i:I
    :cond_0
    new-instance v1, Lcom/mediatek/apst/util/entity/message/Message;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/message/Message;-><init>()V

    .line 206
    .local v1, message:Lcom/mediatek/apst/util/entity/message/Message;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 207
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0           #i:I
    .end local v1           #message:Lcom/mediatek/apst/util/entity/message/Message;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    goto :goto_1
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->date:J

    .line 115
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0
    .parameter "snippet"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->snippet:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 111
    return-void
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
    .line 146
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 150
    iget-wide v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->date:J

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->snippet:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :goto_1
    return-void

    .line 156
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/Message;

    .line 157
    .local v0, message:Lcom/mediatek/apst/util/entity/message/Message;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/message/Message;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 160
    .end local v0           #message:Lcom/mediatek/apst/util/entity/message/Message;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
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
    .line 217
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 219
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->target:Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 221
    iget-wide v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->date:J

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 223
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->snippet:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 227
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/message/Conversation;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    :goto_1
    return-void

    .line 227
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/Message;

    .line 228
    .local v0, message:Lcom/mediatek/apst/util/entity/message/Message;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/apst/util/entity/message/Message;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 231
    .end local v0           #message:Lcom/mediatek/apst/util/entity/message/Message;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method
