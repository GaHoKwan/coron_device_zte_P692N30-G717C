.class public Lcom/mediatek/apst/util/entity/contacts/Group;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Group.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private account_name:Ljava/lang/String;

.field private account_type:Ljava/lang/String;

.field private deleted:Ljava/lang/String;

.field private dirty:Ljava/lang/String;

.field private group_visible:Ljava/lang/String;

.field private mAccountId:I

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/BaseContact;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Ljava/lang/String;

.field private should_sync:Ljava/lang/String;

.field private systemId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 125
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/Group;-><init>(J)V

    .line 126
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/BaseContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, members:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/BaseContact;>;"
    invoke-interface {p1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addMember(Lcom/mediatek/apst/util/entity/contacts/BaseContact;)Z
    .locals 1
    .parameter "member"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    return-void
.end method

.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Group;->clone()Lcom/mediatek/apst/util/entity/contacts/Group;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 291
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Group;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    .line 293
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    return-object v0

    .line 293
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    .line 294
    .local v1, member:Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->clone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAccountId()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->mAccountId:I

    return v0
.end method

.method public getAccount_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_type:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->deleted:Ljava/lang/String;

    return-object v0
.end method

.method public getDirty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->dirty:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_visible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->group_visible:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/BaseContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getShould_sync()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->should_sync:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->version:Ljava/lang/String;

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
    .line 423
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 425
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->title:Ljava/lang/String;

    .line 427
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->notes:Ljava/lang/String;

    .line 429
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->systemId:Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->deleted:Ljava/lang/String;

    .line 433
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_name:Ljava/lang/String;

    .line 435
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_type:Ljava/lang/String;

    .line 437
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->version:Ljava/lang/String;

    .line 439
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->dirty:Ljava/lang/String;

    .line 441
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->group_visible:Ljava/lang/String;

    .line 443
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->should_sync:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .parameter "buffer"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 479
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->title:Ljava/lang/String;

    .line 481
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->notes:Ljava/lang/String;

    .line 483
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->systemId:Ljava/lang/String;

    .line 484
    const/16 v0, 0x46c

    if-lt p2, v0, :cond_0

    .line 486
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->deleted:Ljava/lang/String;

    .line 488
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_name:Ljava/lang/String;

    .line 490
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_type:Ljava/lang/String;

    .line 492
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->version:Ljava/lang/String;

    .line 494
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->dirty:Ljava/lang/String;

    .line 496
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->group_visible:Ljava/lang/String;

    .line 498
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->should_sync:Ljava/lang/String;

    .line 502
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/BaseContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, members:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/BaseContact;>;"
    invoke-interface {p1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeMember(I)Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .locals 1
    .parameter "location"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    return-object v0
.end method

.method public removeMember(Lcom/mediatek/apst/util/entity/contacts/BaseContact;)Z
    .locals 1
    .parameter "member"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAccountId(I)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 241
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->mAccountId:I

    .line 242
    return-void
.end method

.method public setAccount_name(Ljava/lang/String;)V
    .locals 0
    .parameter "account_name"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_name:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setAccount_type(Ljava/lang/String;)V
    .locals 0
    .parameter "account_type"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_type:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setDeleted(Ljava/lang/String;)V
    .locals 0
    .parameter "deleted"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->deleted:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setDirty(Ljava/lang/String;)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->dirty:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setGroup_visible(Ljava/lang/String;)V
    .locals 0
    .parameter "group_visible"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->group_visible:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/BaseContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, members:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/BaseContact;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    .line 234
    return-void
.end method

.method public setMembers(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/BaseContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, members:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/BaseContact;>;"
    if-nez p1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    .line 257
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    .line 258
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMembers(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/BaseContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, members:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/BaseContact;>;"
    if-nez p1, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    .line 275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .parameter "notes"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->notes:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setShould_sync(Ljava/lang/String;)V
    .locals 0
    .parameter "should_sync"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->should_sync:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .parameter "systemId"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->systemId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->title:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->version:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public shallowClone()Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 309
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Group;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    .line 311
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    return-object v0

    .line 311
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    .line 312
    .local v1, member:Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/contacts/Group;->members:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 394
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->notes:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->systemId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->deleted:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_type:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->version:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->dirty:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->group_visible:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->should_sync:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .parameter "buffer"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 450
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->notes:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->systemId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 455
    const/16 v0, 0x46c

    if-lt p2, v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->deleted:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->account_type:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->version:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->dirty:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->group_visible:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Group;->should_sync:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 473
    :cond_0
    return-void
.end method
