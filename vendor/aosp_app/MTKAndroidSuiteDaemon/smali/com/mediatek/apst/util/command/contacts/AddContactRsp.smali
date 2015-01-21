.class public Lcom/mediatek/apst/util/command/contacts/AddContactRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "AddContactRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private fromFeature:I

.field private insertedId:J

.field private result:Lcom/mediatek/apst/util/entity/contacts/RawContact;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 72
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 73
    return-void
.end method


# virtual methods
.method public getFromFeature()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->fromFeature:I

    return v0
.end method

.method public getInsertedId()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->insertedId:J

    return-wide v0
.end method

.method public getResult()Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->result:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    return-object v0
.end method

.method public setFromFeature(I)V
    .locals 0
    .parameter "fromFeature"

    .prologue
    .line 104
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->fromFeature:I

    .line 105
    return-void
.end method

.method public setInsertedId(J)V
    .locals 0
    .parameter "insertedId"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->insertedId:J

    .line 97
    return-void
.end method

.method public setResult(Lcom/mediatek/apst/util/entity/contacts/RawContact;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactRsp;->result:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 101
    return-void
.end method
