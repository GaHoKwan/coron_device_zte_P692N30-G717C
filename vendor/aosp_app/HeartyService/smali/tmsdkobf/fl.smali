.class public final Ltmsdkobf/fl;
.super Ltmsdkobf/fj;
.source "SourceFile"


# instance fields
.field private mc:Landroid/content/Context;

.field private md:Ltmsdkobf/ji;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    const/16 v0, 0x457

    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Ltmsdkobf/fj;-><init>(Landroid/content/Context;II)V

    .line 26
    iput-object v2, p0, Ltmsdkobf/fl;->mc:Landroid/content/Context;

    .line 27
    iput-object v2, p0, Ltmsdkobf/fl;->md:Ltmsdkobf/ji;

    .line 28
    iput-object p1, p0, Ltmsdkobf/fl;->mc:Landroid/content/Context;

    .line 34
    return-void
.end method
