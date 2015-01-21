.class Lcom/mediatek/mtklogger/LogFileListActivity$3;
.super Ljava/lang/Object;
.source "LogFileListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFileListActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFileListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$3;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 213
    const-string v0, "MTKLogger/LogFileListActivity"

    const-string v1, "Clear file button is clicked!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$3;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #calls: Lcom/mediatek/mtklogger/LogFileListActivity;->clearFileSelected()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$600(Lcom/mediatek/mtklogger/LogFileListActivity;)V

    .line 215
    return-void
.end method
