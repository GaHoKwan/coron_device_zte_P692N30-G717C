.class Lcom/android/mms/ui/ComposeMessageActivity$66;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 7731
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 7740
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getOnDataSetChangedListener()Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7742
    const-string v0, "Mms/compose"

    const-string v1, "OnDataSetChangedListener is not cleared"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7744
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowUnreadDivider:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 7745
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 7750
    :goto_0
    return-void

    .line 7747
    :cond_0
    const-string v0, "Mms/compose"

    const-string v1, "OnDataSetChangedListener is cleared"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 7734
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 7735
    return-void
.end method
