.class public Lcom/mediatek/apst/util/entity/contacts/BaseContact;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "BaseContact.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/DataStoreLocations;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private displayName:Ljava/lang/String;

.field private groupMemberships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/GroupMembership;",
            ">;"
        }
    .end annotation
.end field

.field private modifyTime:J

.field private primaryNumber:Ljava/lang/String;

.field private simName:Ljava/lang/String;

.field private storeLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;-><init>(J)V

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->storeLocation:I

    .line 108
    iput-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->primaryNumber:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    .line 111
    iput-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->simName:Ljava/lang/String;

    .line 112
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->clone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    .line 202
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    .line 203
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    return-object v0

    .line 203
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 204
    .local v1, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->clone()Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupMemberships()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/GroupMembership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->modifyTime:J

    return-wide v0
.end method

.method public getPrimaryNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->primaryNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->simName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreLocation()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->storeLocation:I

    return v0
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
    .line 282
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->storeLocation:I

    .line 286
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    .line 288
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->primaryNumber:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 291
    .local v2, size:I
    if-ltz v2, :cond_1

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    .line 293
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 301
    .end local v1           #i:I
    :goto_1
    return-void

    .line 294
    .restart local v1       #i:I
    :cond_0
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;-><init>()V

    .line 295
    .local v0, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 296
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    .end local v1           #i:I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

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
    .line 337
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->storeLocation:I

    .line 342
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->primaryNumber:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 347
    .local v2, size:I
    if-ltz v2, :cond_2

    .line 348
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    .line 349
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 358
    .end local v1           #i:I
    :goto_1
    const/4 v3, 0x2

    if-lt p2, v3, :cond_0

    .line 360
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->simName:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->modifyTime:J

    .line 364
    :cond_0
    return-void

    .line 350
    .restart local v1       #i:I
    :cond_1
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;-><init>()V

    .line 351
    .local v0, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 352
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v0           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    .end local v1           #i:I
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    goto :goto_1
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setGroupMemberships(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/GroupMembership;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, groupMemberships:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/GroupMembership;>;"
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setGroupMemberships(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/GroupMembership;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, groupMemberships:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/GroupMembership;>;"
    if-nez p1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setModifyTime(J)V
    .locals 0
    .parameter "modifyTime"

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->modifyTime:J

    .line 178
    return-void
.end method

.method public setPrimaryNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "primaryNumber"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->primaryNumber:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0
    .parameter "simName"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->simName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setStoreLocation(I)V
    .locals 0
    .parameter "storeLocation"

    .prologue
    .line 151
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->storeLocation:I

    .line 152
    return-void
.end method

.method public shallowClone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    .line 220
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    .line 221
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    return-object v0

    .line 221
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 222
    .local v1, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    return-object v0
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
    .line 259
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 261
    iget v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->storeLocation:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 263
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->primaryNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 269
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    :goto_1
    return-void

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 270
    .local v0, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 273
    .end local v0           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
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
    .line 306
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 309
    iget v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->storeLocation:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 311
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->displayName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->primaryNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 318
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->groupMemberships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    :goto_1
    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->simName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 330
    iget-wide v1, p0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->modifyTime:J

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 332
    :cond_0
    return-void

    .line 318
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 319
    .local v0, groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 322
    .end local v0           #groupMembership:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method
