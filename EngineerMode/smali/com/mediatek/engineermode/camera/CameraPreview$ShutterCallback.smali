.class final Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1488
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview$ShutterCallback;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 1490
    const-string v0, "EM/Camera"

    const-string v1, "ShutterCallback"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    return-void
.end method
