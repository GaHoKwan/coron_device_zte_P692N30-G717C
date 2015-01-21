.class Lcom/mediatek/lbs/em/LbsAgps$24;
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
    .line 1061
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$24;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$24;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 1064
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    .line 1065
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$24;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 1066
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    if-lez v1, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$24;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$3400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1071
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$24;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mLinearLayoutCdmaSettings:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$3400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
