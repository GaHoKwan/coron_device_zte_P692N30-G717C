.class Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;
.super Landroid/os/Handler;
.source "SspDebugModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 156
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 157
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
