.class Lcom/mediatek/mtklogger/taglog/TagLogManager$11;
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
    .line 1069
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1071
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1072
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/mediatek/mtklogger/LogFolderListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1073
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "rootpath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mtklog/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v3, "fromWhere"

    const-string v4, "fromTagLog"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const-string v3, "path"

    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$3200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    const-string v4, "taglogInputName"

    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTagInputNull:Z
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$3100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .line 1082
    .local v2, logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    sget-object v3, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1079
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1086
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1087
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1088
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const-string v4, "Failed"

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1090
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/4 v4, 0x0

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$900(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    .line 1091
    return-void
.end method
