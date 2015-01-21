.class public Lcom/mediatek/apst/util/command/message/ImportMmsReq;
.super Lcom/mediatek/apst/util/command/RawBlockRequest;
.source "ImportMmsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private isBackup:Z

.field private isLastImport:Z

.field private mImportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 68
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest;-><init>(I)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->mImportList:Ljava/util/ArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method public getImportList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->mImportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsBackup()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->isBackup:Z

    return v0
.end method

.method public isIsLastImport()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->isLastImport:Z

    return v0
.end method

.method public setImportList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, mImportList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->mImportList:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public setIsBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->isBackup:Z

    .line 92
    return-void
.end method

.method public setIsLastImport(Z)V
    .locals 0
    .parameter "isLastImport"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/ImportMmsReq;->isLastImport:Z

    .line 101
    return-void
.end method
