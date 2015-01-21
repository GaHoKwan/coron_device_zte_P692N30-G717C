.class Ltr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Ltr;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Ltr;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bY:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bY:I

    .line 565
    const/4 v0, 0x0

    invoke-static {v0}, Ltm;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 566
    iget-object v0, p0, Ltr;->a:Ltm;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ltm;->a(Ltm;I)I

    .line 567
    iget-object v0, p0, Ltr;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)Z

    .line 568
    return-void
.end method
