.class public Larh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput-object p1, p0, Larh;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput-object p2, p0, Larh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15042
    iget-object v0, p0, Larh;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 15043
    if-eqz v0, :cond_0

    .line 15044
    iget-object v1, p0, Larh;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 15046
    :cond_0
    return-void
.end method
