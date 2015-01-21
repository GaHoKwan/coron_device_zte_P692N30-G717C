.class Lua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltu;


# direct methods
.method constructor <init>(Ltu;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lua;->a:Ltu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lua;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bZ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bZ:I

    .line 708
    const/4 v0, 0x0

    invoke-static {v0}, Ltu;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 709
    iget-object v0, p0, Lua;->a:Ltu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltu;->a(Ltu;I)I

    .line 710
    iget-object v0, p0, Lua;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)Z

    .line 711
    return-void
.end method
