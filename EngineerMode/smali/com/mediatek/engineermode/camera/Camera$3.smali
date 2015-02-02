.class Lcom/mediatek/engineermode/camera/Camera$3;
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
    .line 244
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera$3;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$3;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mMode:I
    invoke-static {v0, p2}, Lcom/mediatek/engineermode/camera/Camera;->access$102(Lcom/mediatek/engineermode/camera/Camera;I)I

    .line 247
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set AF Route has choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$3;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$100(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$3;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/Camera;->access$100(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$3;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 251
    :cond_0
    return-void
.end method
