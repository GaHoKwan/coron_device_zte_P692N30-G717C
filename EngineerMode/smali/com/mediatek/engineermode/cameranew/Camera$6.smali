.class Lcom/mediatek/engineermode/cameranew/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/Camera;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;ILjava/lang/String;)V
    .locals 8
    .parameter "dialog"
    .parameter "which"
    .parameter "inputStr"

    .prologue
    .line 2050
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngFlashDutyMin()I

    move-result v3

    .line 2051
    .local v3, minDuty:I
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngFlashDutyMax()I

    move-result v2

    .line 2052
    .local v2, maxDuty:I
    const/4 v4, 0x1

    .line 2053
    .local v4, validInput:Z
    const/4 v0, -0x1

    .line 2055
    .local v0, duty:I
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2059
    :goto_0
    if-eqz v4, :cond_0

    if-lt v0, v3, :cond_0

    if-le v0, v2, :cond_1

    .line 2060
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid strobe duty, must range from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2068
    :goto_1
    return-void

    .line 2056
    :catch_0
    move-exception v1

    .line 2057
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0

    .line 2064
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mStrobeDuty:Ljava/lang/String;
    invoke-static {v5, p3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6202(Lcom/mediatek/engineermode/cameranew/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 2065
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setEngFlashDuty(I)V

    .line 2066
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v5, v5, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera$6;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2067
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1
.end method
