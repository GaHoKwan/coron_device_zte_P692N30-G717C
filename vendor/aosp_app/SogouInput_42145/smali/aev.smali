.class public Laev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Laev;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Laev;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->finish()V

    .line 202
    return-void
.end method
