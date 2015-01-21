.class Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;

.field final synthetic val$alarm:Lcom/mediatek/schpwronoff/Alarm;

.field final synthetic val$cont:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;

    iput-object p2, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$cont:Landroid/content/Context;

    iput-object p3, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/mediatek/schpwronoff/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 123
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 124
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$cont:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/mediatek/schpwronoff/Alarm;

    iget v2, v2, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-static {v1, v2, v0}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$cont:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/mediatek/schpwronoff/Alarm;

    iget v2, v2, Lcom/mediatek/schpwronoff/Alarm;->mHour:I

    iget-object v3, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/mediatek/schpwronoff/Alarm;

    iget v3, v3, Lcom/mediatek/schpwronoff/Alarm;->mMinutes:I

    iget-object v4, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/mediatek/schpwronoff/Alarm;

    iget-object v4, v4, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    iget-object v5, p0, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/mediatek/schpwronoff/Alarm;

    iget v5, v5, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mediatek/schpwronoff/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;I)V

    .line 128
    :cond_0
    return-void
.end method
