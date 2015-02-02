.class Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;
.super Ljava/lang/Object;
.source "FunctionWrite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/FunctionWrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 97
    const-string v1, "EM/HQA/NFC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FunctionWrite]onClick button view is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnWrite:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->access$300(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;

    #calls: Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->doWrite()V
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->access$400(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnCancel:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->access$500(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[FunctionWrite]onClick noting."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
