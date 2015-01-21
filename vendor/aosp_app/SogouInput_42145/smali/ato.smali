.class public Lato;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1786
    iput-object p1, p0, Lato;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1791
    iget-object v0, p0, Lato;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Z)V

    .line 1792
    return-void
.end method
