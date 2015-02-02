.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;->inintComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 473
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusStart:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusEnd:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusStart:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusEnd:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/AutoCalibration"

    const-string v1, "select nothing."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method
