.class Lcom/mediatek/lbs/em/LbsAgps$50;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
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
    .line 1251
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1253
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 1254
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->enable3Party:I

    .line 1255
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 1258
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$5300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1259
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mButton_ThirdMSISDNEdit:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$50;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_ThirdMSISDN:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$5300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1260
    return-void

    .line 1254
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
