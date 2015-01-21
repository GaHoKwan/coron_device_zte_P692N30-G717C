.class Lcom/mediatek/mtklogger/LogFolderListActivity$2;
.super Ljava/lang/Object;
.source "LogFolderListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFolderListActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/LogFolderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 242
    const-string v0, "MTKLogger/LogFolderListActivity"

    const-string v1, "Clear all button is clicked!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFolderListActivity;

    #calls: Lcom/mediatek/mtklogger/LogFolderListActivity;->clearAllLogs()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFolderListActivity;->access$100(Lcom/mediatek/mtklogger/LogFolderListActivity;)V

    .line 244
    return-void
.end method
