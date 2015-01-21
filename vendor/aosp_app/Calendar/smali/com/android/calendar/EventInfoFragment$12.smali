.class Lcom/android/calendar/EventInfoFragment$12;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$12;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$12;->this$0:Lcom/android/calendar/EventInfoFragment;

    #calls: Lcom/android/calendar/EventInfoFragment;->doEdit()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$4500(Lcom/android/calendar/EventInfoFragment;)V

    .line 1886
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$12;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3400(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$12;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$12;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3500(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$12;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
