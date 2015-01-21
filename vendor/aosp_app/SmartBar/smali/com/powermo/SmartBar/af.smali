.class Lcom/powermo/SmartBar/af;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ad;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ad;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/af;->a:Lcom/powermo/SmartBar/ad;

    invoke-static {p1}, Lcom/powermo/SmartBar/ad;->a(Lcom/powermo/SmartBar/ad;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/powermo/SmartBar/dc;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/af;->a:Lcom/powermo/SmartBar/ad;

    iget-object v1, p0, Lcom/powermo/SmartBar/af;->a:Lcom/powermo/SmartBar/ad;

    invoke-static {v1}, Lcom/powermo/SmartBar/ad;->b(Lcom/powermo/SmartBar/ad;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/powermo/SmartBar/dc;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/ad;->a(Lcom/powermo/SmartBar/ad;Ljava/lang/String;)V

    sget-boolean v0, Lcom/powermo/SmartBar/ad;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app control list changed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/powermo/SmartBar/af;->a:Lcom/powermo/SmartBar/ad;

    invoke-static {v3}, Lcom/powermo/SmartBar/ad;->c(Lcom/powermo/SmartBar/ad;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/af;->a:Lcom/powermo/SmartBar/ad;

    invoke-static {v0}, Lcom/powermo/SmartBar/ad;->d(Lcom/powermo/SmartBar/ad;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/af;->a:Lcom/powermo/SmartBar/ad;

    iget-object v0, v0, Lcom/powermo/SmartBar/ad;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/af;->a:Lcom/powermo/SmartBar/ad;

    iget-object v0, v0, Lcom/powermo/SmartBar/ad;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ae;

    invoke-interface {v0, v2}, Lcom/powermo/SmartBar/ae;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
