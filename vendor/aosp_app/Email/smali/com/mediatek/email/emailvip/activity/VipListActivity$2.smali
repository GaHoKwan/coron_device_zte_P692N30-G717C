.class Lcom/mediatek/email/emailvip/activity/VipListActivity$2;
.super Ljava/lang/Object;
.source "VipListActivity.java"

# interfaces
.implements Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipListActivity;->saveContactsAsVips([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$2;->this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addVipOverMax()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$2;->this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

    const v1, 0x7f080041

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 225
    return-void
.end method

.method public tryToAddDuplicateVip()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$2;->this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

    const v1, 0x7f080040

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 221
    return-void
.end method
