.class Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;
.super Landroid/preference/Preference;
.source "GeneralPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/GeneralPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VipMemberPreference"
.end annotation


# instance fields
.field private mCountView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/email/activity/setup/GeneralPreferences;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/GeneralPreferences;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    .line 268
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 269
    const-string v0, "vip_members"

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 270
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 271
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 272
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 278
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 279
    .local v0, widgetFrame:Landroid/view/ViewGroup;
    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;->mCountView:Landroid/widget/TextView;

    .line 280
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    #getter for: Lcom/android/email/activity/setup/GeneralPreferences;->mMemberCount:I
    invoke-static {v1}, Lcom/android/email/activity/setup/GeneralPreferences;->access$000(Lcom/android/email/activity/setup/GeneralPreferences;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;->setCount(I)V

    .line 281
    return-void
.end method

.method public setCount(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;->mCountView:Landroid/widget/TextView;

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

    .line 289
    :cond_0
    return-void
.end method
