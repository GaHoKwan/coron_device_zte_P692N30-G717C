.class final Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;
.super Ljava/lang/Object;
.source "CBMessagingNotification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CBMessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CBNotificationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/CBMessagingNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;)I
    .locals 4
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 241
    invoke-virtual {p2}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    check-cast p1, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    .end local p1
    check-cast p2, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;->compare(Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;)I

    move-result v0

    return v0
.end method
