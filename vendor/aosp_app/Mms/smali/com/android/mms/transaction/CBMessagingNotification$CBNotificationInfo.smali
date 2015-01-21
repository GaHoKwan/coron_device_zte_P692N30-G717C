.class final Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
.super Ljava/lang/Object;
.source "CBMessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CBMessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CBNotificationInfo"
.end annotation


# instance fields
.field public mClickIntent:Landroid/content/Intent;

.field public mCount:I

.field public mDescription:Ljava/lang/String;

.field public mIconResourceId:I

.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J

.field public mTitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;ILandroid/net/Uri;)V
    .locals 0
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconResourceId"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "count"
    .parameter "uri"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 216
    iput-object p2, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mDescription:Ljava/lang/String;

    .line 217
    iput p3, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mIconResourceId:I

    .line 218
    iput-object p4, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 219
    iput-wide p5, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mTimeMillis:J

    .line 220
    iput-object p7, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mTitle:Ljava/lang/String;

    .line 221
    iput p8, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mCount:I

    .line 222
    iput-object p9, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mUri:Landroid/net/Uri;

    .line 223
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;ZII)V
    .locals 12
    .parameter "context"
    .parameter "isNew"
    .parameter "count"
    .parameter "uniqueThreads"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mClickIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mDescription:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mIconResourceId:I

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    :goto_0
    iget-wide v6, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mTimeMillis:J

    iget-object v8, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mTitle:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mUri:Landroid/net/Uri;

    move-object v0, p1

    move v4, p2

    move v9, p3

    move/from16 v10, p4

    #calls: Lcom/android/mms/transaction/CBMessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/net/Uri;)V
    invoke-static/range {v0 .. v11}, Lcom/android/mms/transaction/CBMessagingNotification;->access$100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/net/Uri;)V

    .line 230
    return-void

    .line 226
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
