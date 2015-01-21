.class Lacz;
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
    .line 76
    iput-object p1, p0, Lacz;->a:Lacx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lacz;->a:Lacx;

    iget-object v0, v0, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lacz;->a:Lacx;

    iget-object v1, v1, Lacx;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->d(Lsg;)V

    .line 79
    return-void
.end method
