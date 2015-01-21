.class Lcom/mediatek/lbs/em/LbsGps$3;
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
    .line 181
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mButtonGps:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->isGPSProviderEnable()Z
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$100(Lcom/mediatek/lbs/em/LbsGps;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mButtonGps:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$200(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->startGps()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$300(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$200(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$3;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->stopGps()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$400(Lcom/mediatek/lbs/em/LbsGps;)V

    goto :goto_0
.end method
