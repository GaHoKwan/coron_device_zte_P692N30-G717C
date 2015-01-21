.class Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;
.super Ljava/lang/Object;
.source "PollingLoopMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    .line 286
    const-string v2, "EM/HQA/NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PollingLoopMode]onClick button view is "

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

    .line 287
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->checkRoleSelect()Z
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2000(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    const v2, 0x7f0804da

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 292
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    const v4, 0x7f0804aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->doTestAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnSelectAll:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2200(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->changeAllSelect(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnClearAll:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->changeAllSelect(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)V

    goto :goto_0

    .line 298
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnReturn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 299
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->onBackPressed()V

    goto :goto_0

    .line 300
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnRunInBack:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->doTestAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$2100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Ljava/lang/Boolean;)V

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
