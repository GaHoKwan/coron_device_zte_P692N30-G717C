.class Llj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lli;


# direct methods
.method constructor <init>(Lli;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Llj;->a:Lli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Llj;->a:Lli;

    iget-object v0, v0, Lli;->a:Llf;

    iget-object v1, p0, Llj;->a:Lli;

    iget-object v1, v1, Lli;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llj;->a:Lli;

    iget-object v2, v2, Lli;->a:Llf;

    invoke-static {v2}, Llf;->b(Llf;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Llf;->a(Llf;Ljava/lang/String;Z)V

    .line 338
    return-void
.end method
