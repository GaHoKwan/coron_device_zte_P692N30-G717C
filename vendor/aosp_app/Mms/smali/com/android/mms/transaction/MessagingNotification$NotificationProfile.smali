.class public final Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationProfile"
.end annotation


# instance fields
.field public appMute:J

.field public appMuteStart:J

.field public appNotificationEnabled:Z

.field public appRing:Ljava/lang/String;

.field public appVibrate:Z

.field public threadMute:J

.field public threadMuteStart:J

.field public threadNotificationEnabled:Z

.field public threadRing:Ljava/lang/String;

.field public threadVibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 1798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    iput-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appNotificationEnabled:Z

    .line 1800
    iput-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appVibrate:Z

    .line 1801
    iput-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    .line 1802
    iput-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMuteStart:J

    .line 1803
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appRing:Ljava/lang/String;

    .line 1805
    iput-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadNotificationEnabled:Z

    .line 1806
    iput-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadVibrate:Z

    .line 1807
    iput-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    .line 1808
    iput-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    .line 1809
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getRingtoneStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appRing:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appRing:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    goto :goto_0
.end method

.method needMute()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    .line 1816
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->notificationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method needVibrate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1823
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->notificationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appVibrate:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadVibrate:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method notificationEnabled()Z
    .locals 1

    .prologue
    .line 1812
    iget-boolean v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appNotificationEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadNotificationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
