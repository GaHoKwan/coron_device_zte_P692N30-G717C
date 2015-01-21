.class Lxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lxd;


# direct methods
.method constructor <init>(Lxd;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lxe;->a:Lxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lxe;->a:Lxd;

    iget-object v0, v0, Lxd;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eQ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eQ:I

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lxe;->a:Lxd;

    iget-object v1, v1, Lxd;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    iget-object v0, p0, Lxe;->a:Lxd;

    iget-object v0, v0, Lxd;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method
