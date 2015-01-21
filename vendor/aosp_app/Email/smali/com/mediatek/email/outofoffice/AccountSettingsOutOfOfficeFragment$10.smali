.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;
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
    .line 824
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 15
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 828
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getCurrentTime()V

    .line 829
    const/4 v4, 0x0

    .line 830
    .local v4, hour:I
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_2

    .line 831
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    .line 835
    :goto_0
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 836
    .local v6, sumFromMinute:Ljava/lang/Long;
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 837
    .local v5, sumFromDay:Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static {v11, v0, v1, v2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 838
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v11, v5, v4, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 840
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 841
    .local v3, c:Ljava/util/Calendar;
    const/4 v9, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 842
    const/4 v9, 0x2

    move/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 843
    const/4 v9, 0x5

    move/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 844
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/4 v10, 0x7

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 845
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p2

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v9, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 846
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p3

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v9, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 847
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    move/from16 v0, p4

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v9, v0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$902(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 848
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

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

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

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

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_4

    .line 853
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    .line 857
    :goto_1
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 858
    .local v8, sumToMinute:Ljava/lang/Long;
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 859
    .local v7, sumToDay:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    iget-object v13, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v13}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v13

    iget-object v14, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

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

    .line 860
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v11, v7, v4, v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 861
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 862
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1302(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 863
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1402(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 864
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1502(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 865
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 866
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 867
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 868
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 869
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v12, 0x14

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    const/16 v12, 0x1e

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v11}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    if-nez v9, :cond_5

    const/16 v9, 0xc

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    const/16 v12, 0xa

    if-ge v9, v12, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v12}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

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

    .line 876
    :cond_0
    return-void

    .line 831
    .end local v3           #c:Ljava/util/Calendar;
    .end local v5           #sumFromDay:Ljava/lang/Long;
    .end local v6           #sumFromMinute:Ljava/lang/Long;
    .end local v7           #sumToDay:Ljava/lang/Long;
    .end local v8           #sumToMinute:Ljava/lang/Long;
    :cond_1
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    add-int/lit8 v4, v9, 0xc

    goto/16 :goto_0

    .line 833
    :cond_2
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    goto/16 :goto_0

    .line 853
    .restart local v3       #c:Ljava/util/Calendar;
    .restart local v5       #sumFromDay:Ljava/lang/Long;
    .restart local v6       #sumFromMinute:Ljava/lang/Long;
    :cond_3
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    add-int/lit8 v4, v9, 0xc

    goto/16 :goto_1

    .line 855
    :cond_4
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v4

    goto/16 :goto_1

    .line 872
    .restart local v7       #sumToDay:Ljava/lang/Long;
    .restart local v8       #sumToMinute:Ljava/lang/Long;
    :cond_5
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$10;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3
.end method
