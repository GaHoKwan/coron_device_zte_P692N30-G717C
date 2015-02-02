.class Lcom/mediatek/engineermode/camera/Camera$11;
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

.field final synthetic val$isoItemsValue:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/Camera;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera$11;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    iput-object p2, p0, Lcom/mediatek/engineermode/camera/Camera$11;->val$isoItemsValue:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 353
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$11;->val$isoItemsValue:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$11;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/Camera$11;->val$isoItemsValue:[Ljava/lang/String;

    aget-object v1, v1, p2

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mISO:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/Camera;->access$502(Lcom/mediatek/engineermode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    :goto_0
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set mISO has choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$11;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mISO:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$500(Lcom/mediatek/engineermode/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$11;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/Camera$11;->val$isoItemsValue:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mISO:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/Camera;->access$502(Lcom/mediatek/engineermode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of Array length. Set mISO whichButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
