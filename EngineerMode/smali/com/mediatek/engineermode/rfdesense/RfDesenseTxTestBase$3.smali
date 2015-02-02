.class Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;
.super Ljava/lang/Object;
.source "RfDesenseTxTestBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 297
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget v0, v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mCurrentBand:I

    iget-object v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v1, v1, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->updateLimits()V

    .line 299
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->setDefaultValues()V

    .line 300
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v1, v1, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mCurrentBand:I

    .line 302
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
