.class Lcom/android/calendar/event/EditEventView$1;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView;->populateTimezone(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$1;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$1;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mDialogManager:Lcom/android/calendar/event/EditEventView$DialogManager;
    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/event/EditEventView$DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView$DialogManager;->isAnyDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const-string v0, "EditEventView"

    const-string v1, "There is dailog shown, abort showing timezone dialog"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$1;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->showTimezoneDialog()V
    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$1200(Lcom/android/calendar/event/EditEventView;)V

    goto :goto_0
.end method
