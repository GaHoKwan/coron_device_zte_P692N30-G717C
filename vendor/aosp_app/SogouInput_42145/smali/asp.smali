.class public Lasp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMELauncher;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMELauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lasp;->a:Lcom/sohu/inputmethod/sogou/SogouIMELauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lasp;->a:Lcom/sohu/inputmethod/sogou/SogouIMELauncher;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMELauncher;->finish()V

    .line 67
    return-void
.end method
