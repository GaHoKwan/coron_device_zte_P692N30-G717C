.class Lcom/android/mms/ui/ComposeMessageActivity$76$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$76;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$76;)V
    .locals 0
    .parameter

    .prologue
    .line 9183
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 9185
    sget v6, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 9186
    .local v6, createMode:I
    sput v9, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 9187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedType:I

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedMidea:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-boolean v3, v3, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedAppend:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v7

    .line 9189
    .local v7, result:I
    const-string v0, "Mms:app"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restricted Midea: dataUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedMidea:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 9192
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedType:I

    if-ne v0, v5, :cond_4

    const/4 v0, -0x4

    if-eq v7, v0, :cond_1

    const/4 v0, -0x2

    if-ne v7, v0, :cond_4

    .line 9194
    :cond_1
    const-string v0, "Mms:app"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: resize image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedMidea:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 9197
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedMidea:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16400(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-boolean v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedAppend:Z

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImage(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    .line 9201
    sput v6, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 9218
    :cond_3
    :goto_0
    return-void

    .line 9204
    :cond_4
    sput v6, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 9205
    const v8, 0x7f0b02fb

    .line 9206
    .local v8, typeId:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 9207
    const v8, 0x7f0b02fa

    .line 9211
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
    invoke-static {v0, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10400(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 9213
    if-nez v7, :cond_3

    .line 9214
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9215
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHasDiscardWorkingMessage:Z
    invoke-static {v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0

    .line 9208
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$76;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedType:I

    if-ne v0, v4, :cond_5

    .line 9209
    const v8, 0x7f0b02fc

    goto :goto_1
.end method
