.class public Lcom/mediatek/mms/ext/StorageLowImpl;
.super Landroid/content/ContextWrapper;
.source "StorageLowImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IStorageLow;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/StorageLowImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public cancelNotification(Landroid/app/NotificationManager;)V
    .locals 2
    .parameter "notificationMgr"

    .prologue
    .line 67
    const-string v0, "Mms/StorageLowImpl"

    const-string v1, "StorageLowImpl.cancelNotification"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public getNotificationBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-string v0, "Mms/StorageLowImpl"

    const-string v1, "StorageLowImpl.getNotificationBody"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    const-string v0, "Mms/StorageLowImpl"

    const-string v1, "StorageLowImpl.getNotificationTitle"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public showNotification(Landroid/app/NotificationManager;Landroid/app/Notification;)V
    .locals 2
    .parameter "notificationMgr"
    .parameter "notification"

    .prologue
    .line 63
    const-string v0, "Mms/StorageLowImpl"

    const-string v1, "StorageLowImpl.showNotification"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
