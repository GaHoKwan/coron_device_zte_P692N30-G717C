.class final Ltmsdkobf/hg$b;
.super Ltmsdk/bg/module/aresengine/DataMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataMonitor",
        "<",
        "Ltmsdk/common/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private po:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataMonitor;-><init>()V

    .line 70
    iput-object p1, p0, Ltmsdkobf/hg$b;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ltmsdkobf/hg$b;->register()V

    .line 72
    return-void
.end method

.method static synthetic a(Ltmsdkobf/hg$b;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ltmsdkobf/hg$b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cb()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Ltmsdkobf/hg$b;->po:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ltmsdkobf/hg$b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/hg$b;->po:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    :cond_0
    return-void
.end method

.method private register()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ltmsdkobf/hg$b$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Ltmsdkobf/hg$b$1;-><init>(Ltmsdkobf/hg$b;Landroid/os/Handler;)V

    iput-object v0, p0, Ltmsdkobf/hg$b;->po:Landroid/database/ContentObserver;

    .line 107
    iget-object v0, p0, Ltmsdkobf/hg$b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Ltmsdkobf/hg$b;->po:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ltmsdkobf/hg$b;->cb()V

    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 120
    return-void
.end method
