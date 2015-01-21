.class public Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "AddGroupRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private insertedId:J

.field private result:Lcom/mediatek/apst/util/entity/contacts/Group;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 70
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 71
    return-void
.end method


# virtual methods
.method public getInsertedId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;->insertedId:J

    return-wide v0
.end method

.method public getResult()Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;->result:Lcom/mediatek/apst/util/entity/contacts/Group;

    return-object v0
.end method

.method public setInsertedId(J)V
    .locals 0
    .parameter "insertedId"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;->insertedId:J

    .line 91
    return-void
.end method

.method public setResult(Lcom/mediatek/apst/util/entity/contacts/Group;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupRsp;->result:Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 95
    return-void
.end method
