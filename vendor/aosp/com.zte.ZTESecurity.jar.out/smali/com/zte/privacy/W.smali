.class public Lcom/zte/privacy/W;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyManager"


# instance fields
.field private cd:Lcom/zte/privacy/S;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/privacy/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    iput-object p1, p0, Lcom/zte/privacy/W;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addLockedPackage(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1}, Lcom/zte/privacy/S;->addLockedPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkCallingPermission(Ljava/lang/String;I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/S;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public checkNetworkAccessPermission(Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/S;->checkNetworkAccessPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkRecordingPermission(Ljava/lang/String;I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/S;->checkRecordingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public clearAllLockedPackages()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0}, Lcom/zte/privacy/S;->clearAllLockedPackages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1}, Lcom/zte/privacy/S;->clearPackagePermissionSetting(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enforceAppLocked(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1}, Lcom/zte/privacy/S;->enforceAppLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAllLockedPackages()Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0}, Lcom/zte/privacy/S;->getAllLockedPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAntiPhoneRecordingSetting()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0}, Lcom/zte/privacy/S;->getAntiPhoneRecordingSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/d;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1}, Lcom/zte/privacy/S;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecurityExtentionVersion()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0}, Lcom/zte/privacy/S;->getSecurityExtentionVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v1, p1}, Lcom/zte/privacy/S;->isPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1}, Lcom/zte/privacy/S;->removeLockedPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public savePackageSetting(Lcom/zte/privacy/d;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1}, Lcom/zte/privacy/S;->savePackageSetting(Lcom/zte/privacy/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAntiPhoneRecordingSetting(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/W;->cd:Lcom/zte/privacy/S;

    invoke-interface {v0, p1}, Lcom/zte/privacy/S;->setAntiPhoneRecordingSetting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
