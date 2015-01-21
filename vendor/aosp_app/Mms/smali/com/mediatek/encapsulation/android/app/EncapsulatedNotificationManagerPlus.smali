.class public Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationManagerPlus;
.super Ljava/lang/Object;
.source "EncapsulatedNotificationManagerPlus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "id"

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/mediatek/notification/NotificationManagerPlus;->cancel(Landroid/content/Context;I)V

    .line 86
    return-void
.end method

.method public static notify(ILcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;)V
    .locals 1
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 63
    iget-object v0, p1, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlus:Lcom/mediatek/notification/NotificationPlus;

    invoke-static {p0, v0}, Lcom/mediatek/notification/NotificationManagerPlus;->notify(ILcom/mediatek/notification/NotificationPlus;)V

    .line 71
    return-void
.end method
