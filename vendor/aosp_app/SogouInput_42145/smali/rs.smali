.class Lrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrn;


# instance fields
.field final synthetic a:Lrr;


# direct methods
.method constructor <init>(Lrr;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lrs;->a:Lrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrm;)V
    .locals 2
    .parameter

    .prologue
    .line 183
    new-instance v0, Lrt;

    iget-object v1, p0, Lrs;->a:Lrr;

    invoke-direct {v0, v1, p0}, Lrt;-><init>(Lrr;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p1}, Lrm;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lrt;->a(I)V

    .line 185
    invoke-virtual {p1}, Lrm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lrt;->b(I)V

    .line 186
    iget-object v1, p0, Lrs;->a:Lrr;

    invoke-static {v1, v0}, Lrr;->a(Lrr;Lrt;)V

    .line 187
    iget-object v0, p0, Lrs;->a:Lrr;

    const-string v1, "ssss"

    invoke-static {v0, v1}, Lrr;->a(Lrr;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lrs;->a:Lrr;

    invoke-virtual {p1}, Lrm;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrr;->a(Lrr;Ljava/lang/String;)V

    .line 189
    return-void
.end method
