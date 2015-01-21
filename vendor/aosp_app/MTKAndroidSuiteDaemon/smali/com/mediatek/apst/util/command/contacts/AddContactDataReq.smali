.class public Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AddContactDataReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private data:Lcom/mediatek/apst/util/entity/contacts/ContactData;


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
.method public getData()Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;->data:Lcom/mediatek/apst/util/entity/contacts/ContactData;

    return-object v0
.end method

.method public setData(Lcom/mediatek/apst/util/entity/contacts/ContactData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddContactDataReq;->data:Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 85
    return-void
.end method
