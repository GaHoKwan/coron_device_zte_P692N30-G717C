.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;->initSupportedUi(Landroid/hardware/Camera$Parameters;)V
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
    .line 596
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 600
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "EM/AutoCalibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSensorSpinner.onItemSelected; position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsInitialized:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsInitialized:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsInitialized:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I
    invoke-static {v1, p3}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$3002(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 606
    const-string v1, "EM/AutoCalibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$3000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$3000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v2

    new-instance v3, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8$1;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;)V

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->safeUseCameraDevice(ILcom/mediatek/engineermode/cameranew/AutoCalibration$CameraSafeUser;)I

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
    .line 617
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/AutoCalibration"

    const-string v1, "mSensorSpinner onNothingSelected()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method
