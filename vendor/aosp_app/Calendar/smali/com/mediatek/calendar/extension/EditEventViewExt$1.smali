.class Lcom/mediatek/calendar/extension/EditEventViewExt$1;
.super Ljava/lang/Object;
.source "EditEventViewExt.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendar/extension/EditEventViewExt;->updateDatePickerSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;


# direct methods
.method constructor <init>(Lcom/mediatek/calendar/extension/EditEventViewExt;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/calendar/extension/EditEventViewExt$1;->this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    packed-switch p2, :pswitch_data_0

    .line 166
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt$1;->this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;

    #setter for: Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z
    invoke-static {v0, v1}, Lcom/mediatek/calendar/extension/EditEventViewExt;->access$002(Lcom/mediatek/calendar/extension/EditEventViewExt;Z)Z

    .line 167
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt$1;->this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;

    #getter for: Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;
    invoke-static {v0}, Lcom/mediatek/calendar/extension/EditEventViewExt;->access$100(Lcom/mediatek/calendar/extension/EditEventViewExt;)Lcom/mediatek/calendar/extension/IEditEventView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calendar/extension/IEditEventView;->resetDateButton()V

    .line 168
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt$1;->this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;

    #getter for: Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;
    invoke-static {v0}, Lcom/mediatek/calendar/extension/EditEventViewExt;->access$100(Lcom/mediatek/calendar/extension/EditEventViewExt;)Lcom/mediatek/calendar/extension/IEditEventView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calendar/extension/IEditEventView;->getModel()Lcom/android/calendar/CalendarEventModel;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/calendar/CalendarEventModel;->mIsLunar:Z

    .line 171
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt$1;->this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;

    #setter for: Lcom/mediatek/calendar/extension/EditEventViewExt;->mIsUseLunarDatePicker:Z
    invoke-static {v0, v2}, Lcom/mediatek/calendar/extension/EditEventViewExt;->access$002(Lcom/mediatek/calendar/extension/EditEventViewExt;Z)Z

    .line 161
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt$1;->this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;

    #getter for: Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;
    invoke-static {v0}, Lcom/mediatek/calendar/extension/EditEventViewExt;->access$100(Lcom/mediatek/calendar/extension/EditEventViewExt;)Lcom/mediatek/calendar/extension/IEditEventView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calendar/extension/IEditEventView;->resetDateButton()V

    .line 162
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EditEventViewExt$1;->this$0:Lcom/mediatek/calendar/extension/EditEventViewExt;

    #getter for: Lcom/mediatek/calendar/extension/EditEventViewExt;->mEditEventView:Lcom/mediatek/calendar/extension/IEditEventView;
    invoke-static {v0}, Lcom/mediatek/calendar/extension/EditEventViewExt;->access$100(Lcom/mediatek/calendar/extension/EditEventViewExt;)Lcom/mediatek/calendar/extension/IEditEventView;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calendar/extension/IEditEventView;->getModel()Lcom/android/calendar/CalendarEventModel;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/calendar/CalendarEventModel;->mIsLunar:Z

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x7f100054
        :pswitch_0
    .end packed-switch
.end method
