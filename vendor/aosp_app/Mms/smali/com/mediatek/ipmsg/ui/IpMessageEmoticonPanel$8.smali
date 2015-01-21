.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;
.super Ljava/lang/Object;
.source "IpMessageEmoticonPanel.java"

# interfaces
.implements Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addAdPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;


# direct methods
.method constructor <init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x1

    .line 477
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #setter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I
    invoke-static {v0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1002(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I

    .line 478
    if-nez p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$400(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 487
    :goto_0
    return-void

    .line 480
    :cond_0
    if-ne p1, v1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$500(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 482
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$600(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$700(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
