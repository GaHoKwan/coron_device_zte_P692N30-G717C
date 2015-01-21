.class Labj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Labi;


# direct methods
.method constructor <init>(Labi;)V
    .locals 0
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Labj;->a:Labi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1669
    iget-object v0, p0, Labj;->a:Labi;

    iget-object v0, v0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v1, p0, Labj;->a:Labi;

    iget v1, v1, Labi;->a:I

    invoke-static {v0, v1}, Laaq;->a(Laaq;I)V

    .line 1670
    return-void
.end method
