.class Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;
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
    .line 958
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 11
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 962
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    invoke-virtual {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getCurrentTime()V

    .line 963
    const/16 v5, 0xc

    if-ge p2, v5, :cond_2

    .line 964
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/4 v6, 0x0

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1002(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 968
    :goto_0
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 969
    .local v2, sumFromMinute:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 970
    .local v1, sumFromDay:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v8}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 971
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v7, v1, p2, p3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 973
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v5, p3}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1202(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 974
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v5, p2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1102(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 975
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    const/16 v6, 0xc

    if-le v5, v6, :cond_0

    .line 976
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1120(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 978
    :cond_0
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromTimeButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0xc

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    const/16 v8, 0xa

    if-ge v5, v8, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v8}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v7}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    .line 983
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v0

    .line 987
    .local v0, hour:I
    :goto_3
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 988
    .local v4, sumToMinute:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 989
    .local v3, sumToDay:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v8}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v9}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v10

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getDayNums(III)Ljava/lang/Long;
    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;III)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 990
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v8}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v8

    #calls: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->getMinuteNums(Ljava/lang/Long;II)Ljava/lang/Long;
    invoke-static {v7, v3, v0, v8}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;Ljava/lang/Long;II)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 991
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 992
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromYear:I
    invoke-static {v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v6

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1302(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 993
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMonth:I
    invoke-static {v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v6

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1402(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 994
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDay:I
    invoke-static {v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v6

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1502(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 995
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v6

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1702(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 996
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v6

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 997
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v6

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1602(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 998
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    iget-object v6, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromWeekday:I
    invoke-static {v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v6

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2802(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    .line 999
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDateButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2900(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToWeekday:I
    invoke-static {v7}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$2800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v7

    const/16 v8, 0x14

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMonth:I
    invoke-static {v7}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDay:I
    invoke-static {v7}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToYear:I
    invoke-static {v7}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1300(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToTimeButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$3000(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0xc

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    const/16 v8, 0xa

    if-ge v5, v8, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v8}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToDayTime:I
    invoke-static {v7}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_1
    return-void

    .line 966
    .end local v0           #hour:I
    .end local v1           #sumFromDay:Ljava/lang/Long;
    .end local v2           #sumFromMinute:Ljava/lang/Long;
    .end local v3           #sumToDay:Ljava/lang/Long;
    .end local v4           #sumToMinute:Ljava/lang/Long;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    const/4 v6, 0x1

    #setter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromDayTime:I
    invoke-static {v5, v6}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1002(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;I)I

    goto/16 :goto_0

    .line 978
    .restart local v1       #sumFromDay:Ljava/lang/Long;
    .restart local v2       #sumFromMinute:Ljava/lang/Long;
    :cond_3
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1100(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mFromMinute:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_2

    .line 983
    :cond_5
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    add-int/lit8 v0, v5, 0xc

    goto/16 :goto_3

    .line 985
    :cond_6
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v0

    .restart local v0       #hour:I
    goto/16 :goto_3

    .line 1002
    .restart local v3       #sumToDay:Ljava/lang/Long;
    .restart local v4       #sumToMinute:Ljava/lang/Long;
    :cond_7
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToHour:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    goto/16 :goto_4

    :cond_8
    iget-object v5, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$12;->this$0:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->mToMinute:I
    invoke-static {v5}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;->access$1800(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_5
.end method
