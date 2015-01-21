.class Lafa;
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
    .line 58
    iput-object p1, p0, Lafa;->a:Laey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lafa;->a:Laey;

    iget-object v0, v0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lafa;->a:Laey;

    iget-object v1, v1, Laey;->a:Laew;

    invoke-static {v1}, Laew;->a(Laew;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->d(Lsg;)V

    .line 61
    return-void
.end method
