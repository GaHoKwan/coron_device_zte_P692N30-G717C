.class Lcom/mediatek/lbs/em/LbsAgps$78;
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
    .line 1469
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$78;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1471
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$78;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 1472
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$78;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxExternalAddr:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$6800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddressEnable:I

    .line 1473
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$78;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 1474
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$78;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->editExternalAddr()V
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$6900(Lcom/mediatek/lbs/em/LbsAgps;)V

    .line 1475
    return-void

    .line 1472
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method