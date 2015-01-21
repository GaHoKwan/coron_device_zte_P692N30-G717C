.class Lcom/mediatek/engineermode/cameranew/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
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
    .line 846
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$3;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 849
    const-string v0, "test/camera"

    const-string v1, "mCameraPreviewThread start"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$3;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->initializeCapabilities()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5800(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 851
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$3;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->startPreview()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1300(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 852
    return-void
.end method
