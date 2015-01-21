.class Lcom/powermo/SmartBar/ci;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bz;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/ci;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {p1}, Lcom/powermo/SmartBar/bz;->c(Lcom/powermo/SmartBar/bz;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/ci;->a:Lcom/powermo/SmartBar/bz;

    invoke-static {v0}, Lcom/powermo/SmartBar/bz;->g(Lcom/powermo/SmartBar/bz;)Lcom/powermo/SmartBar/ch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ch;->a(I)V

    return-void
.end method
