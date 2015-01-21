.class Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;
.super Landroid/database/ContentObserver;
.source "VipPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VipMemberCountObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUnreadNumOfAllInbox:I

.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    .line 199
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;->mUnreadNumOfAllInbox:I

    .line 200
    iput-object p3, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;->mContext:Landroid/content/Context;

    .line 201
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;->mContext:Landroid/content/Context;

    #calls: Lcom/mediatek/email/emailvip/activity/VipPreference;->getVipMemberCount(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/mediatek/email/emailvip/activity/VipPreference;->access$500(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/content/Context;)V

    .line 206
    return-void
.end method
