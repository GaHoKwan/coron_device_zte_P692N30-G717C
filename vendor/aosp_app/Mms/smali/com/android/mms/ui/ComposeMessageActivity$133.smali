.class Lcom/android/mms/ui/ComposeMessageActivity$133;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageActivity.java"


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
    .line 14227
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$133;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 14230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14231
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14233
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$133;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$133;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14234
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$133;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSIMSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 14238
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$133;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getSIMInfoList()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 14239
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->simInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14240
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$133;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 14242
    :cond_1
    return-void
.end method
