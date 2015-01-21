.class public Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "GetAllContsDataForBackupReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private requestingDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public appendRequestingDataType(I)Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;->requestingDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;->requestingDataTypes:Ljava/util/ArrayList;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;->requestingDataTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;->requestingDataTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    return-object p0
.end method

.method public getRequestingDataTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;->requestingDataTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRequestingAllTypes()Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllContsDataForBackupReq;->requestingDataTypes:Ljava/util/ArrayList;

    .line 113
    return-object p0
.end method
