.class Lcom/android/calendar/event/EditEventView$DialogManager;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogManager"
.end annotation


# instance fields
.field private mIsAnyDialogShown:Z

.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .locals 1
    .parameter

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$DialogManager;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView$DialogManager;->mIsAnyDialogShown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/EditEventView;Lcom/android/calendar/event/EditEventView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2272
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView$DialogManager;-><init>(Lcom/android/calendar/event/EditEventView;)V

    return-void
.end method

.method private dialogDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2289
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView$DialogManager;->isAnyDialogShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    const-string v0, "EditEventView"

    const-string v1, "There is no dialog shown, but some dialog dismissed."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    :cond_0
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventView$DialogManager;->mIsAnyDialogShown:Z

    .line 2295
    const-string v0, "EditEventView::date_time_debug_tag"

    const-string v1, "dialog dismissed."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$DialogManager;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->setDateTimeViewId(I)V
    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->access$900(Lcom/android/calendar/event/EditEventView;I)V

    .line 2298
    return-void
.end method


# virtual methods
.method public dialogShown()V
    .locals 2

    .prologue
    .line 2282
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView$DialogManager;->isAnyDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2283
    const-string v0, "EditEventView"

    const-string v1, "There is already a dialog shown, but another dialog is going to show."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView$DialogManager;->mIsAnyDialogShown:Z

    .line 2286
    return-void
.end method

.method public isAnyDialogShown()Z
    .locals 1

    .prologue
    .line 2278
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView$DialogManager;->mIsAnyDialogShown:Z

    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2302
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView$DialogManager;->dialogDismissed()V

    .line 2303
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2307
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView$DialogManager;->dialogShown()V

    .line 2308
    return-void
.end method
