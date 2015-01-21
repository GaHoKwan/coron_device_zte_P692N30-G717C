.class Lcom/mediatek/ipmsg/ui/SharePanel$1;
.super Ljava/lang/Object;
.source "SharePanel.java"

# interfaces
.implements Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/ui/SharePanel;->resetShareItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/SharePanel;


# direct methods
.method constructor <init>(Lcom/mediatek/ipmsg/ui/SharePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/SharePanel$1;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel$1;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #setter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mScreenIndex:I
    invoke-static {v0, p1}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$002(Lcom/mediatek/ipmsg/ui/SharePanel;I)I

    .line 179
    if-nez p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel$1;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mDotFirst:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$100(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel$1;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mDotSec:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$200(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
