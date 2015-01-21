.class Lafh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lafd;


# direct methods
.method constructor <init>(Lafd;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lafh;->a:Lafd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Lafs;

    iget-object v1, p0, Lafh;->a:Lafd;

    iget-object v1, v1, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-direct {v0, v1}, Lafs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lafs;->a()V

    .line 131
    return-void
.end method
