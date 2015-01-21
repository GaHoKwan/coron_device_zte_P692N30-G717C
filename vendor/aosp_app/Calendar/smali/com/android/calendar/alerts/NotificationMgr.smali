.class public abstract Lcom/android/calendar/alerts/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(I)V
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x0

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAllBetween(II)V

    .line 15
    return-void
.end method

.method public cancelAllBetween(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 21
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/NotificationMgr;->cancel(I)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public abstract notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V
.end method
