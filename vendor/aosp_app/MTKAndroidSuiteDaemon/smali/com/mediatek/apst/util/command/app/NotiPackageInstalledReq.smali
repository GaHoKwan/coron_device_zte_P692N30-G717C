.class public Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotiPackageInstalledReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private applications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/app/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public getApplications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/app/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;->applications:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;->uid:I

    return v0
.end method

.method public setApplications(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/app/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, applications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/app/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;->applications:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 89
    iput p1, p0, Lcom/mediatek/apst/util/command/app/NotiPackageInstalledReq;->uid:I

    .line 90
    return-void
.end method
