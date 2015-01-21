.class Lcom/mediatek/email/emailvip/activity/VipListFragment$3;
.super Ljava/lang/Object;
.source "VipListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;->onAddVip([Lcom/android/emailcommon/mail/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

.field final synthetic val$addresses:[Lcom/android/emailcommon/mail/Address;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;[Lcom/android/emailcommon/mail/Address;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$3;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    iput-object p2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$3;->val$addresses:[Lcom/android/emailcommon/mail/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$3;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$3;->val$addresses:[Lcom/android/emailcommon/mail/Address;

    #calls: Lcom/mediatek/email/emailvip/activity/VipListFragment;->saveAsVips([Lcom/android/emailcommon/mail/Address;)V
    invoke-static {v0, v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$300(Lcom/mediatek/email/emailvip/activity/VipListFragment;[Lcom/android/emailcommon/mail/Address;)V

    .line 264
    return-void
.end method
