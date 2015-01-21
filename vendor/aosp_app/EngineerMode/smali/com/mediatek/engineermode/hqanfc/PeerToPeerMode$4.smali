.class Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;
.super Ljava/lang/Object;
.source "PeerToPeerMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    .line 164
    const-string v2, "EM/HQA/NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PeerToPeerMode]onClick button view is "

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

    .line 165
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$500(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->checkRoleSelect()Z
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1000(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    const v2, 0x7f0804da

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 170
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$500(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    const v4, 0x7f0804aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->doTestAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnSelectAll:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1200(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->changeAllSelect(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1300(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Z)V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnClearAll:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1400(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->changeAllSelect(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1300(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Z)V

    goto :goto_0

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnReturn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1500(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->onBackPressed()V

    goto :goto_0

    .line 178
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnRunInBack:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1600(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->doTestAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Ljava/lang/Boolean;)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$4;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
