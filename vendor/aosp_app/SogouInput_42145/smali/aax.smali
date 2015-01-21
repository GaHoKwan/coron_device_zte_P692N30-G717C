.class Laax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laaq;


# direct methods
.method constructor <init>(Laaq;)V
    .locals 0
    .parameter

    .prologue
    .line 1489
    iput-object p1, p0, Laax;->a:Laaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1491
    iget-object v0, p0, Laax;->a:Laaq;

    iget-object v1, p0, Laax;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laaq;->a(Laaq;Ljava/lang/String;)V

    .line 1492
    return-void
.end method
