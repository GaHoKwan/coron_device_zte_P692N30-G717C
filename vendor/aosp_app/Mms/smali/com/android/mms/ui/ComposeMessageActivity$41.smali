.class Lcom/android/mms/ui/ComposeMessageActivity$41;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onMaxPendingMessagesReached()V
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
    .line 4873
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4876
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0b032a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4878
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 4879
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4880
    return-void
.end method
