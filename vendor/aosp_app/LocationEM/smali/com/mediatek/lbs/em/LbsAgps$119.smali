.class Lcom/mediatek/lbs/em/LbsAgps$119;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->editSlpPort()V
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
    .line 2692
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 2696
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v1

    .line 2697
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 2698
    iget v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    const v3, 0xffff

    if-le v2, v3, :cond_0

    .line 2699
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v2}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ERR: The SLP port value must be less than 65536!!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2715
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :goto_0
    return-void

    .line 2703
    .restart local v1       #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 2704
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2714
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2709
    :catch_0
    move-exception v0

    .line 2710
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$119;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v2}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ERR: Parameters error!!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method