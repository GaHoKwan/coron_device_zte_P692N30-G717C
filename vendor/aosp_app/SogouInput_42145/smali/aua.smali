.class Laua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Latv;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method constructor <init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Laua;->a:Latv;

    iput-object p2, p0, Laua;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 466
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 467
    iget-object v0, p0, Laua;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;I)I

    .line 469
    :cond_0
    return v1
.end method
