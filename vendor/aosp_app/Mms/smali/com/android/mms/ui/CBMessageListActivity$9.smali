.class Lcom/android/mms/ui/CBMessageListActivity$9;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListActivity;->confirmMultiDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$9;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$9;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$600(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$9;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-static {v1}, Lcom/android/mms/ui/DeleteProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V

    .line 845
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$9;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$600(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->showProgressDialog()V

    .line 846
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/CBMessageListActivity$9$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CBMessageListActivity$9$1;-><init>(Lcom/android/mms/ui/CBMessageListActivity$9;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 870
    return-void
.end method
