.class Lagd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lagd;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lagd;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()V

    .line 351
    iget-object v0, p0, Lagd;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lagd;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0221

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    return-void
.end method
