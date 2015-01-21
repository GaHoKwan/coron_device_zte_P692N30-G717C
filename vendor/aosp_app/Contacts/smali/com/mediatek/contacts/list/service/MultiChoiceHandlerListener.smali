.class public Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;
.super Ljava/lang/Object;
.source "MultiChoiceHandlerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_NOTIFICATION_TAG:Ljava/lang/String; = "MultiChoiceServiceProgress"

.field static final FAILURE_NOTIFICATION_TAG:Ljava/lang/String; = "MultiChoiceServiceFailure"

.field public static final KEY_FINISH_TIME:Ljava/lang/String; = "key_finish_time"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/app/Service;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    .line 47
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 49
    return-void
.end method

.method public static constructCancelingNotification(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/Notification;
    .locals 4
    .parameter "context"
    .parameter "description"
    .parameter "jobId"
    .parameter "statIconId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 428
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x800

    invoke-static {p0, p2, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public static constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "description"
    .parameter "intent"
    .parameter "statIconId"

    .prologue
    const/4 v3, 0x0

    .line 308
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    invoke-static {p0, v3, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .restart local p3
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .end local p3
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method public static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IIII)Landroid/app/Notification;
    .locals 6
    .parameter "context"
    .parameter "requestType"
    .parameter "description"
    .parameter "tickerText"
    .parameter "jobId"
    .parameter "totalCount"
    .parameter "currentCount"
    .parameter "statIconId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v1, cancelIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    const-string v2, "job_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v2, "account_info"

    const-string v5, "TODO finish"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v2, -0x1

    if-ne p5, v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, p5, p6, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/high16 v5, 0x800

    invoke-static {p0, p4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 349
    if-lez p5, :cond_0

    .line 350
    const v2, 0x7f0c01dc

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit8 v5, p6, 0x64

    div-int/2addr v5, p5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 353
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    :cond_1
    move v2, v4

    .line 345
    goto :goto_0
.end method

.method public static constructReportNotification(Landroid/content/Context;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)Landroid/app/Notification;
    .locals 13
    .parameter "context"
    .parameter "reportDialogInfo"

    .prologue
    .line 372
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v5, reportIntent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    const-string v10, "report_dialog"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    const-string v10, "report_dialog_info"

    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    #getter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTitleId:I
    invoke-static {p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$000(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I

    move-result v8

    .line 383
    .local v8, titleId:I
    #getter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mContentId:I
    invoke-static {p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$100(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I

    move-result v1

    .line 384
    .local v1, contentId:I
    #getter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTotalNumber:I
    invoke-static {p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$200(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I

    move-result v9

    .line 385
    .local v9, totalNumber:I
    #getter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mSucceededNumber:I
    invoke-static {p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$300(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I

    move-result v6

    .line 386
    .local v6, succeededNumber:I
    #getter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mFailedNumber:I
    invoke-static {p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$400(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I

    move-result v3

    .line 387
    .local v3, failedNumber:I
    #getter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mJobId:I
    invoke-static {p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$500(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I

    move-result v4

    .line 388
    .local v4, jobIdNumber:I
    #getter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I
    invoke-static {p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$600(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I

    move-result v2

    .line 390
    .local v2, errorCauseId:I
    const/4 v10, 0x6

    if-ne v2, v10, :cond_1

    if-nez v3, :cond_1

    .line 391
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, title:Ljava/lang/String;
    :goto_0
    const/4 v10, -0x1

    if-ne v1, v10, :cond_2

    .line 397
    const-string v0, ""

    .line 403
    .local v0, content:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 404
    :cond_0
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x1080078

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/high16 v12, 0x800

    invoke-static {p0, v4, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 409
    :goto_2
    return-object v10

    .line 393
    .end local v0           #content:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #title:Ljava/lang/String;
    goto :goto_0

    .line 399
    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v1, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #content:Ljava/lang/String;
    goto :goto_1

    .line 409
    :cond_3
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x1080078

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/high16 v11, 0x800

    invoke-static {p0, v4, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v10

    goto :goto_2
.end method

.method private notifyMultiChoiceTerminated()V
    .locals 5

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 451
    .local v0, currentMillis:J
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.mediatek.intent.action.contacts.multichoice.process.finish"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 452
    .local v2, i:Landroid/content/Intent;
    const-string v3, "key_finish_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 453
    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    return-void
.end method


# virtual methods
.method public cancelAllNotifition()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 443
    return-void
.end method

.method onCanceled(IIIII)V
    .locals 7
    .parameter "requestType"
    .parameter "jobId"
    .parameter "total"
    .parameter "succeeded"
    .parameter "failed"

    .prologue
    .line 230
    sget-object v4, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCanceled requestType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " jobId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->notifyMultiChoiceTerminated()V

    .line 236
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 237
    const v3, 0x7f0c007f

    .line 241
    .local v3, titleId:I
    :goto_0
    const/4 v4, -0x1

    if-eq p3, v4, :cond_1

    .line 242
    const v0, 0x7f0c007c

    .line 257
    .local v0, contentId:I
    :goto_1
    new-instance v2, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-direct {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;-><init>()V

    .line 258
    .local v2, reportDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmTitleId(I)V

    .line 259
    invoke-virtual {v2, v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmContentId(I)V

    .line 260
    invoke-virtual {v2, p2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmJobId(I)V

    .line 261
    invoke-virtual {v2, p3}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmTotalNumber(I)V

    .line 262
    invoke-virtual {v2, p4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmSucceededNumber(I)V

    .line 263
    invoke-virtual {v2, p5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmFailedNumber(I)V

    .line 265
    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    invoke-static {v4, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->constructReportNotification(Landroid/content/Context;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)Landroid/app/Notification;

    move-result-object v1

    .line 269
    .local v1, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "MultiChoiceServiceProgress"

    invoke-virtual {v4, v5, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 270
    return-void

    .line 239
    .end local v0           #contentId:I
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #reportDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    .end local v3           #titleId:I
    :cond_0
    const v3, 0x7f0c0081

    .restart local v3       #titleId:I
    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, -0x1

    .restart local v0       #contentId:I
    goto :goto_1
.end method

.method onCanceling(II)V
    .locals 6
    .parameter "requestType"
    .parameter "jobId"

    .prologue
    .line 279
    sget-object v3, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCanceling] requestType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | jobId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, statIconId:I
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v4, 0x7f0c0089

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, description:Ljava/lang/String;
    const v2, 0x108003c

    .line 289
    :goto_0
    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    invoke-static {v3, v0, p2, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->constructCancelingNotification(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v1

    .line 291
    .local v1, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v4, "MultiChoiceServiceProgress"

    invoke-virtual {v3, v4, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 292
    return-void

    .line 286
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #notification:Landroid/app/Notification;
    :cond_0
    const-string v0, ""

    .restart local v0       #description:Ljava/lang/String;
    goto :goto_0
.end method

.method onFailed(IIIII)V
    .locals 7
    .parameter "requestType"
    .parameter "jobId"
    .parameter "total"
    .parameter "succeeded"
    .parameter "failed"

    .prologue
    .line 121
    sget-object v4, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFailed requestType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " jobId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->notifyMultiChoiceTerminated()V

    .line 127
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 128
    const v3, 0x7f0c0080

    .line 129
    .local v3, titleId:I
    const v0, 0x7f0c007c

    .line 144
    .local v0, contentId:I
    :goto_0
    new-instance v2, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-direct {v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;-><init>()V

    .line 145
    .local v2, reportDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmTitleId(I)V

    .line 146
    invoke-virtual {v2, v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmContentId(I)V

    .line 147
    invoke-virtual {v2, p2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmJobId(I)V

    .line 148
    invoke-virtual {v2, p3}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmTotalNumber(I)V

    .line 149
    invoke-virtual {v2, p4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmSucceededNumber(I)V

    .line 150
    invoke-virtual {v2, p5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmFailedNumber(I)V

    .line 152
    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    invoke-static {v4, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->constructReportNotification(Landroid/content/Context;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)Landroid/app/Notification;

    move-result-object v1

    .line 156
    .local v1, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "MultiChoiceServiceProgress"

    invoke-virtual {v4, v5, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 158
    return-void

    .line 131
    .end local v0           #contentId:I
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #reportDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    .end local v3           #titleId:I
    :cond_0
    const v3, 0x7f0c0082

    .line 132
    .restart local v3       #titleId:I
    const v0, 0x7f0c007c

    .restart local v0       #contentId:I
    goto :goto_0
.end method

.method onFailed(IIIIII)V
    .locals 9
    .parameter "requestType"
    .parameter "jobId"
    .parameter "total"
    .parameter "succeeded"
    .parameter "failed"
    .parameter "errorCause"

    .prologue
    .line 162
    sget-object v6, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFailed requestType ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " jobId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " total = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " succeeded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " errorCause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->notifyMultiChoiceTerminated()V

    .line 169
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 170
    const v5, 0x7f0c0080

    .line 171
    .local v5, titleId:I
    const v0, 0x7f0c007c

    .line 211
    .local v0, contentId:I
    :goto_0
    new-instance v4, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-direct {v4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;-><init>()V

    .line 212
    .local v4, reportDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    invoke-virtual {v4, v5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmTitleId(I)V

    .line 213
    invoke-virtual {v4, v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmContentId(I)V

    .line 214
    invoke-virtual {v4, p2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmJobId(I)V

    .line 215
    invoke-virtual {v4, p3}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmTotalNumber(I)V

    .line 216
    invoke-virtual {v4, p4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmSucceededNumber(I)V

    .line 217
    invoke-virtual {v4, p5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmFailedNumber(I)V

    .line 218
    invoke-virtual {v4, p6}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->setmErrorCauseId(I)V

    .line 220
    iget-object v6, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    invoke-static {v6, v4}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->constructReportNotification(Landroid/content/Context;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)Landroid/app/Notification;

    move-result-object v1

    .line 224
    .local v1, notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v7, "MultiChoiceServiceProgress"

    invoke-virtual {v6, v7, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 226
    return-void

    .line 173
    .end local v0           #contentId:I
    .end local v1           #notification:Landroid/app/Notification;
    .end local v4           #reportDialogInfo:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    .end local v5           #titleId:I
    :cond_0
    const v5, 0x7f0c0082

    .line 174
    .restart local v5       #titleId:I
    const/4 v6, 0x3

    if-ne p6, v6, :cond_2

    .line 176
    const v3, 0x7f0c007e

    .line 177
    .local v3, notifierFailureSimNotready:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v6

    const-string v7, "ExtensionForOP09"

    invoke-virtual {v6, v7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    const v3, 0x7f0c00d9

    .line 182
    :cond_1
    move v0, v3

    .line 183
    .restart local v0       #contentId:I
    goto :goto_0

    .end local v0           #contentId:I
    .end local v3           #notifierFailureSimNotready:I
    :cond_2
    const/4 v6, -0x3

    if-ne p6, v6, :cond_4

    .line 185
    const v2, 0x7f0c007d

    .line 186
    .local v2, notifierFailureBySimFull:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v6

    const-string v7, "ExtensionForOP09"

    invoke-virtual {v6, v7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    const v2, 0x7f0c00d8

    .line 191
    :cond_3
    move v0, v2

    .line 192
    .restart local v0       #contentId:I
    goto :goto_0

    .end local v0           #contentId:I
    .end local v2           #notifierFailureBySimFull:I
    :cond_4
    const/4 v6, 0x6

    if-ne p6, v6, :cond_6

    .line 193
    if-nez p5, :cond_5

    .line 194
    const v5, 0x7f0c007a

    .line 196
    :cond_5
    const v0, 0x7f0c00ac

    .restart local v0       #contentId:I
    goto :goto_0

    .line 198
    .end local v0           #contentId:I
    :cond_6
    const v0, 0x7f0c007c

    .restart local v0       #contentId:I
    goto :goto_0
.end method

.method onFinished(III)V
    .locals 12
    .parameter "requestType"
    .parameter "jobId"
    .parameter "total"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 91
    sget-object v7, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onFinished jobId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " total = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " requestType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    .local v1, endTime:J
    sget-object v7, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CMCC Performance test][Contacts] delete 1500 contacts end ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->notifyMultiChoiceTerminated()V

    .line 101
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 103
    iget-object v7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v8, 0x7f0c0078

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v8, 0x7f0c0079

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, description:Ljava/lang/String;
    const v5, 0x108003c

    .line 113
    .local v5, statIconId:I
    :goto_0
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const-class v8, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    invoke-static {v7, v6, v0, v3, v5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v4

    .line 116
    .local v4, notification:Landroid/app/Notification;
    iget-object v7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v8, "MultiChoiceServiceProgress"

    invoke-virtual {v7, v8, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 117
    return-void

    .line 108
    .end local v0           #description:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #statIconId:I
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v8, 0x7f0c007a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    .restart local v6       #title:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v8, 0x7f0c007b

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0       #description:Ljava/lang/String;
    const v5, 0x7f0200ae

    .restart local v5       #statIconId:I
    goto :goto_0
.end method

.method onProcessed(IIIILjava/lang/String;)V
    .locals 10
    .parameter "requestType"
    .parameter "jobId"
    .parameter "currentCount"
    .parameter "totalCount"
    .parameter "contactName"

    .prologue
    .line 54
    rem-int/lit8 v0, p3, 0xa

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    if-eq p3, p4, :cond_0

    .line 88
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, totalCountString:Ljava/lang/String;
    const/4 v7, 0x0

    .line 62
    .local v7, statIconId:I
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v1, 0x7f0c0084

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, tickerText:Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, description:Ljava/lang/String;
    :goto_1
    const v7, 0x108003c

    .line 84
    :goto_2
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move v1, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IIII)Landroid/app/Notification;

    move-result-object v8

    .line 87
    .local v8, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "MultiChoiceServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 68
    .end local v2           #description:Ljava/lang/String;
    .end local v8           #notification:Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v1, 0x7f0c0085

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #description:Ljava/lang/String;
    goto :goto_1

    .line 73
    .end local v2           #description:Ljava/lang/String;
    .end local v3           #tickerText:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v1, 0x7f0c0087

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3       #tickerText:Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p4, v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #description:Ljava/lang/String;
    :goto_3
    const v7, 0x7f0200ae

    goto :goto_2

    .line 78
    .end local v2           #description:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->mContext:Landroid/app/Service;

    const v1, 0x7f0c0088

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #description:Ljava/lang/String;
    goto :goto_3
.end method
