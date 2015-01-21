.class Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;
.super Lcom/android/calendar/AsyncQueryService;
.source "SelectClearableCalendarsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 115
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear all events,onDeleteComplete.  result(delete number)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    iget-object v0, v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    iget-object v0, v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    iget-object v0, v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 118
    const-string v0, "Calendar"

    const-string v1, "Cancel Progress dialog."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$400(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$500(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0008

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$402(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$400(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/calendar/AllInOneActivity;->setClearEventsCompletedStatus(Z)V

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/AsyncQueryService;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 131
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    invoke-virtual {v1, p3}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->disableAccountCheckStatus(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    .local v0, newCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    invoke-static {v1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$000(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #setter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$102(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 107
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$200(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$200(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$300(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    :cond_0
    return-void
.end method
