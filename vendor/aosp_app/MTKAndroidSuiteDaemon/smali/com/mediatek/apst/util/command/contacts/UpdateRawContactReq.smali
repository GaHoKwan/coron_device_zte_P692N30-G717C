.class public Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "UpdateRawContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newOne:Lcom/mediatek/apst/util/entity/contacts/RawContact;

.field private updateId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getNewOne()Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    return-object v0
.end method

.method public getUpdateId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;->updateId:J

    return-wide v0
.end method

.method public setNewOne(Lcom/mediatek/apst/util/entity/contacts/RawContact;)V
    .locals 0
    .parameter "newOne"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 95
    return-void
.end method

.method public setUpdateId(J)V
    .locals 0
    .parameter "updateId"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateRawContactReq;->updateId:J

    .line 91
    return-void
.end method