.class Lcom/mediatek/email/emailvip/activity/VipListActivity$1;
.super Ljava/lang/Object;
.source "VipListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

.field final synthetic val$ids:[J


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListActivity;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

    iput-object p2, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$1;->val$ids:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$1;->this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$1;->val$ids:[J

    #calls: Lcom/mediatek/email/emailvip/activity/VipListActivity;->saveContactsAsVips([J)V
    invoke-static {v0, v1}, Lcom/mediatek/email/emailvip/activity/VipListActivity;->access$000(Lcom/mediatek/email/emailvip/activity/VipListActivity;[J)V

    .line 158
    return-void
.end method
