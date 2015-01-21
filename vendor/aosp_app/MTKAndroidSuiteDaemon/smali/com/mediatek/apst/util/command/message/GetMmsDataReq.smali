.class public Lcom/mediatek/apst/util/command/message/GetMmsDataReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "GetMmsDataReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private isBackup:Z

.field private mImportList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getImportList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;->mImportList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getIsBackup()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;->isBackup:Z

    return v0
.end method

.method public setImportList(Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, mImportList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;->mImportList:Ljava/util/LinkedList;

    .line 98
    return-void
.end method

.method public setIsBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/GetMmsDataReq;->isBackup:Z

    .line 94
    return-void
.end method
