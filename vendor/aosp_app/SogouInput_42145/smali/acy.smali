.class Lacy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lacx;


# direct methods
.method constructor <init>(Lacx;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lacy;->a:Lacx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lacy;->a:Lacx;

    iget-object v0, v0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    iget-object v0, p0, Lacy;->a:Lacx;

    iget-object v0, v0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method
