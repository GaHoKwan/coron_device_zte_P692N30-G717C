.class Lcom/powermo/SmartBar/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bw;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/high16 v3, 0x1020

    sget-object v0, Lcom/powermo/SmartBar/dc;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/powermo/SmartBar/dc;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v1}, Lcom/powermo/SmartBar/bw;->c(Lcom/powermo/SmartBar/bw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v0}, Lcom/powermo/SmartBar/bw;->c(Lcom/powermo/SmartBar/bw;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v1, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v1}, Lcom/powermo/SmartBar/bw;->c(Lcom/powermo/SmartBar/bw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v0}, Lcom/powermo/SmartBar/bw;->c(Lcom/powermo/SmartBar/bw;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    iget-object v1, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v1}, Lcom/powermo/SmartBar/bw;->c(Lcom/powermo/SmartBar/bw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v1}, Lcom/powermo/SmartBar/bw;->c(Lcom/powermo/SmartBar/bw;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3
    iget-object v1, p0, Lcom/powermo/SmartBar/by;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v1}, Lcom/powermo/SmartBar/bw;->c(Lcom/powermo/SmartBar/bw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1
.end method
