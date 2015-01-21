.class Ltmsdkobf/hc$b$12;
.super Ltmsdkobf/gy$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hc$b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oY:Ltmsdkobf/hc$b;


# direct methods
.method constructor <init>(Ltmsdkobf/hc$b;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Ltmsdkobf/hc$b$12;->oY:Ltmsdkobf/hc$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bY()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public bZ()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Ltmsdkobf/hc$b$12;->oY:Ltmsdkobf/hc$b;

    invoke-static {v0, p0}, Ltmsdkobf/hc$b;->a(Ltmsdkobf/hc$b;Ltmsdkobf/gy$a;)V

    .line 542
    return-void
.end method
