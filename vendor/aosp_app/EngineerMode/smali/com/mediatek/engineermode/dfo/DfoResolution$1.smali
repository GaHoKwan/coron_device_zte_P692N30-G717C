.class Lcom/mediatek/engineermode/dfo/DfoResolution$1;
.super Landroid/os/Handler;
.source "DfoResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/dfo/DfoResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 100
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$000(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$100(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$100(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 107
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$200(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardHeight:[I
    invoke-static {v3}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$300(Lcom/mediatek/engineermode/dfo/DfoResolution;)[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$400(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardWidth:[I
    invoke-static {v3}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$500(Lcom/mediatek/engineermode/dfo/DfoResolution;)[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    .line 109
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$600(Lcom/mediatek/engineermode/dfo/DfoResolution;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    const v5, 0x7f080638

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LCM_FAKE_HEIGHT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$200(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LCM_FAKE_WIDTH"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$400(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/engineermode/dfo/DfoResolution;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$700(Lcom/mediatek/engineermode/dfo/DfoResolution;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    .end local v0           #i:I
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 119
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v1           #pm:Landroid/os/PowerManager;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$800(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$800(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    const v3, 0x7f08063a

    #calls: Lcom/mediatek/engineermode/dfo/DfoResolution;->showToast(I)V
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$900(Lcom/mediatek/engineermode/dfo/DfoResolution;I)V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
