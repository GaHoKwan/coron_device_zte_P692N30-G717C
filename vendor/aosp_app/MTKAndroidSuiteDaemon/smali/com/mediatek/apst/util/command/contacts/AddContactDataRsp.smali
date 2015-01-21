.class public Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "AddContactDataRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private insertedId:J

.field private result:Lcom/mediatek/apst/util/entity/contacts/ContactData;


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
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;->insertedId:J

    return-wide v0
.end method

.method public getResult()Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;->result:Lcom/mediatek/apst/util/entity/contacts/ContactData;

    return-object v0
.end method

.method public setInsertedId(J)V
    .locals 0
    .parameter "insertedId"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;->insertedId:J

    .line 91
    return-void
.end method

.method public setResult(Lcom/mediatek/apst/util/entity/contacts/ContactData;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactDataRsp;->result:Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 95
    return-void
.end method
