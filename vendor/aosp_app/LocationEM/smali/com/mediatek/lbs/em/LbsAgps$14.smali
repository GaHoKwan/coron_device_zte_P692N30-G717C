.class Lcom/mediatek/lbs/em/LbsAgps$14;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 954
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 955
    .local v0, index:I
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$300(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllCdmaProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 956
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->setCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 958
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpAddr:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewMcpPort:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1300(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxMcpEnable:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v5

    iget v2, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 961
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeAddrValid:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v5

    iget v2, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 962
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeIpType:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v5

    iget v2, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 963
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp4Addr:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1700(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeIp6Addr:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1800(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdePort:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$1900(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxPdeUrlVaild:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$2000(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v2

    iget v5, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    if-nez v5, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 967
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewPdeUrl:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$2100(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$14;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #setter for: Lcom/mediatek/lbs/em/LbsAgps;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    invoke-static {v2, v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$2202(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 970
    return v4

    :cond_0
    move v2, v4

    .line 960
    goto :goto_0

    :cond_1
    move v2, v4

    .line 961
    goto :goto_1

    :cond_2
    move v2, v4

    .line 962
    goto :goto_2

    :cond_3
    move v3, v4

    .line 966
    goto :goto_3
.end method
