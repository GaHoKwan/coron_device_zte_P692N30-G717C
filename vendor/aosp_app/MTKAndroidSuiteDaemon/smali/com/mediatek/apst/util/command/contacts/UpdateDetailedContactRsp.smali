.class public Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "UpdateDetailedContactRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private result:Lcom/mediatek/apst/util/entity/contacts/RawContact;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 68
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 69
    return-void
.end method


# virtual methods
.method public getResult()Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;->result:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    return-object v0
.end method

.method public setResult(Lcom/mediatek/apst/util/entity/contacts/RawContact;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactRsp;->result:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 91
    return-void
.end method
