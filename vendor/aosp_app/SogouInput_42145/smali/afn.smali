.class public Lafn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lafn;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lafn;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->finish()V

    .line 295
    return-void
.end method
