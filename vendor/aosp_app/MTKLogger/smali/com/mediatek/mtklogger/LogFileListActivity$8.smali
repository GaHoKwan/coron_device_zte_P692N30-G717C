.class Lcom/mediatek/mtklogger/LogFileListActivity$8;
.super Ljava/lang/Object;
.source "LogFileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFileListActivity;->clearFileSelected()V
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
    .line 282
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    iget-object v2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Lcom/mediatek/mtklogger/LogFileListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mtklogger/LogFileListActivity$8;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    const v4, 0x7f07005b

    invoke-virtual {v3, v4}, Lcom/mediatek/mtklogger/LogFileListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 286
    .local v0, clearLogWaitingStopDialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;-><init>(Lcom/mediatek/mtklogger/LogFileListActivity$8;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/LogFileListActivity$8$1;->start()V

    .line 304
    return-void
.end method
