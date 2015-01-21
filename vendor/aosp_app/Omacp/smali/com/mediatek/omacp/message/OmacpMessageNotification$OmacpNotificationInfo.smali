.class final Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;
.super Ljava/lang/Object;
.source "OmacpMessageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OmacpNotificationInfo"
.end annotation


# instance fields
.field public mClickIntent:Landroid/content/Intent;

.field public mCount:I

.field public mDescription:Ljava/lang/String;

.field public mIconResourceId:I

.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V
    .locals 0
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconResourceId"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "count"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 179
    iput-object p2, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mDescription:Ljava/lang/String;

    .line 180
    iput p3, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mIconResourceId:I

    .line 181
    iput-object p4, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 182
    iput-wide p5, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mTimeMillis:J

    .line 183
    iput-object p7, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mTitle:Ljava/lang/String;

    .line 184
    iput p8, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mCount:I

    .line 185
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;ZII)V
    .locals 11
    .parameter "context"
    .parameter "isNew"
    .parameter "count"
    .parameter "uniqueThreads"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mClickIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mDescription:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mIconResourceId:I

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    :goto_0
    iget-wide v6, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mTimeMillis:J

    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mTitle:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move v9, p3

    move v10, p4

    #calls: Lcom/mediatek/omacp/message/OmacpMessageNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    invoke-static/range {v0 .. v10}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->access$100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    .line 192
    return-void

    .line 188
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
