.class Lcom/android/calendar/event/EditEventView$TimeClickListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->mTime:Landroid/text/format/Time;

    .line 329
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100058

    if-ne v1, v2, :cond_0

    .line 335
    const-string v1, "EditEventView"

    const-string v2, "TimeClickListener, mStartTimeButton is clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    const/4 v2, 0x3

    #calls: Lcom/android/calendar/event/EditEventView;->setDateTimeViewId(I)V
    invoke-static {v1, v2}, Lcom/android/calendar/event/EditEventView;->access$900(Lcom/android/calendar/event/EditEventView;I)V

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10005f

    if-ne v1, v2, :cond_1

    .line 339
    const-string v1, "EditEventView"

    const-string v2, "TimeClickListener, mEndTimeButton is clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    const/4 v2, 0x4

    #calls: Lcom/android/calendar/event/EditEventView;->setDateTimeViewId(I)V
    invoke-static {v1, v2}, Lcom/android/calendar/event/EditEventView;->access$900(Lcom/android/calendar/event/EditEventView;I)V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/event/EditEventView$DialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventView$DialogManager;->isAnyDialogShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    const-string v1, "EditEventView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is a dialog shown, abort creating dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/event/EditEventView$DialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventView$DialogManager;->dialogShown()V

    .line 353
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/calendar/event/EditEventView;->access$1100(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;->newInstance(IIZZI)Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;

    move-result-object v0

    .line 356
    .local v0, f:Lcom/mediatek/calendar/EditEventTimePickerDialogFragment;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$TimeClickListener;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1100(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "edit_event_time_dialog_frag"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
