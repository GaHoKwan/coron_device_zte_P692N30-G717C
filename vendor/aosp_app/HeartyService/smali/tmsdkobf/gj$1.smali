.class final Ltmsdkobf/gj$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic nz:Ltmsdkobf/gj;


# direct methods
.method constructor <init>(Ltmsdkobf/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ltmsdkobf/gj$1;->nz:Ltmsdkobf/gj;

    .line 200
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter "intent"

    .prologue
    .line 204
    .line 205
    const-string v1, "noConnectivity"

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 206
    .local v0, noConnectivity:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Ltmsdkobf/gj$1;->nz:Ltmsdkobf/gj;

    invoke-static {v1}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;)Ltmsdkobf/gj$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Ltmsdkobf/gj$1;->nz:Ltmsdkobf/gj;

    invoke-static {v1}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;)Ltmsdkobf/gj$b;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ltmsdkobf/gj$b;->sendEmptyMessage(I)Z

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connectivity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 210
    return-void
.end method
