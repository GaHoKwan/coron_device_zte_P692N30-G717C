.class public Lafj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lafj;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lafj;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lamh;

    move-result-object v0

    invoke-virtual {v0}, Lamh;->a()V

    .line 192
    return-void
.end method
