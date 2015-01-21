.class public Lauk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lauk;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    iget-object v1, p0, Lauk;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const-class v2, Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lauk;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method
