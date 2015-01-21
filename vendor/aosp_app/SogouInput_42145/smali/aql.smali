.class public Laql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 5683
    iput-object p1, p0, Laql;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

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
    .line 5685
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 5686
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lgt;->d:I

    .line 5688
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
