.class public Laes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Laes;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Laes;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Laly;

    move-result-object v0

    invoke-virtual {v0}, Laly;->a()V

    .line 166
    return-void
.end method
