.class final Ltmsdkobf/ht$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private mPkg:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private qs:Landroid/widget/RemoteViews;

.field final synthetic qt:Ltmsdkobf/ht;


# direct methods
.method public constructor <init>(Ltmsdkobf/ht;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "remoteviews"
    .parameter "pkg"

    .prologue
    .line 207
    iput-object p1, p0, Ltmsdkobf/ht$a;->qt:Ltmsdkobf/ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Ltmsdkobf/ht$a;->qs:Landroid/widget/RemoteViews;

    .line 209
    iput-object p3, p0, Ltmsdkobf/ht$a;->mPkg:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ltmsdkobf/ht$a;->mView:Landroid/view/View;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, context:Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Ltmsdkobf/ht$a;->qt:Ltmsdkobf/ht;

    invoke-virtual {v2}, Ltmsdkobf/ht;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/ht$a;->mPkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    if-eqz v0, :cond_0

    .line 222
    iget-object v2, p0, Ltmsdkobf/ht$a;->qs:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/ht$a;->mView:Landroid/view/View;

    .line 225
    :cond_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
