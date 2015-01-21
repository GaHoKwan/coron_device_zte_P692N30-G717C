.class public Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AddSimContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contact:Lcom/mediatek/apst/util/entity/contacts/BaseContact;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getContact()Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;->contact:Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    return-object v0
.end method

.method public setContact(Lcom/mediatek/apst/util/entity/contacts/BaseContact;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddSimContactReq;->contact:Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    .line 85
    return-void
.end method
