.class Lcom/mediatek/mtklogger/taglog/TagLogManager$6;
.super Ljava/lang/Object;
.source "TagLogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1030
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsInputDialogClicked:Z
    invoke-static {v0, v2}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$702(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z

    .line 1031
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z
    invoke-static {v0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$3000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, "Dialog button is already clicked, do not click Cancel again"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z
    invoke-static {v0, v2}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$3002(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z

    .line 1037
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1038
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const-string v1, "Cancel"

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$900(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    goto :goto_0
.end method
