.class Lcom/mediatek/engineermode/lcm/LCM$1;
.super Landroid/os/Handler;
.source "LCM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/lcm/LCM;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/lcm/LCM;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/lcm/LCM;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

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

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$000(Lcom/mediatek/engineermode/lcm/LCM;)I

    move-result v0

    if-nez v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mCycleText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$200(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/lcm/LCM;->access$100(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mMipiText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$300(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$600(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/lcm/LCM;->access$500(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$500(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mTmToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$600(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #setter for: Lcom/mediatek/engineermode/lcm/LCM;->mbIsDataDetected:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/lcm/LCM;->access$702(Lcom/mediatek/engineermode/lcm/LCM;Z)Z

    .line 127
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mbIsDialogShowed:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$800(Lcom/mediatek/engineermode/lcm/LCM;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 131
    :cond_2
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$000(Lcom/mediatek/engineermode/lcm/LCM;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mMipiText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$300(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/lcm/LCM;->access$400(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/engineermode/lcm/LCM$1;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mCycleText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/LCM;->access$200(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
