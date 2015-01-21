.class public Lwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lwj;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lwj;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->requestLayout()V

    .line 172
    return-void
.end method
