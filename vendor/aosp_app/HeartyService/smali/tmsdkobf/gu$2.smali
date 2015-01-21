.class Ltmsdkobf/gu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/gu;->b(Landroid/content/pm/ServiceInfo;)Ltmsdkobf/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ow:Ltmsdkobf/gu;

.field final synthetic ox:Landroid/content/Intent;

.field final synthetic oy:Ltmsdkobf/gu$a;


# direct methods
.method constructor <init>(Ltmsdkobf/gu;Landroid/content/Intent;Ltmsdkobf/gu$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Ltmsdkobf/gu$2;->ow:Ltmsdkobf/gu;

    iput-object p2, p0, Ltmsdkobf/gu$2;->ox:Landroid/content/Intent;

    iput-object p3, p0, Ltmsdkobf/gu$2;->oy:Ltmsdkobf/gu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Ltmsdkobf/gu$2;->ow:Ltmsdkobf/gu;

    invoke-static {v0}, Ltmsdkobf/gu;->b(Ltmsdkobf/gu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/gu$2;->ox:Landroid/content/Intent;

    iget-object v2, p0, Ltmsdkobf/gu$2;->oy:Ltmsdkobf/gu$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 275
    return-void
.end method
