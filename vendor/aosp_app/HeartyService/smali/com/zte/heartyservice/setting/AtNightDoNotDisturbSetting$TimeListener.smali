.class Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;
.super Ljava/lang/Object;
.source "AtNightDoNotDisturbSetting.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->mView:Landroid/view/View;

    .line 244
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$200(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/widget/Button;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 252
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$300(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "at_night_do_not_disturb_from_hour"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$300(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "at_night_do_not_disturb_from_minute"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iput p2, v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    .line 256
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iput p3, v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startMinute:I

    .line 257
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    new-instance v2, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget v4, v4, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startHour:I

    iget-object v5, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget v5, v5, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startMinute:I

    invoke-direct {v2, v3, v4, v5}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;II)V

    #setter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$402(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    .line 258
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$200(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->startTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    invoke-static {v4}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$400(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #calls: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->updateTimeButtonUI()V
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$700(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)V

    .line 277
    const/4 v1, 0x1

    invoke-static {}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$800()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "do_not_disturb_switch"

    sget-boolean v4, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 278
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutDoNotDisturb()V

    .line 280
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfDoNotDisturb()V

    .line 282
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$300(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "at_night_do_not_disturb_to_hour"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$300(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "at_night_do_not_disturb_to_minute"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iput p2, v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    .line 268
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iput p3, v1, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toMinute:I

    .line 269
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    new-instance v2, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget v4, v4, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toHour:I

    iget-object v5, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget v5, v5, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toMinute:I

    invoke-direct {v2, v3, v4, v5}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;II)V

    #setter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$502(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    .line 270
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$600(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->toTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
    invoke-static {v4}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->access$500(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
