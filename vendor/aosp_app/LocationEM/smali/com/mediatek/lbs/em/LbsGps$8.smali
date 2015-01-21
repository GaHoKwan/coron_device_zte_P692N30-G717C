.class Lcom/mediatek/lbs/em/LbsGps$8;
.super Ljava/lang/Object;
.source "LbsGps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsGps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsGps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$8;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$8;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$200(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$8;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->isGPSProviderEnable()Z
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$100(Lcom/mediatek/lbs/em/LbsGps;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$8;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$200(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$8;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->startStressGps()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$1400(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$8;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->stopStressGps()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$1500(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0
.end method
