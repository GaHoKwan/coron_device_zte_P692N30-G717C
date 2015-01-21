.class Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/bluetooth/ftp/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$000(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$000(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressValue:J
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$100(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$200(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMode:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$300(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$200(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressValue:J
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$100(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$500(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$500(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$600(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_2
    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMode:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$300(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 104
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$200(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressValue:J
    invoke-static {v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$100(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/ftp/Utils;->getReadableSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$200(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mProgressValue:J
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$100(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/ProgressDialog$1;->this$0:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    #getter for: Lcom/mediatek/bluetooth/ftp/ProgressDialog;->mMax:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->access$400(Lcom/mediatek/bluetooth/ftp/ProgressDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
