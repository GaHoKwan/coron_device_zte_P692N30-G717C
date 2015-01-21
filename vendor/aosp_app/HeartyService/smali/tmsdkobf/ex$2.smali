.class final Ltmsdkobf/ex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lv:B

.field private synthetic lw:Ltmsdkobf/ex;


# direct methods
.method constructor <init>(Ltmsdkobf/ex;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Ltmsdkobf/ex$2;->lw:Ltmsdkobf/ex;

    iput-byte p2, p0, Ltmsdkobf/ex$2;->lv:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 334
    iget-object v0, p0, Ltmsdkobf/ex$2;->lw:Ltmsdkobf/ex;

    invoke-virtual {v0}, Ltmsdkobf/ex;->be()Ltmsdkobf/fn;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Ltmsdkobf/fa;

    iget-object v2, p0, Ltmsdkobf/ex$2;->lw:Ltmsdkobf/ex;

    invoke-static {v2}, Ltmsdkobf/ex;->a(Ltmsdkobf/ex;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ltmsdkobf/ex;->bb()Ltmsdkobf/ex;

    move-result-object v3

    iget-byte v4, p0, Ltmsdkobf/ex$2;->lv:B

    invoke-direct {v1, v2, v3, v4}, Ltmsdkobf/fa;-><init>(Landroid/content/Context;Ltmsdkobf/ex;B)V

    invoke-interface {v0, v1}, Ltmsdkobf/fn;->a(Ltmsdkobf/fj;)V

    .line 339
    :cond_0
    return-void
.end method
