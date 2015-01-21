.class Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;
.super Ljava/lang/Object;
.source "WifiOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field direction:I

.field id:I

.field timeStamp:J

.field totalCurrent:J

.field totalTotal:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationItem;->timeStamp:J

    return-void
.end method
