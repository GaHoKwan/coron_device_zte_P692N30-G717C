.class final Ltmsdkobf/gj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/dh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/gj;->a(Landroid/content/Context;Ltmsdkobf/gp;)Z
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
    iput-object p1, p0, Ltmsdkobf/gj$2;->nz:Ltmsdkobf/gj;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final N()Landroid/content/Context;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Ltmsdkobf/gj$2;->nz:Ltmsdkobf/gj;

    invoke-static {v0}, Ltmsdkobf/gj;->g(Ltmsdkobf/gj;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
