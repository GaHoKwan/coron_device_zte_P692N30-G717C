.class public Lcom/zte/retrieve/upgrade/UpgradeInfo;
.super Ljava/lang/Object;
.source "UpgradeInfo.java"


# instance fields
.field public isNewVer:Z

.field public updateUrl:Ljava/lang/String;

.field public verProp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeInfo;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVerProp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeInfo;->verProp:Ljava/lang/String;

    return-object v0
.end method

.method public isNewVer()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/zte/retrieve/upgrade/UpgradeInfo;->isNewVer:Z

    return v0
.end method

.method public setNewVer(Z)V
    .locals 0
    .parameter "isNewVer"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/zte/retrieve/upgrade/UpgradeInfo;->isNewVer:Z

    .line 27
    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "updateUrl"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeInfo;->updateUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setVerProp(Ljava/lang/String;)V
    .locals 0
    .parameter "verProp"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeInfo;->verProp:Ljava/lang/String;

    .line 33
    return-void
.end method
