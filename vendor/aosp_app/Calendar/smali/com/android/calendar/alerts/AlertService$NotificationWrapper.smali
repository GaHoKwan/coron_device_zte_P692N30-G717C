.class public Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationWrapper"
.end annotation


# instance fields
.field mBegin:J

.field mEnd:J

.field mEventId:J

.field mNotification:Landroid/app/Notification;

.field mNw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Notification;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;IJJJZ)V
    .locals 0
    .parameter "n"
    .parameter "notificationId"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "doPopup"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 138
    iput-wide p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mEventId:J

    .line 139
    iput-wide p5, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mBegin:J

    .line 140
    iput-wide p7, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mEnd:J

    .line 144
    return-void
.end method


# virtual methods
.method public add(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;)V
    .locals 1
    .parameter "nw"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method
