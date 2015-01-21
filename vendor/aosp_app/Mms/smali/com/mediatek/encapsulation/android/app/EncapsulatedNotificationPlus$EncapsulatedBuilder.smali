.class public Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
.super Ljava/lang/Object;
.source "EncapsulatedNotificationPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncapsulatedBuilder"
.end annotation


# instance fields
.field private mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    invoke-direct {v0, p1}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    .line 210
    return-void
.end method


# virtual methods
.method public create()Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    return-object v0
.end method

.method public setCancelable(Z)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    iget-object v0, v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0, p1}, Lcom/mediatek/notification/NotificationPlus$Builder;->setCancelable(Z)Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 322
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    .locals 1
    .parameter "message"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    iget-object v0, v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0, p1}, Lcom/mediatek/notification/NotificationPlus$Builder;->setMessage(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 239
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    .locals 1
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    iget-object v0, v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/notification/NotificationPlus$Builder;->setNegativeButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 301
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    .locals 1
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    iget-object v0, v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/notification/NotificationPlus$Builder;->setNeutralButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 280
    return-object p0
.end method

.method public setOnCancelListener(Landroid/app/PendingIntent;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    .locals 1
    .parameter "pendingIntent"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    iget-object v0, v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0, p1}, Lcom/mediatek/notification/NotificationPlus$Builder;->setOnCancelListener(Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 342
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    .locals 1
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    iget-object v0, v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/notification/NotificationPlus$Builder;->setPositiveButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 259
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    .locals 1
    .parameter "title"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;->mEncapsulatedNotification:Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;

    iget-object v0, v0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0, p1}, Lcom/mediatek/notification/NotificationPlus$Builder;->setTitle(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 222
    return-object p0
.end method
