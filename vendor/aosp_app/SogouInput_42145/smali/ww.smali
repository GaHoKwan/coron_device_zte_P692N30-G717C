.class public Lww;
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
    .line 194
    iput-object p1, p0, Lww;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lww;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->finish()V

    .line 199
    return-void
.end method
