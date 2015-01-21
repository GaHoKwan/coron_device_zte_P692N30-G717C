.class public Lcom/mediatek/calendar/patchs/alerts/AlertServicePatch;
.super Ljava/lang/Object;
.source "AlertServicePatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelNotify(IZZLcom/android/calendar/alerts/NotificationMgr;)V
    .locals 0
    .parameter "id"
    .parameter "quietUpdate"
    .parameter "doPopup"
    .parameter "notificationMgr"

    .prologue
    .line 17
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 18
    invoke-virtual {p4, p1}, Lcom/android/calendar/alerts/NotificationMgr;->cancel(I)V

    .line 20
    :cond_0
    return-void
.end method
