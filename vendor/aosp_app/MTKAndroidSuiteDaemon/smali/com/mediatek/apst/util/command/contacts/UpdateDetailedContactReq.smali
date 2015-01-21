.class public Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "UpdateDetailedContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newOne:Lcom/mediatek/apst/util/entity/contacts/RawContact;

.field private simEmail:Ljava/lang/String;

.field private simName:Ljava/lang/String;

.field private simNumber:Ljava/lang/String;

.field private sourceLocation:I

.field private updateId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public getNewOne()Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    return-object v0
.end method

.method public getSimEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->simEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->simName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->simNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLocation()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->sourceLocation:I

    return v0
.end method

.method public getUpdateId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->updateId:J

    return-wide v0
.end method

.method public setNewOne(Lcom/mediatek/apst/util/entity/contacts/RawContact;)V
    .locals 0
    .parameter "newOne"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 130
    return-void
.end method

.method public setSimEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "simEmail"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->simEmail:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0
    .parameter "simName"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->simName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setSimNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "simNumber"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->simNumber:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setSourceLocation(I)V
    .locals 0
    .parameter "sourceLocation"

    .prologue
    .line 143
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->sourceLocation:I

    .line 144
    return-void
.end method

.method public setUpdateId(J)V
    .locals 0
    .parameter "updateId"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateDetailedContactReq;->updateId:J

    .line 126
    return-void
.end method
