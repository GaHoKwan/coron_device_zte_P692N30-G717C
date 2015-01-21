.class public Lcom/mediatek/apst/util/command/contacts/AddContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AddContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;

.field private fromFeature:I


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
.method public getContact()Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactReq;->contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    return-object v0
.end method

.method public getFromFeature()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactReq;->fromFeature:I

    return v0
.end method

.method public setContact(Lcom/mediatek/apst/util/entity/contacts/RawContact;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactReq;->contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 91
    return-void
.end method

.method public setFromFeature(I)V
    .locals 0
    .parameter "fromFeature"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactReq;->fromFeature:I

    .line 95
    return-void
.end method
