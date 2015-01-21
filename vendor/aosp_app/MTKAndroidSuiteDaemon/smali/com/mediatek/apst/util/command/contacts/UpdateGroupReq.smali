.class public Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "UpdateGroupReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newOne:Lcom/mediatek/apst/util/entity/contacts/Group;

.field private oldName:Ljava/lang/String;

.field private updateId:J


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
.method public getNewOne()Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/Group;

    return-object v0
.end method

.method public getOldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->oldName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateId()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->updateId:J

    return-wide v0
.end method

.method public setNewOne(Lcom/mediatek/apst/util/entity/contacts/Group;)V
    .locals 0
    .parameter "newOne"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 97
    return-void
.end method

.method public setOldName(Ljava/lang/String;)V
    .locals 0
    .parameter "oldName"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->oldName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUpdateId(J)V
    .locals 0
    .parameter "updateId"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateGroupReq;->updateId:J

    .line 93
    return-void
.end method
