.class Lcom/mediatek/mtklogger/taglog/TagLogManager$2;
.super Ljava/lang/Object;
.source "TagLogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/taglog/TagLogManager;->createProgressDialog()V
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
    .line 896
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$2;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 899
    const-string v1, "MTKLogger/TagLogManager"

    const-string v2, "Run in Background button is clicked!"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v1, "extra_key_from_taglog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$2;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 902
    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$2;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    .line 903
    return-void
.end method
