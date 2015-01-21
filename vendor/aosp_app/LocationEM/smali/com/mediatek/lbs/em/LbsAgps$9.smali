.class Lcom/mediatek/lbs/em/LbsAgps$9;
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
    .line 861
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$9;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 863
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 864
    .local v0, index:I
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$9;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$300(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 865
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$9;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$9;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$9;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mCheckBoxTls:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$600(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/CheckBox;

    move-result-object v4

    iget v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 868
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$9;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$200(Lcom/mediatek/lbs/em/LbsAgps;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 869
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$9;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #setter for: Lcom/mediatek/lbs/em/LbsAgps;->mCurrentProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    invoke-static {v2, v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$702(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/common/agps/MtkAgpsProfile;)Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 873
    return v3

    :cond_0
    move v2, v3

    .line 867
    goto :goto_0
.end method
