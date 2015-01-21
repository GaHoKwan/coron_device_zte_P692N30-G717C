.class Laid;
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
    .line 885
    iput-object p1, p0, Laid;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 889
    iget-object v0, p0, Laid;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    iget-object v0, p0, Laid;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 892
    iget-object v0, p0, Laid;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v0

    iget-object v1, p0, Laid;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laja;->c(Ljava/lang/String;)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Laid;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 896
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 897
    iget-object v1, p0, Laid;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 898
    iget-object v1, p0, Laid;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
