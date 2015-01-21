.class Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;
.super Ljava/lang/Object;
.source "VirtualCardFunction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 146
    const-string v2, "EM/HQA/NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VirtualCardFunction]onClick button view is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$300(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 150
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$300(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    const v4, 0x7f0804aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->doTestAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$600(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Ljava/lang/Boolean;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnSelectAll:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$700(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->changeAllSelect(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$800(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Z)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnClearAll:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$900(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #calls: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->changeAllSelect(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$800(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Z)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnReturn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$1000(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->onBackPressed()V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnRunInBack:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$1100(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->doTestAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$600(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Ljava/lang/Boolean;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$4;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
