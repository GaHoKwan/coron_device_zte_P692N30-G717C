.class Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;
.super Ljava/lang/Object;
.source "SelectClearableCalendarsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 237
    const-string v0, "Calendar"

    const-string v1, "Clear all events, to delete."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #calls: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->dismissAlertDialog()V
    invoke-static {v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$800(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;
    invoke-static {v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$1000(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$902(I)I

    .line 241
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    iget-object v0, v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    iget-object v0, v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 246
    :cond_0
    const-string v4, "_id>0"

    .line 247
    .local v4, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #calls: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->getSelection(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$1100(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear all events, start delete, selection="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;
    invoke-static {v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$1000(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$900()I

    move-result v1

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v6, 0x0

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 250
    return-void
.end method
