.class Lcom/android/mms/ui/ComposeMessageActivity$40;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onMessageSent()V
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
    .line 4845
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$40;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4849
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$40;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSendMessage:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 4859
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$40;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v1, 0x2537

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(II)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10100(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 4864
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$40;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4865
    return-void
.end method
