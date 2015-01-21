.class Lcom/mediatek/email/emailvip/activity/VipPreference$1;
.super Ljava/lang/Object;
.source "VipPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipPreference;->addVipPreferences(Landroid/preference/PreferenceScreen;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

.field final synthetic val$VipActivityIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    iput-object p2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$1;->val$VipActivityIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipPreference;->access$000(Lcom/mediatek/email/emailvip/activity/VipPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$1;->val$VipActivityIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method
