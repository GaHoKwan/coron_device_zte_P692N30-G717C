.class Lcom/mediatek/mtklogger/LogFileListActivity$4;
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
    .line 220
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$4;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 223
    const-string v0, "MTKLogger/LogFileListActivity"

    const-string v1, "Cancel button is clicked!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$4;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->finish()V

    .line 225
    return-void
.end method
