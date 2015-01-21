.class public Lael;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lael;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lael;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lael;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    const v2, 0x7f0b027f

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object v0, p0, Lael;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->finish()V

    .line 110
    iget-object v0, p0, Lael;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a()I

    .line 111
    return-void
.end method
