.class final Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mJpegImageData:[B
    invoke-static {v0, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5002(Lcom/mediatek/engineermode/cameranew/Camera;[B)[B

    .line 747
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$JpegPictureCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->doAttach()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5100(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto :goto_0
.end method
