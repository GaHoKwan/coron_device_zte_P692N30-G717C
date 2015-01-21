.class Lcom/mediatek/engineermode/hqanfc/Option$3;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/Option;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/Option;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/Option$3;->this$0:Lcom/mediatek/engineermode/hqanfc/Option;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 86
    const-string v1, "EM/HQA/NFC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Option]onClick button view is "

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

    .line 88
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/Option$3;->this$0:Lcom/mediatek/engineermode/hqanfc/Option;

    #getter for: Lcom/mediatek/engineermode/hqanfc/Option;->mBtnSet:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/Option;->access$300(Lcom/mediatek/engineermode/hqanfc/Option;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/Option$3;->this$0:Lcom/mediatek/engineermode/hqanfc/Option;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/Option$3;->this$0:Lcom/mediatek/engineermode/hqanfc/Option;

    #calls: Lcom/mediatek/engineermode/hqanfc/Option;->sendCommand()V
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/Option;->access$400(Lcom/mediatek/engineermode/hqanfc/Option;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/Option$3;->this$0:Lcom/mediatek/engineermode/hqanfc/Option;

    #getter for: Lcom/mediatek/engineermode/hqanfc/Option;->mBtnReturn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/Option;->access$500(Lcom/mediatek/engineermode/hqanfc/Option;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/Option$3;->this$0:Lcom/mediatek/engineermode/hqanfc/Option;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/hqanfc/Option;->onBackPressed()V

    goto :goto_0
.end method
