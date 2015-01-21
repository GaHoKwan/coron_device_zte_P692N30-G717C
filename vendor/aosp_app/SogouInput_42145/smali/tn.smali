.class Ltn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Ltn;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Ltn;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    .line 219
    return-void
.end method
