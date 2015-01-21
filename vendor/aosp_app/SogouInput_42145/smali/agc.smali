.class Lagc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lagc;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lagc;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lamj;

    move-result-object v0

    invoke-virtual {v0}, Lamj;->a()V

    .line 343
    return-void
.end method
