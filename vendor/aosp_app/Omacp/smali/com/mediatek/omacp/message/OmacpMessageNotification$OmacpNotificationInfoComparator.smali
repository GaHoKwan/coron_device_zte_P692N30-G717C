.class final Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;
.super Ljava/lang/Object;
.source "OmacpMessageNotification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OmacpNotificationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;)I
    .locals 4
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 202
    invoke-virtual {p2}, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->getTime()J

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
    .line 199
    check-cast p1, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;

    .end local p1
    check-cast p2, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;->compare(Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;)I

    move-result v0

    return v0
.end method
