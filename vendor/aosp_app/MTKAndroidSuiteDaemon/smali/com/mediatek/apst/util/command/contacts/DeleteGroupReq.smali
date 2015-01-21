.class public Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "DeleteGroupReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteIds:[J

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;"
        }
    .end annotation
.end field


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
.method public getDeleteIds()[J
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;->deleteIds:[J

    return-object v0
.end method

.method public getGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDeleteId([J)V
    .locals 0
    .parameter "deleteIds"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;->deleteIds:[J

    .line 91
    return-void
.end method

.method public setGroups(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteGroupReq;->mGroups:Ljava/util/ArrayList;

    .line 94
    return-void
.end method
