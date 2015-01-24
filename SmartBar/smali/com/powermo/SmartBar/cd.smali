.class Lcom/powermo/SmartBar/cd;
.super Lcom/powermo/SmartBar/ch;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bz;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/cd;->a:Lcom/powermo/SmartBar/bz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powermo/SmartBar/ch;-><init>(Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/ch;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powermo/SmartBar/cd;->a:Lcom/powermo/SmartBar/bz;

    iget-object v3, p0, Lcom/powermo/SmartBar/cd;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v3}, Lcom/powermo/SmartBar/bz;->f(Lcom/powermo/SmartBar/bz;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/powermo/SmartBar/bz;->a(Lcom/powermo/SmartBar/bz;Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cd;->a:Lcom/powermo/SmartBar/bz;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bz;->b()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
