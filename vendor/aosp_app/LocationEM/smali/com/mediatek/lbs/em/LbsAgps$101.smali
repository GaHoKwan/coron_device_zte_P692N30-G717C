.class Lcom/mediatek/lbs/em/LbsAgps$101;
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
    .line 1635
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$101;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$101;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v0

    const-string v1, "RESET_TO_DEFAULT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 1638
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$101;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->loadConfigFromAgpsFramework()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$8400(Lcom/mediatek/lbs/em/LbsAgps;)V

    .line 1639
    return-void
.end method