.class Lcom/zte/engineer/TouchScreenFwload$3$1;
.super Ljava/lang/Object;
.source "TouchScreenFwload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/TouchScreenFwload$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/engineer/TouchScreenFwload$3;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TouchScreenFwload$3;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 119
    const-string v0, "TouchScreenFwload"

    const-string v1, ">>>>>>>>>>DialogInterface.OnClickListener()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwload;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwload;->access$502(Lcom/zte/engineer/TouchScreenFwload;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    const-string v0, "TouchScreenFwload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----isNewVersion = touchscreenfwloader(3)----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v2, v2, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwload;->access$500(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->isNewVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->access$500(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->update_or_not:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->access$600(Lcom/zte/engineer/TouchScreenFwload;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->access$700(Lcom/zte/engineer/TouchScreenFwload;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    :goto_0
    const-string v0, "TouchScreenFwload"

    const-string v1, "<<<<<<<<<<DialogInterface.OnClickListener()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->update_or_not:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->access$600(Lcom/zte/engineer/TouchScreenFwload;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const v2, 0x7f0600de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$3$1;->this$1:Lcom/zte/engineer/TouchScreenFwload$3;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwload$3;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->btn1:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->access$700(Lcom/zte/engineer/TouchScreenFwload;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
