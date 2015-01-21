.class Lcom/mediatek/mtklogger/taglog/TagLogManager$9;
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
    .line 1045
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 1047
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1048
    .local v1, logType:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogToolStatus:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1050
    .end local v1           #logType:Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1800(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v2

    .line 1051
    .local v2, temp:Z
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z

    .line 1052
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->startOrStopAllLogTool(Z)V
    invoke-static {v3, v6}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2500(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    .line 1053
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z
    invoke-static {v3, v2}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z

    .line 1054
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V
    invoke-static {v3, v6}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$900(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    .line 1055
    return-void
.end method
