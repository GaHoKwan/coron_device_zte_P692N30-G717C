.class Lcom/mediatek/lbs/em/LbsAgps$104;
.super Landroid/os/Handler;
.source "LbsAgps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsAgps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1691
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1692
    .local v0, bundle:Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1712
    :goto_0
    return-void

    .line 1694
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1695
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1696
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTest:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1697
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTemplate:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1698
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpAddr:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1699
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpPort:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$9000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1702
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Failure"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1703
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpTestResult:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1704
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTest:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1705
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpTemplate:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1706
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpAddr:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$8900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1707
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$104;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButtonSlpPort:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$9000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
