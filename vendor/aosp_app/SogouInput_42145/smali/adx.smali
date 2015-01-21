.class public Ladx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/GestureEditActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/GestureEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Ladx;->a:Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Ladx;->a:Lcom/sohu/inputmethod/settings/GestureEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->cancelGesture(Landroid/view/View;)V

    .line 59
    return-void
.end method
