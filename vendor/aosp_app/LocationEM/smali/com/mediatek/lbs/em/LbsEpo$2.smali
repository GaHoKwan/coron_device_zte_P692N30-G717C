.class Lcom/mediatek/lbs/em/LbsEpo$2;
.super Ljava/lang/Object;
.source "LbsEpo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsEpo;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsEpo;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsEpo;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsEpo$2;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo$2;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo$2;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    #getter for: Lcom/mediatek/lbs/em/LbsEpo;->mButtonEpoStress:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsEpo;->access$100(Lcom/mediatek/lbs/em/LbsEpo;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->epoStressTest(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsEpo;->access$200(Lcom/mediatek/lbs/em/LbsEpo;Z)V

    .line 83
    return-void
.end method
