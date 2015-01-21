.class public Lcom/mediatek/apst/util/command/contacts/AddGroupReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AddGroupReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private group:Lcom/mediatek/apst/util/entity/contacts/Group;


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
.method public getGroup()Lcom/mediatek/apst/util/entity/contacts/Group;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupReq;->group:Lcom/mediatek/apst/util/entity/contacts/Group;

    return-object v0
.end method

.method public setGroup(Lcom/mediatek/apst/util/entity/contacts/Group;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/AddGroupReq;->group:Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 85
    return-void
.end method
