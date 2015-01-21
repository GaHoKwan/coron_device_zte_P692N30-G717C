.class Lcom/android/mms/ui/ClassZeroActivity$1;
.super Landroid/os/Handler;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #setter for: Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #getter for: Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #calls: Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #calls: Lcom/android/mms/ui/ClassZeroActivity;->processNextMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$300(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #getter for: Lcom/android/mms/ui/ClassZeroActivity;->mDisplayClassZeroPlugin:Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$400(Lcom/android/mms/ui/ClassZeroActivity;)Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IDisplayClassZeroMessage;->isEnableClassZeroFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #setter for: Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z

    .line 121
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/SmsMessage;

    check-cast v0, [Landroid/telephony/SmsMessage;

    #calls: Lcom/android/mms/ui/ClassZeroActivity;->saveMessage([Landroid/telephony/SmsMessage;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$500(Lcom/android/mms/ui/ClassZeroActivity;[Landroid/telephony/SmsMessage;)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    #calls: Lcom/android/mms/ui/ClassZeroActivity;->processNextMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$300(Lcom/android/mms/ui/ClassZeroActivity;)V

    goto :goto_0
.end method
