.class Lcom/mediatek/lbs/em/LbsAgps$127;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->editQopDelay()V
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
    .line 2883
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 2887
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2888
    .local v2, value:I
    const v3, 0x8e72

    if-ne v2, v3, :cond_0

    .line 2889
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->switchDebugMode()V
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$9600(Lcom/mediatek/lbs/em/LbsAgps;)V

    .line 2890
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->hideSpecialWidget()Z
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$9700(Lcom/mediatek/lbs/em/LbsAgps;)Z

    .line 2891
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 2904
    .end local v2           #value:I
    :goto_0
    return-void

    .line 2894
    .restart local v2       #value:I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 2895
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iput v2, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopDelay:I

    .line 2896
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 2897
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewDelay:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$9800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    .end local v0           #config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    .end local v2           #value:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2898
    :catch_0
    move-exception v1

    .line 2899
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$127;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v3}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ERR: Parameters error!!"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
