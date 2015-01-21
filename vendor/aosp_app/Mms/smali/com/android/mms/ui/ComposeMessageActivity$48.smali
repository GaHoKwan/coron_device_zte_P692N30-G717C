.class Lcom/android/mms/ui/ComposeMessageActivity$48;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5974
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x7f0b001c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5977
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5978
    .local v2, res:Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->val$mediaTypeStringId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5980
    .local v0, mediaType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 5981
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5983
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->val$error:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5984
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->val$error:I

    packed-switch v4, :pswitch_data_0

    .line 6014
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->val$error:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5989
    :pswitch_1
    const v4, 0x7f0b0104

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5990
    .local v1, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 6020
    :cond_0
    :goto_0
    return-void

    .line 5996
    .end local v1           #message:Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f0b001b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5997
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6016
    .restart local v1       #message:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mErrorDialogShown:Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6017
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v3, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 6018
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mErrorDialogShown:Z
    invoke-static {v4, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0

    .line 6000
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f0b026d

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6001
    .restart local v3       #title:Ljava/lang/String;
    const v4, 0x7f0b0119

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6002
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 6004
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_4
    const v4, 0x7f0b0270

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6005
    .restart local v3       #title:Ljava/lang/String;
    const v4, 0x7f0b0271

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6006
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 6009
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6010
    .restart local v3       #title:Ljava/lang/String;
    const v4, 0x7f0b001d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6011
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 5984
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
