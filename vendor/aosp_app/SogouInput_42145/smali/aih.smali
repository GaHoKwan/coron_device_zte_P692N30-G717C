.class Laih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Laih;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 971
    iget-object v0, p0, Laih;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Laih;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v0

    iget-object v1, p0, Laih;->a:Laia;

    invoke-static {v1}, Laia;->b(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laja;->a(Ljava/lang/String;)Laix;

    move-result-object v0

    .line 973
    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v0}, Laix;->b()V

    .line 976
    :cond_0
    iget-object v0, p0, Laih;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 978
    :cond_1
    return-void
.end method
