.class Lcom/android/mms/ui/ComposeMessageActivity$119;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->sendViaMmsOrSms(J)V
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
    .line 13759
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$119;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13761
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$119;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13762
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$119;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V
    invoke-static {v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 13763
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$119;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 13765
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$119;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 13766
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$119;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 13767
    .local v0, isMms:Z
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$119;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_1

    :goto_0
    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;
    invoke-static {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21600(Lcom/android/mms/ui/ComposeMessageActivity;Z)Landroid/view/View;

    .line 13768
    return-void

    :cond_1
    move v1, v2

    .line 13767
    goto :goto_0
.end method
