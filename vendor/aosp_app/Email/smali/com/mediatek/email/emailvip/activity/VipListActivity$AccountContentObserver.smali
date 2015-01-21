.class Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;
.super Landroid/database/ContentObserver;
.source "VipListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListActivity;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

    .line 236
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 237
    iput-object p3, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;->mContext:Landroid/content/Context;

    .line 238
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Account;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 243
    .local v0, count:I
    if-nez v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListActivity$AccountContentObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 246
    :cond_0
    return-void
.end method
