.class public Lvv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lvv;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Lvv;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->finish()V

    .line 571
    return-void
.end method
