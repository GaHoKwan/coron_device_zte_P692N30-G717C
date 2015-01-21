.class Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;
.super Ljava/lang/Object;
.source "TimingSaveElectricitySetting.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->mView:Landroid/view/View;

    .line 317
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$200(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/widget/Button;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 325
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$300(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartTime Dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$400(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timing_save_electricity_from_hour"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$400(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timing_save_electricity_from_minute"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iput p2, v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    .line 330
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iput p3, v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startMinute:I

    .line 331
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    new-instance v2, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget v4, v4, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startHour:I

    iget-object v5, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget v5, v5, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startMinute:I

    invoke-direct {v2, v3, v4, v5}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;II)V

    #setter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$502(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    .line 332
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$200(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    invoke-static {v4}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$500(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #calls: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->updateTimeButtonUI()V
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$800(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)V

    .line 352
    const/4 v1, 0x1

    invoke-static {}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$900()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "timing_save_electricity_switch"

    sget-boolean v4, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 353
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutTimingSaveElectricity()V

    .line 355
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity()V

    .line 357
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$300(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EndTime Dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$400(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timing_save_electricity_to_hour"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$400(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timing_save_electricity_to_minute"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iput p2, v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    .line 343
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iput p3, v1, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toMinute:I

    .line 344
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    new-instance v2, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget v4, v4, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toHour:I

    iget-object v5, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget v5, v5, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toMinute:I

    invoke-direct {v2, v3, v4, v5}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;II)V

    #setter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$602(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    .line 345
    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$700(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->toTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
    invoke-static {v4}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->access$600(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
