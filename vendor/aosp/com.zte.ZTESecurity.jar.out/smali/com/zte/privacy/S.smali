.class public interface abstract Lcom/zte/privacy/S;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addLockedPackage(Ljava/lang/String;)V
.end method

.method public abstract areNotificationEnabled(Ljava/lang/String;)Z
.end method

.method public abstract checkCallingPermission(Ljava/lang/String;I)I
.end method

.method public abstract checkNeedAskPermission(Ljava/lang/String;IZ)I
.end method

.method public abstract checkNeedAskSysPermission(Ljava/lang/String;IZ)I
.end method

.method public abstract checkNetworkAccessPermission(Ljava/lang/String;I)V
.end method

.method public abstract checkRecordingPermission(Ljava/lang/String;I)I
.end method

.method public abstract clearAllLockedPackages()V
.end method

.method public abstract clearPackagePermissionSetting(Ljava/lang/String;)V
.end method

.method public abstract enforceAppLocked(Ljava/lang/String;)V
.end method

.method public abstract getAllLockedPackages()Ljava/util/List;
.end method

.method public abstract getAntiPhoneRecordingSetting()I
.end method

.method public abstract getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/d;
.end method

.method public abstract getSecurityExtentionVersion()I
.end method

.method public abstract isPackageLocked(Ljava/lang/String;)Z
.end method

.method public abstract removeLockedPackage(Ljava/lang/String;)V
.end method

.method public abstract savePackageSetting(Lcom/zte/privacy/d;)V
.end method

.method public abstract setAntiPhoneRecordingSetting(I)V
.end method

.method public abstract setNotificationsEnabled(Ljava/lang/String;Z)V
.end method
