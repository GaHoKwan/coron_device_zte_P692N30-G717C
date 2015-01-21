.class public Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AddGroupMembershipReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contactIds:[J

.field private groupEntry:Lcom/mediatek/apst/util/entity/contacts/Group;

.field private groupId:J

.field private mSimIndexes:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getContactIds()[J
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->contactIds:[J

    return-object v0
.end method

.method public getGroupEntry()Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->groupEntry:Lcom/mediatek/apst/util/entity/contacts/Group;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->groupId:J

    return-wide v0
.end method

.method public getSimIndexes()[I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->mSimIndexes:[I

    return-object v0
.end method

.method public setContactIds([J)V
    .locals 0
    .parameter "contactIds"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->contactIds:[J

    .line 99
    return-void
.end method

.method public setGroupEntry(Lcom/mediatek/apst/util/entity/contacts/Group;)V
    .locals 0
    .parameter "groupEntry"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->groupEntry:Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 107
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->groupId:J

    .line 103
    return-void
.end method

.method public setSimIndexes([I)V
    .locals 0
    .parameter "simIndexes"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupMembershipReq;->mSimIndexes:[I

    .line 110
    return-void
.end method
