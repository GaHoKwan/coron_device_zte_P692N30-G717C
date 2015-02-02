.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$2;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Lcom/mediatek/engineermode/cameranew/AutoCalibration$CameraSafeUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;->onCreate(Landroid/os/Bundle;)V
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
    .line 251
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$2;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public useCamera(Landroid/hardware/Camera;)V
    .locals 2
    .parameter "camera"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$2;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->initByCameraDeviceCapability(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Landroid/hardware/Camera$Parameters;)V

    .line 255
    return-void
.end method
