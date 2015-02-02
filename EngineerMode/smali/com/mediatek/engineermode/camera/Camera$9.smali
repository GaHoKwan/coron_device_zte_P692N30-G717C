.class Lcom/mediatek/engineermode/camera/Camera$9;
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
    .line 322
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera$9;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 324
    if-nez p2, :cond_1

    .line 325
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$9;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    const-string v1, "50"

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mAntiFlicker:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/Camera;->access$402(Lcom/mediatek/engineermode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    :cond_0
    :goto_0
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Flicker has choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$9;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mAntiFlicker:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$400(Lcom/mediatek/engineermode/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$9;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    const-string v1, "60"

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mAntiFlicker:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/Camera;->access$402(Lcom/mediatek/engineermode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
