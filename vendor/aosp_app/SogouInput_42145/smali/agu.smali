.class Lagu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lage;


# direct methods
.method constructor <init>(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 1339
    iput-object p1, p0, Lagu;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1343
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1344
    iget-object v0, p0, Lagu;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-virtual {v0}, Lhr;->b()V

    .line 1345
    iget-object v0, p0, Lagu;->a:Lage;

    invoke-static {v0}, Lage;->b(Lage;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1346
    const/4 v0, 0x1

    .line 1348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
