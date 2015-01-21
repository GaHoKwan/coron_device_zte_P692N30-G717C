.class Lcom/mediatek/lbs/em/LbsAgps$121;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->editQopHorizontalAcc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2759
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 2762
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2763
    .local v2, hAcc:I
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 2764
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAccUnitFlag:I
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$9100(Lcom/mediatek/lbs/em/LbsAgps;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2765
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->calcKFromMeter(I)I
    invoke-static {v3, v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$9200(Lcom/mediatek/lbs/em/LbsAgps;I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I

    .line 2769
    :goto_0
    iget v3, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    .line 2770
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v3}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ERR: The K-value must be less than 100!!"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2783
    .end local v0           #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v2           #hAcc:I
    :goto_1
    return-void

    .line 2767
    .restart local v0       #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .restart local v2       #hAcc:I
    :cond_0
    iput v2, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2777
    .end local v0           #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v2           #hAcc:I
    :catch_0
    move-exception v1

    .line 2778
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v3}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ERR: Parameters error!!"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2782
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 2774
    .restart local v0       #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .restart local v2       #hAcc:I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 2776
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewHAcc:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$9300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$121;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
