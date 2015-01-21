.class Lalu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field final synthetic a:Lalt;


# direct methods
.method constructor <init>(Lalt;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lalu;->a:Lalt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0, p1}, Lalt;->a(Lalt;I)I

    .line 146
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0}, Lalt;->a(Lalt;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0}, Lalt;->a(Lalt;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1}, Lrl;->a(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0, p2}, Lalt;->a(Lalt;I)I

    .line 130
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0, p1}, Lalt;->b(Lalt;I)I

    .line 131
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0}, Lalt;->a(Lalt;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0}, Lalt;->a(Lalt;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->a(II)V

    .line 134
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0, p2}, Lalt;->a(Lalt;I)I

    .line 138
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0, p1}, Lalt;->b(Lalt;I)I

    .line 139
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0}, Lalt;->a(Lalt;)Lrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lalu;->a:Lalt;

    invoke-static {v0}, Lalt;->a(Lalt;)Lrl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrl;->b(II)V

    .line 142
    :cond_0
    return-void
.end method
