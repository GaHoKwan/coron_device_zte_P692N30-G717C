.class public Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "AccountSettingsOutOfOfficeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OofAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 492
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14
    .parameter "params"

    .prologue
    .line 496
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 497
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    .line 498
    .local v11, rawOffset:I
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    :goto_0
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 501
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v4, v11

    sub-long v12, v2, v4

    .line 502
    .local v12, startTime:J
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 504
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v4, v11

    sub-long v6, v2, v4

    .line 505
    .local v6, endTime:J
    new-instance v1, Lcom/android/emailcommon/service/OofParams;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mOutOffice:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mSeverCheck:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    :goto_3
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->onStarted()Ljava/lang/String;

    move-result-object v9

    move-wide v4, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/emailcommon/service/OofParams;-><init>(IIJJILjava/lang/String;)V

    .line 507
    .local v1, oofParams:Lcom/android/emailcommon/service/OofParams;
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v10

    .line 508
    .local v10, controller:Lcom/android/email/Controller;
    iget-object v2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v3, v1, v4}, Lcom/android/email/Controller;->syncOof(JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;

    move-result-object v1

    .line 509
    if-nez v1, :cond_6

    .line 510
    const-string v2, "AccountSettingsOutOfOfficeFragment"

    const-string v3, "OofAsyncTask oofParams is null."

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 514
    :goto_4
    return-object v2

    .line 498
    .end local v1           #oofParams:Lcom/android/emailcommon/service/OofParams;
    .end local v6           #endTime:J
    .end local v10           #controller:Lcom/android/email/Controller;
    .end local v12           #startTime:J
    :cond_0
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v4, v4, 0xc

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    goto :goto_5

    .line 502
    .restart local v12       #startTime:J
    :cond_2
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v4, v4, 0xc

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v4}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    goto :goto_6

    .line 505
    .restart local v6       #endTime:J
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 514
    .restart local v1       #oofParams:Lcom/android/emailcommon/service/OofParams;
    .restart local v10       #controller:Lcom/android/email/Controller;
    :cond_6
    invoke-virtual {v1}, Lcom/android/emailcommon/service/OofParams;->getmStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 488
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 526
    invoke-super {p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onPreExecute()V

    .line 527
    return-void
.end method

.method protected onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mPaused:Z
    invoke-static {v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->reportProgress(I)V
    invoke-static {v0, v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)V

    .line 522
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 488
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$OofAsyncTask;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
