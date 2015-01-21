.class public Lcom/mediatek/apst/util/entity/message/TargetAddress;
.super Ljava/lang/Object;
.source "TargetAddress.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private address:Ljava/lang/String;

.field private contactId:J

.field private mmsId:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "address"
    .parameter "name"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->contactId:J

    .line 82
    iput-object p3, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->address:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->name:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 87
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public clone()Lcom/mediatek/apst/util/entity/message/TargetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 144
    .local v0, copy:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->clone()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->contactId:J

    return-wide v0
.end method

.method public getMmsId()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->mmsId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->contactId:J

    .line 169
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->address:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->name:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->address:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setContactId(J)V
    .locals 0
    .parameter "contactId"

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->contactId:J

    .line 118
    return-void
.end method

.method public setMmsId(J)V
    .locals 0
    .parameter "mmsId"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->mmsId:J

    .line 130
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->name:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->name:Ljava/lang/String;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->address:Ljava/lang/String;

    goto :goto_0
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
    .line 158
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->contactId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 160
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->address:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/message/TargetAddress;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 163
    return-void
.end method
