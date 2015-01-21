.class Lagk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lage;


# direct methods
.method constructor <init>(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lagk;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1500
    iget-object v0, p0, Lagk;->a:Lage;

    invoke-static {v0}, Lage;->b(Lage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagk;->a:Lage;

    invoke-static {v0}, Lage;->b(Lage;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    iget-object v0, p0, Lagk;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    iget-object v1, p0, Lagk;->a:Lage;

    invoke-static {v1}, Lage;->b(Lage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhr;->a(Ljava/lang/String;)V

    .line 1503
    :cond_0
    return-void
.end method
