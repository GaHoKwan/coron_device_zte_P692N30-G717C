.class Lcom/mediatek/mtklogger/taglog/TagLogManager$7;
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

.field final synthetic val$inputText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    iput-object p2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->val$inputText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 999
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z
    invoke-static {v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$3000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    const-string v1, "MTKLogger/TagLogManager"

    const-string v2, "Dialog button is already clicked, do not click OK again"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z
    invoke-static {v1, v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$3002(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z

    .line 1005
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1007
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1008
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsInputDialogClicked:Z
    invoke-static {v1, v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$702(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z

    .line 1010
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2602(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTagInputNull:Z
    invoke-static {v1, v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$3102(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z

    .line 1015
    :cond_1
    const-string v1, "MTKLogger/TagLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lcom/mediatek/mtklogger/taglog/ZipManager;->initZippedFilesCount()V

    .line 1017
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
    invoke-static {v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    move-result-object v1

    const/16 v2, 0x132

    invoke-virtual {v1, v2}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    .line 1021
    new-instance v1, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;

    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;Lcom/mediatek/mtklogger/taglog/TagLogManager$1;)V

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->start()V

    .line 1025
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0
.end method
