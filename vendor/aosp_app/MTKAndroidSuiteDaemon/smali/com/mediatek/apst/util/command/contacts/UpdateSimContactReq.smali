.class public Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "UpdateSimContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newOne:Lcom/mediatek/apst/util/entity/contacts/BaseContact;

.field private oldName:Ljava/lang/String;

.field private oldNumber:Ljava/lang/String;

.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->simId:I

    .line 77
    return-void
.end method


# virtual methods
.method public getNewOne()Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    return-object v0
.end method

.method public getOldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->oldName:Ljava/lang/String;

    return-object v0
.end method

.method public getOldNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->oldNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->simId:I

    return v0
.end method

.method public setNewOne(Lcom/mediatek/apst/util/entity/contacts/BaseContact;)V
    .locals 0
    .parameter "newOne"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->newOne:Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    .line 117
    return-void
.end method

.method public setOldName(Ljava/lang/String;)V
    .locals 0
    .parameter "oldName"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->oldName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setOldNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "oldNumber"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->oldNumber:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 112
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/UpdateSimContactReq;->simId:I

    .line 113
    return-void
.end method
