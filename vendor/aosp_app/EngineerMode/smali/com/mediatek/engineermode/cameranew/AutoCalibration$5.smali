.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 338
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v3, 0x7f0804f8

    .line 342
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getArrayValue([Z)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Z)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->putStrInPreference(ILjava/lang/String;)V
    invoke-static {v0, v3, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;ILjava/lang/String;)V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 348
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const v1, 0x7f080528

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoValueStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->putStrInPreference(ILjava/lang/String;)V
    invoke-static {v0, v3, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;ILjava/lang/String;)V

    goto :goto_0
.end method
