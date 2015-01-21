.class public Lwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppManagerActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lwx;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lwx;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 288
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 289
    iget-object v0, p0, Lwx;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a()V

    goto :goto_0

    .line 290
    :cond_2
    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lwx;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b()V

    goto :goto_0
.end method
