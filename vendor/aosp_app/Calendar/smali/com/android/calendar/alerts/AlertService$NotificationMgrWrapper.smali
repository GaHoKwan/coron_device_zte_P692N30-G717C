.class public Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;
.super Lcom/android/calendar/alerts/NotificationMgr;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMgrWrapper"
.end annotation


# instance fields
.field mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0
    .parameter "nm"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/calendar/alerts/NotificationMgr;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    .line 164
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 169
    return-void
.end method

.method public notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V
    .locals 2
    .parameter "id"
    .parameter "nw"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    iget-object v1, p2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 174
    return-void
.end method
