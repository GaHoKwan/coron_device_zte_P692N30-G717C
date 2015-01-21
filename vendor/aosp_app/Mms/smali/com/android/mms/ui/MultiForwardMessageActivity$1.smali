.class Lcom/android/mms/ui/MultiForwardMessageActivity$1;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;->checkSimInfoAndSendAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$1;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$1;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$002(Lcom/android/mms/ui/MultiForwardMessageActivity;Z)Z

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$1;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->getSimInfoList()V
    invoke-static {v0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$100(Lcom/android/mms/ui/MultiForwardMessageActivity;)V

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$1;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$1;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mNumbers:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$200(Lcom/android/mms/ui/MultiForwardMessageActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$1;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mMsgIds:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$300(Lcom/android/mms/ui/MultiForwardMessageActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->simSelection(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$400(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 360
    return-void
.end method
