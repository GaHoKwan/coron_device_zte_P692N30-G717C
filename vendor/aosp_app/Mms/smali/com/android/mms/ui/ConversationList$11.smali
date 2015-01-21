.class Lcom/android/mms/ui/ConversationList$11;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->notificationsReceived(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 2874
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mSaveChatHistory:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$5200(Lcom/android/mms/ui/ConversationList;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2877
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mSaveChatHistory:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$5200(Lcom/android/mms/ui/ConversationList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2878
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationList;->mSaveChatHistory:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->access$5202(Lcom/android/mms/ui/ConversationList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2880
    :cond_0
    return-void
.end method
