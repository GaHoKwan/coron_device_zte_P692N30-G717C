.class Lcom/mediatek/engineermode/camera/Camera$8;
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

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/Camera;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera$8;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    iput-object p2, p0, Lcom/mediatek/engineermode/camera/Camera$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "RawType"

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$8;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureType:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$300(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw Type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$8;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureType:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$300(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method
