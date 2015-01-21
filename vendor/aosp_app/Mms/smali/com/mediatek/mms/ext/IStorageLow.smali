.class public interface abstract Lcom/mediatek/mms/ext/IStorageLow;
.super Ljava/lang/Object;
.source "IStorageLow.java"


# static fields
.field public static final ACTION_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.OP09_DEVICES_STORAGE_LOW"

.field public static final ACTION_STORAGE_NOT_LOW:Ljava/lang/String; = "android.intent.action.OP09_DEVICES_STORAGE_NOT_LOW"


# virtual methods
.method public abstract cancelNotification(Landroid/app/NotificationManager;)V
.end method

.method public abstract getNotificationBody()Ljava/lang/String;
.end method

.method public abstract getNotificationTitle()Ljava/lang/String;
.end method

.method public abstract showNotification(Landroid/app/NotificationManager;Landroid/app/Notification;)V
.end method
