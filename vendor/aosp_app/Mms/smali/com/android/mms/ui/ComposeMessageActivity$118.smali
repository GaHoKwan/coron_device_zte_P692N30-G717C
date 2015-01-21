.class Lcom/android/mms/ui/ComposeMessageActivity$118;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showResendConfirmDialg(JJ[[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$allFailedIpMsgIds:[[J

.field final synthetic val$buttonCount:I

.field final synthetic val$currentMsgId:J

.field final synthetic val$currentSimId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;JJI[[J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13710
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$currentMsgId:J

    iput-wide p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$currentSimId:J

    iput p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$buttonCount:I

    iput-object p7, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$allFailedIpMsgIds:[[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 13713
    const/4 v2, 0x0

    .line 13714
    .local v2, tryAgain:I
    const/4 v3, 0x1

    .line 13715
    .local v3, tryAllAgain:I
    const/4 v1, 0x2

    .line 13716
    .local v1, sendViaMmsOrSms:I
    packed-switch p2, :pswitch_data_0

    .line 13746
    :cond_0
    :goto_0
    return-void

    .line 13718
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$currentMsgId:J

    iget-wide v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$currentSimId:J

    long-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/mms/ipmessage/MessageManager;->resendMessage(JI)V

    goto :goto_0

    .line 13722
    :pswitch_1
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$buttonCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 13723
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$allFailedIpMsgIds:[[J

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 13724
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$allFailedIpMsgIds:[[J

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$allFailedIpMsgIds:[[J

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget-wide v7, v7, v8

    long-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/mms/ipmessage/MessageManager;->resendMessage(JI)V

    .line 13723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13729
    .end local v0           #index:I
    :cond_1
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$buttonCount:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 13736
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageDraft:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13738
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$currentMsgId:J

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showDiscardCurrentMessageDialog(J)V
    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21400(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    goto :goto_0

    .line 13740
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$118;->val$currentMsgId:J

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendViaMmsOrSms(J)V
    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21500(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    goto :goto_0

    .line 13716
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
