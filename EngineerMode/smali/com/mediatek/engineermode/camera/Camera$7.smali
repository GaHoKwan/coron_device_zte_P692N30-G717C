.class Lcom/mediatek/engineermode/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/Camera;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera$7;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$7;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureType:I
    invoke-static {v0, p2}, Lcom/mediatek/engineermode/camera/Camera;->access$302(Lcom/mediatek/engineermode/camera/Camera;I)I

    .line 304
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Raw Type has choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$7;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureType:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$300(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method
