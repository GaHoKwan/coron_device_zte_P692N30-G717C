.class public final Ltmsdkobf/fa;
.super Ltmsdkobf/fj;
.source "SourceFile"


# instance fields
.field private lx:Ltmsdkobf/ex;

.field private ly:[Ltmsdkobf/ey;

.field private lz:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltmsdkobf/ex;B)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    const/16 v0, 0x457

    const/16 v1, 0x6e

    invoke-direct {p0, p1, v0, v1}, Ltmsdkobf/fj;-><init>(Landroid/content/Context;II)V

    .line 33
    iput-object v2, p0, Ltmsdkobf/fa;->lx:Ltmsdkobf/ex;

    .line 34
    iput-object v2, p0, Ltmsdkobf/fa;->ly:[Ltmsdkobf/ey;

    .line 35
    const/4 v0, -0x1

    iput-byte v0, p0, Ltmsdkobf/fa;->lz:B

    .line 48
    iput-object p2, p0, Ltmsdkobf/fa;->lx:Ltmsdkobf/ex;

    .line 49
    iput-byte p3, p0, Ltmsdkobf/fa;->lz:B

    .line 50
    return-void
.end method
