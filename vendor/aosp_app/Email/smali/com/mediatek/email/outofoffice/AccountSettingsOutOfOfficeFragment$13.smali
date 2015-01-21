.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 15
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 1013
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getCurrentTime()V

    .line 1014
    const/16 v9, 0xc

    move/from16 v0, p2

    if-ge v0, v9, :cond_1

    .line 1015
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/4 v10, 0x0

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1019
    :goto_0
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1020
    .local v8, sumToMinute:Ljava/lang/Long;
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1021
    .local v7, sumToDay:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    iget-object v13, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    iget-object v14, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static {v11, v12, v13, v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1022
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p2

    move/from16 v1, p3

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v11, v7, v0, v1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1023
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_3

    .line 1024
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v2

    .line 1028
    .local v2, hour:I
    :goto_1
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1029
    .local v4, sumCurrentMinute:Ljava/lang/Long;
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1030
    .local v3, sumCurrentDay:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    iget-object v13, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    iget-object v14, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static {v11, v12, v13, v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1031
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v11, v3, v2, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1032
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 1033
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const v11, 0x7f08005e

    invoke-virtual {v10, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1072
    :cond_0
    :goto_2
    return-void

    .line 1017
    .end local v2           #hour:I
    .end local v3           #sumCurrentDay:Ljava/lang/Long;
    .end local v4           #sumCurrentMinute:Ljava/lang/Long;
    .end local v7           #sumToDay:Ljava/lang/Long;
    .end local v8           #sumToMinute:Ljava/lang/Long;
    :cond_1
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/4 v10, 0x1

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    goto/16 :goto_0

    .line 1024
    .restart local v7       #sumToDay:Ljava/lang/Long;
    .restart local v8       #sumToMinute:Ljava/lang/Long;
    :cond_2
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    add-int/lit8 v2, v9, 0xc

    goto :goto_1

    .line 1026
    :cond_3
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v2

    .restart local v2       #hour:I
    goto/16 :goto_1

    .line 1038
    .restart local v3       #sumCurrentDay:Ljava/lang/Long;
    .restart local v4       #sumCurrentMinute:Ljava/lang/Long;
    :cond_4
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p2

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1039
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p3

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v9, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1040
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v10, 0xc

    if-le v9, v10, :cond_5

    .line 1041
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/16 v10, 0xc

    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1720(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1044
    :cond_5
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    if-nez v9, :cond_6

    const/16 v9, 0xc

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v12, 0xa

    if-ge v9, v12, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_9

    .line 1049
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v2

    .line 1053
    :goto_5
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1054
    .local v6, sumFromMinute:Ljava/lang/Long;
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1055
    .local v5, sumFromDay:Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    iget-object v13, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    iget-object v14, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static {v11, v12, v13, v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1056
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v11, v5, v2, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1057
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 1058
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1059
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1060
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$902(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1061
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1102(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1062
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1202(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1063
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1002(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1064
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 1065
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v12, 0x14

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v12, 0x1e

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    if-nez v9, :cond_a

    const/16 v9, 0xc

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v12, 0xa

    if-ge v9, v12, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1044
    .end local v5           #sumFromDay:Ljava/lang/Long;
    .end local v6           #sumFromMinute:Ljava/lang/Long;
    :cond_6
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    goto/16 :goto_3

    :cond_7
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_4

    .line 1049
    :cond_8
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    add-int/lit8 v2, v9, 0xc

    goto/16 :goto_5

    .line 1051
    :cond_9
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v2

    goto/16 :goto_5

    .line 1068
    .restart local v5       #sumFromDay:Ljava/lang/Long;
    .restart local v6       #sumFromMinute:Ljava/lang/Long;
    :cond_a
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    goto :goto_6

    :cond_b
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_7
.end method
