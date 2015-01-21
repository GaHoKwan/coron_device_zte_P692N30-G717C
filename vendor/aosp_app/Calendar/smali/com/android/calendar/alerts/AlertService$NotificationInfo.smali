.class Lcom/android/calendar/alerts/AlertService$NotificationInfo;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationInfo"
.end annotation


# instance fields
.field allDay:Z

.field description:Ljava/lang/String;

.field endMillis:J

.field eventId:J

.field eventName:Ljava/lang/String;

.field location:Ljava/lang/String;

.field newAlert:Z

.field startMillis:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZ)V
    .locals 0
    .parameter "eventName"
    .parameter "location"
    .parameter "description"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "eventId"
    .parameter "allDay"
    .parameter "newAlert"

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    .line 834
    iput-object p2, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    .line 835
    iput-object p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->description:Ljava/lang/String;

    .line 836
    iput-wide p4, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    .line 837
    iput-wide p6, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    .line 838
    iput-wide p8, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    .line 839
    iput-boolean p11, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->newAlert:Z

    .line 840
    iput-boolean p10, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    .line 841
    return-void
.end method
