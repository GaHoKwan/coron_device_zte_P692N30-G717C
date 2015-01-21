.class Lakm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lakl;


# direct methods
.method constructor <init>(Lakl;)V
    .locals 0
    .parameter

    .prologue
    .line 1964
    iput-object p1, p0, Lakm;->a:Lakl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1966
    new-instance v0, Lafs;

    iget-object v1, p0, Lakm;->a:Lakl;

    iget-object v1, v1, Lakl;->a:Lajq;

    invoke-static {v1}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lafs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lafs;->a()V

    .line 1967
    return-void
.end method
