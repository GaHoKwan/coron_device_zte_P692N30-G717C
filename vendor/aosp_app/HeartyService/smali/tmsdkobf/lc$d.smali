.class final Ltmsdkobf/lc$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic BH:Ltmsdkobf/lc;

.field private BI:Ltmsdkobf/lc$a;

.field private BJ:Ltmsdkobf/lc$a;

.field private BK:Ltmsdkobf/lc$a;


# direct methods
.method private constructor <init>(Ltmsdkobf/lc;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Ltmsdkobf/lc$d;->BH:Ltmsdkobf/lc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 121
    new-instance v0, Ltmsdkobf/lc$d$1;

    invoke-direct {v0, p0}, Ltmsdkobf/lc$d$1;-><init>(Ltmsdkobf/lc$d;)V

    iput-object v0, p0, Ltmsdkobf/lc$d;->BI:Ltmsdkobf/lc$a;

    .line 131
    new-instance v0, Ltmsdkobf/lc$d$2;

    invoke-direct {v0, p0}, Ltmsdkobf/lc$d$2;-><init>(Ltmsdkobf/lc$d;)V

    iput-object v0, p0, Ltmsdkobf/lc$d;->BJ:Ltmsdkobf/lc$a;

    .line 141
    new-instance v0, Ltmsdkobf/lc$d$3;

    invoke-direct {v0, p0}, Ltmsdkobf/lc$d$3;-><init>(Ltmsdkobf/lc$d;)V

    iput-object v0, p0, Ltmsdkobf/lc$d;->BK:Ltmsdkobf/lc$a;

    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/lc;Ltmsdkobf/lc$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Ltmsdkobf/lc$d;-><init>(Ltmsdkobf/lc;)V

    return-void
.end method

.method private a(Ltmsdkobf/lc$a;Ljava/lang/String;)V
    .locals 3
    .parameter "handle"
    .parameter "pkgname"

    .prologue
    .line 152
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v1, Ltmsdkobf/lc$d$4;

    invoke-direct {v1, p0, p1, p2}, Ltmsdkobf/lc$d$4;-><init>(Ltmsdkobf/lc$d;Ltmsdkobf/lc$a;Ljava/lang/String;)V

    const-string v2, "handlePackageChangeThread"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method


# virtual methods
.method public fW()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ltmsdkobf/lc$d;->BH:Ltmsdkobf/lc;

    invoke-static {v0}, Ltmsdkobf/lc;->b(Ltmsdkobf/lc;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x8

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 166
    .local v1, data:Landroid/os/Bundle;
    const/4 v3, -0x1

    .line 168
    .local v3, state:I
    if-eqz v1, :cond_0

    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    .line 172
    :cond_0
    :goto_0
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, pkgname:Ljava/lang/String;
    iget-object v4, p0, Ltmsdkobf/lc$d;->BI:Ltmsdkobf/lc$a;

    invoke-direct {p0, v4, v2}, Ltmsdkobf/lc$d;->a(Ltmsdkobf/lc$a;Ljava/lang/String;)V

    .line 184
    .end local v2           #pkgname:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 169
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 176
    :cond_3
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .restart local v2       #pkgname:Ljava/lang/String;
    iget-object v4, p0, Ltmsdkobf/lc$d;->BJ:Ltmsdkobf/lc$a;

    invoke-direct {p0, v4, v2}, Ltmsdkobf/lc$d;->a(Ltmsdkobf/lc$a;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v2           #pkgname:Ljava/lang/String;
    :cond_4
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2       #pkgname:Ljava/lang/String;
    iget-object v4, p0, Ltmsdkobf/lc$d;->BK:Ltmsdkobf/lc$a;

    invoke-direct {p0, v4, v2}, Ltmsdkobf/lc$d;->a(Ltmsdkobf/lc$a;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public register()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 193
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Ltmsdkobf/lc$d;->BH:Ltmsdkobf/lc;

    invoke-static {v1}, Ltmsdkobf/lc;->b(Ltmsdkobf/lc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method
