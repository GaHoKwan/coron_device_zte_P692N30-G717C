.class Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;
.super Ljava/lang/Object;
.source "NetIdleHoursSetting.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetIdleHoursSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->mView:Landroid/view/View;

    .line 258
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 9
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const v8, 0x7f0a01d0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 262
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$400(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/Button;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$500(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursStartHour(II)V

    .line 264
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$500(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursStartMinute(II)V

    .line 266
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I
    invoke-static {v0, p2}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$602(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I

    .line 267
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I
    invoke-static {v0, p3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$702(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I

    .line 268
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    new-instance v1, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startHour:I
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$600(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->startMinute:I
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$700(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;II)V

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$802(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    .line 269
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$400(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$800(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mStartTimeBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$400(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$500(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursEndHour(II)V

    .line 276
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$500(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mCurrentSim:I
    invoke-static {v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setIdleHoursEndMinute(II)V

    .line 277
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I
    invoke-static {v0, p2}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$902(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I

    .line 278
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I
    invoke-static {v0, p3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$1002(Lcom/zte/heartyservice/net/NetIdleHoursSetting;I)I

    .line 279
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    new-instance v1, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endHour:I
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$900(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->endMinute:I
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$1000(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;II)V

    #setter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$1102(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    .line 280
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTimeBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$1200(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$1100(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting;->mEndTimeBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->access$1200(Lcom/zte/heartyservice/net/NetIdleHoursSetting;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
