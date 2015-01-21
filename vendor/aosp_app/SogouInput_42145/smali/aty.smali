.class Laty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Latv;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method constructor <init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Laty;->a:Latv;

    iput-object p2, p0, Laty;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Laty;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;I)I

    .line 443
    iget-object v0, p0, Laty;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lahm;

    move-result-object v0

    invoke-virtual {v0}, Lahm;->b()V

    .line 444
    return-void
.end method
