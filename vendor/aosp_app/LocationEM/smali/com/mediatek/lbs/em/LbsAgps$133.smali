.class Lcom/mediatek/lbs/em/LbsAgps$133;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->editMSISDN(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;

.field final synthetic val$bIs3rdMsisdn:Z

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;ZLandroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3002
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iput-boolean p2, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$bIs3rdMsisdn:Z

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$text:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 3007
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$bIs3rdMsisdn:Z

    if-nez v1, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSILRMsisdn(Ljava/lang/String;)V

    .line 3009
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_MSISDN:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$10100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3020
    :goto_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3021
    return-void

    .line 3011
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->setSI3PartyMsisdn([Ljava/lang/String;)V

    .line 3012
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextView_ThirdMSISDN:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3015
    :catch_0
    move-exception v0

    .line 3016
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$133;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ERR: Parameters error!!"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
