.class Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;->this$1:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;->this$1:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    iget-object v0, v0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;->this$1:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    iget-object v0, v0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1073
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask$1;->this$1:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    iget-object v0, v0, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    invoke-static {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2002(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    .line 1076
    :cond_0
    return-void
.end method
