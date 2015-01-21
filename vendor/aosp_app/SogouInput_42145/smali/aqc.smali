.class Laqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laqa;


# direct methods
.method constructor <init>(Laqa;)V
    .locals 0
    .parameter

    .prologue
    .line 3186
    iput-object p1, p0, Laqc;->a:Laqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3190
    iget-object v0, p0, Laqc;->a:Laqa;

    iget-object v0, v0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 3191
    return-void
.end method
