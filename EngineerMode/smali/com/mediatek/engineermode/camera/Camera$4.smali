.class Lcom/mediatek/engineermode/camera/Camera$4;
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
    .line 254
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    iput-object p2, p0, Lcom/mediatek/engineermode/camera/Camera$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/Camera;->access$100(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mStep:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/Camera;->access$002(Lcom/mediatek/engineermode/camera/Camera;I)I

    .line 258
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AFStep"

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mStep:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$000(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AFMode"

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$100(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$100(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF step :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mStep:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$000(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mMode:I
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/Camera;->access$100(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 260
    const-string v0, "EM/Camera"

    const-string v1, "1 == mMode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #setter for: Lcom/mediatek/engineermode/camera/Camera;->mStep:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/Camera;->access$002(Lcom/mediatek/engineermode/camera/Camera;I)I

    .line 263
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AFStep"

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera$4;->this$0:Lcom/mediatek/engineermode/camera/Camera;

    #getter for: Lcom/mediatek/engineermode/camera/Camera;->mStep:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/Camera;->access$000(Lcom/mediatek/engineermode/camera/Camera;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
