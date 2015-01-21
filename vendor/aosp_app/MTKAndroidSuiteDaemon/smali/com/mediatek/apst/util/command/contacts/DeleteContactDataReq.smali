.class public Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "DeleteContactDataReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteIds:[J

.field private groupEntry:Lcom/mediatek/apst/util/entity/contacts/Group;

.field private groupId:J

.field private mSimIndexes:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public getDeleteIds()[J
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->deleteIds:[J

    return-object v0
.end method

.method public getGroupEntry()Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->groupEntry:Lcom/mediatek/apst/util/entity/contacts/Group;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->groupId:J

    return-wide v0
.end method

.method public getSimIndexes()[I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->mSimIndexes:[I

    return-object v0
.end method

.method public setDeleteIds([J)V
    .locals 0
    .parameter "deleteIds"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->deleteIds:[J

    .line 98
    return-void
.end method

.method public setGroupEntry(Lcom/mediatek/apst/util/entity/contacts/Group;)V
    .locals 0
    .parameter "groupEntry"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->groupEntry:Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 105
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->groupId:J

    .line 101
    return-void
.end method

.method public setSimIndexes([I)V
    .locals 0
    .parameter "simIndexes"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactDataReq;->mSimIndexes:[I

    .line 108
    return-void
.end method
