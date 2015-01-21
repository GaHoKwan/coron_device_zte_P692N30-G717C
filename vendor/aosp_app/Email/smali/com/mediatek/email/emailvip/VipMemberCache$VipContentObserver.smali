.class Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;
.super Landroid/database/ContentObserver;
.source "VipMemberCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/VipMemberCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VipContentObserver"
.end annotation


# instance fields
.field private mInnerContext:Landroid/content/Context;

.field private mInnerRunnable:Ljava/lang/Runnable;

.field private mRegistered:Z

.field private final mThrottle:Lcom/android/email/Throttle;

.field final synthetic this$0:Lcom/mediatek/email/emailvip/VipMemberCache;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/VipMemberCache;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter "handler"
    .parameter "context"
    .parameter "runnable"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->this$0:Lcom/mediatek/email/emailvip/VipMemberCache;

    .line 213
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 214
    iput-object p3, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mInnerContext:Landroid/content/Context;

    .line 215
    new-instance v0, Lcom/android/email/Throttle;

    const-string v1, "VipContentObserver"

    invoke-direct {v0, v1, p0, p2}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mThrottle:Lcom/android/email/Throttle;

    .line 216
    iput-object p4, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mInnerRunnable:Ljava/lang/Runnable;

    .line 217
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->onEvent()V

    .line 224
    :cond_0
    return-void
.end method

.method public register(Landroid/net/Uri;)V
    .locals 2
    .parameter "notifyUri"

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->unregister()V

    .line 237
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mInnerContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    iput-boolean v1, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mRegistered:Z

    .line 239
    const-string v0, "VIP_Settings"

    const-string v1, "VipContentObserver register"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mInnerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 245
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    .line 231
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mInnerContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->mRegistered:Z

    goto :goto_0
.end method
