.class Laeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laen;


# direct methods
.method constructor <init>(Laen;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Laeq;->a:Laen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Lafs;

    iget-object v1, p0, Laeq;->a:Laen;

    iget-object v1, v1, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-direct {v0, v1}, Lafs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lafs;->a()V

    .line 100
    return-void
.end method
