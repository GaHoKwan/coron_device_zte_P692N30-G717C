.class Lcom/mediatek/lbs/em/LbsAgps$131;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->editMlcNumber()V
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
    .line 2956
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2958
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMlcNumber:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$10000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2960
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    .line 2961
    .local v0, config:Lcom/mediatek/common/agps/MtkAgpsConfig;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    .line 2962
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 2965
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsAgps$131;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2966
    return-void
.end method
