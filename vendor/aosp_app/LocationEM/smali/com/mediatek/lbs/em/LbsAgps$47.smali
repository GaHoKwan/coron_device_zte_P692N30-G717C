.class Lcom/mediatek/lbs/em/LbsAgps$47;
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
    .line 1221
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    .line 1224
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 1225
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$4900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    .line 1226
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 1227
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBox_SUPLTwo:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$4900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1228
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1230
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutTest:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    const-string v3, "Warning"

    const-string v4, "SUPL2.0 may not support in live network."

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/lbs/em/LbsAgps;->showAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1236
    :cond_0
    :goto_1
    return-void

    .line 1225
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1234
    :cond_2
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$47;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayout_SUPLTwoDotZero:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
