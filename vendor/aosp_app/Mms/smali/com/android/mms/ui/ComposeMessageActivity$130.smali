.class Lcom/android/mms/ui/ComposeMessageActivity$130;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showReplaceAttachDialog()V
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
    .line 14157
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$130;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 14160
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$130;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    .line 14161
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$130;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mReplaceDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21802(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 14162
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$130;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$130;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageForSend:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->saveIpMessageForAWhile(Lcom/mediatek/mms/ipmessage/message/IpMessage;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)V

    .line 14163
    return-void
.end method
