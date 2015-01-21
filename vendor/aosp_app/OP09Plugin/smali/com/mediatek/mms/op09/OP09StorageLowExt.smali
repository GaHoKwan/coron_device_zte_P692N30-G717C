.class public Lcom/mediatek/mms/op09/OP09StorageLowExt;
.super Lcom/mediatek/mms/ext/StorageLowImpl;
.source "OP09StorageLowExt.java"


# static fields
.field private static final STORAGE_LOW_NOTIFICATION_ID:I = 0xf0

.field private static final TAG:Ljava/lang/String; = "Mms/OP09StorageLowExt"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/StorageLowImpl;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09StorageLowExt;->mResources:Landroid/content/res/Resources;

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09StorageLowExt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09StorageLowExt;->mResources:Landroid/content/res/Resources;

    .line 55
    return-void
.end method


# virtual methods
.method public cancelNotification(Landroid/app/NotificationManager;)V
    .locals 2
    .parameter "notificationMgr"

    .prologue
    .line 73
    const-string v0, "Mms/OP09StorageLowExt"

    const-string v1, "OP09StorageLowExt.cancelNotification()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v0, 0xf0

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 75
    return-void
.end method

.method public getNotificationBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const-string v0, "Mms/OP09StorageLowExt"

    const-string v1, "OP09StorageLowExt.getNotificationBody()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StorageLowExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-string v0, "Mms/OP09StorageLowExt"

    const-string v1, "OP09StorageLowExt.getNotificationTitle()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StorageLowExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showNotification(Landroid/app/NotificationManager;Landroid/app/Notification;)V
    .locals 2
    .parameter "notificationMgr"
    .parameter "notification"

    .prologue
    .line 68
    const-string v0, "Mms/OP09StorageLowExt"

    const-string v1, "OP09StorageLowExt.showNotification()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v0, 0xf0

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    return-void
.end method
