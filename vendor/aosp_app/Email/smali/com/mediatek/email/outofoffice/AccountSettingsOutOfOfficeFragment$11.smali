.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 879
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 17
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 883
    const/4 v4, 0x0

    .line 884
    .local v4, hour:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getCurrentTime()V

    .line 885
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_3

    .line 886
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    .line 890
    :goto_0
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 891
    .local v6, sumCurrentMinute:Ljava/lang/Long;
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 892
    .local v5, sumCurrentDay:Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentYear:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMonth:I
    invoke-static {v15}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v16, v0

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDay:I
    invoke-static/range {v16 .. v16}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v16

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static/range {v13 .. v16}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 893
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMinute:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v13, v5, v4, v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 895
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_5

    .line 896
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    .line 900
    :goto_1
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 901
    .local v10, sumToMinute:Ljava/lang/Long;
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 902
    .local v9, sumToDay:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static {v13, v0, v1, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 903
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v13, v9, v4, v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 904
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    .line 905
    invoke-virtual {v9, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 906
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 907
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 908
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentDayTime:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 909
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    if-nez v11, :cond_6

    const/16 v11, 0xc

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v14, 0xa

    if-ge v11, v14, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    invoke-static {v13}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    move-object v10, v6

    .line 919
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 920
    .local v3, c:Ljava/util/Calendar;
    const/4 v11, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 921
    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-virtual {v3, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 922
    const/4 v11, 0x5

    move/from16 v0, p4

    invoke-virtual {v3, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 923
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/4 v12, 0x7

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 924
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p2

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v11, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1302(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 925
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p3

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v11, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1402(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 926
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p4

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v11, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1502(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 927
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    const/16 v14, 0x14

    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    const/16 v14, 0x1e

    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_a

    .line 932
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    .line 936
    :goto_4
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 937
    .local v8, sumFromMinute:Ljava/lang/Long;
    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 938
    .local v7, sumFromDay:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v15}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v16, v0

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static/range {v16 .. v16}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v16

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static/range {v13 .. v16}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 939
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v13, v7, v4, v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 940
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    .line 941
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 942
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 943
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$902(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 944
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1102(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 945
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1202(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 946
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1002(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 947
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I
    invoke-static {v11, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 948
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    const/16 v14, 0x14

    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    const/16 v14, 0x1e

    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    if-nez v11, :cond_b

    const/16 v11, 0xc

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v14, 0xa

    if-ge v11, v14, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v14}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    invoke-static {v13}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    .end local v3           #c:Ljava/util/Calendar;
    .end local v7           #sumFromDay:Ljava/lang/Long;
    .end local v8           #sumFromMinute:Ljava/lang/Long;
    :cond_1
    :goto_7
    return-void

    .line 886
    .end local v5           #sumCurrentDay:Ljava/lang/Long;
    .end local v6           #sumCurrentMinute:Ljava/lang/Long;
    .end local v9           #sumToDay:Ljava/lang/Long;
    .end local v10           #sumToMinute:Ljava/lang/Long;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    add-int/lit8 v4, v11, 0xc

    goto/16 :goto_0

    .line 888
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mCurrentHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    goto/16 :goto_0

    .line 896
    .restart local v5       #sumCurrentDay:Ljava/lang/Long;
    .restart local v6       #sumCurrentMinute:Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    add-int/lit8 v4, v11, 0xc

    goto/16 :goto_1

    .line 898
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    goto/16 :goto_1

    .line 909
    .restart local v9       #sumToDay:Ljava/lang/Long;
    .restart local v10       #sumToMinute:Ljava/lang/Long;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_3

    .line 914
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const v13, 0x7f08005e

    invoke-virtual {v12, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 932
    .restart local v3       #c:Ljava/util/Calendar;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    add-int/lit8 v4, v11, 0xc

    goto/16 :goto_4

    .line 934
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    goto/16 :goto_4

    .line 951
    .restart local v7       #sumFromDay:Ljava/lang/Long;
    .restart local v8       #sumFromMinute:Ljava/lang/Long;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$11;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_6
.end method
