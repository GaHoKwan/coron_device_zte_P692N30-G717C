.class Lafb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laey;


# direct methods
.method constructor <init>(Laey;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lafb;->a:Laey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lafs;

    iget-object v1, p0, Lafb;->a:Laey;

    iget-object v1, v1, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lafs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lafs;->a()V

    .line 85
    return-void
.end method
