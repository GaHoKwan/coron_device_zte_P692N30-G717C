.class Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;
.super Landroid/os/Handler;
.source "TestModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/TestModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08029f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mChecked:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
