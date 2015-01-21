.class public Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;
.super Lcom/mediatek/apst/util/command/RawBlockRequest;
.source "RestoreGroupReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mGroupList:Ljava/util/ArrayList;
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
    .line 67
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest;-><init>(I)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;->mGroupList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method


# virtual methods
.method public getGroupList()Ljava/util/ArrayList;
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
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;->mGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGroupList(Ljava/util/ArrayList;)V
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
    .line 72
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreGroupReq;->mGroupList:Ljava/util/ArrayList;

    .line 73
    return-void
.end method
