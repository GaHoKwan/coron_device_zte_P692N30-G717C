.class Llu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lls;


# direct methods
.method constructor <init>(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Llu;->a:Lls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1066
    iget-object v0, p0, Llu;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llu;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llu;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)I

    move-result v0

    iget-object v1, p0, Llu;->a:Lls;

    invoke-static {v1}, Lls;->b(Lls;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1067
    iget-object v0, p0, Llu;->a:Lls;

    invoke-static {v0, v2}, Lls;->a(Lls;I)I

    .line 1068
    iget-object v0, p0, Llu;->a:Lls;

    invoke-static {v0, v2}, Lls;->b(Lls;I)I

    .line 1069
    iget-object v0, p0, Llu;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1073
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Llu;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
