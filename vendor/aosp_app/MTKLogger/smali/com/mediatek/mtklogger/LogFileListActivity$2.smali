.class Lcom/mediatek/mtklogger/LogFileListActivity$2;
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
    .line 195
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 198
    const-string v0, "MTKLogger/LogFileListActivity"

    const-string v1, "Select All button is clicked!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllButton:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$300(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$400(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    iget-object v1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllButton:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$300(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #calls: Lcom/mediatek/mtklogger/LogFileListActivity;->setAllFileSelected(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$500(Lcom/mediatek/mtklogger/LogFileListActivity;Z)V

    .line 205
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$2;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    #getter for: Lcom/mediatek/mtklogger/LogFileListActivity;->mSelectAllTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/mtklogger/LogFileListActivity;->access$400(Lcom/mediatek/mtklogger/LogFileListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
