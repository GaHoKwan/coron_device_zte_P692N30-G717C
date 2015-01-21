.class Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;
.super Landroid/preference/Preference;
.source "VipPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VipMemberPreference"
.end annotation


# instance fields
.field private mCountView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    .line 213
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 220
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 221
    .local v0, widgetFrame:Landroid/view/ViewGroup;
    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;->mCountView:Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipPreference;->mMemberCount:I
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipPreference;->access$400(Lcom/mediatek/email/emailvip/activity/VipPreference;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;->setCount(I)V

    .line 223
    return-void
.end method

.method public setCount(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080046

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    return-void
.end method
