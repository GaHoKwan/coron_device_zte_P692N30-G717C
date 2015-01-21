.class Labn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Labm;


# direct methods
.method constructor <init>(Labm;)V
    .locals 0
    .parameter

    .prologue
    .line 1720
    iput-object p1, p0, Labn;->a:Labm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1723
    iget-object v0, p0, Labn;->a:Labm;

    iget-object v0, v0, Labm;->a:Labl;

    iget-object v0, v0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v1, p0, Labn;->a:Labm;

    iget-object v1, v1, Labm;->a:Labl;

    iget v1, v1, Labl;->a:I

    invoke-static {v0, v1}, Laaq;->a(Laaq;I)V

    .line 1724
    return-void
.end method
