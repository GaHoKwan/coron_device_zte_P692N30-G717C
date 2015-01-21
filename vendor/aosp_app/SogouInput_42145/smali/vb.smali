.class Lvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Luv;


# direct methods
.method constructor <init>(Luv;)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lvb;->a:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 691
    iget-object v0, p0, Lvb;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bZ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bZ:I

    .line 692
    const/4 v0, 0x0

    invoke-static {v0}, Luv;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 693
    iget-object v0, p0, Lvb;->a:Luv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luv;->a(Luv;I)I

    .line 694
    iget-object v0, p0, Lvb;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)Z

    .line 695
    return-void
.end method
