.class Lcom/powermo/SmartBar/bn;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/MasterEntryActivity;


# direct methods
.method public constructor <init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/bn;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-static {p1}, Lcom/powermo/SmartBar/MasterEntryActivity;->a(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/bn;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->b(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bn;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->b(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/SmartBar/bn;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-static {v1}, Lcom/powermo/SmartBar/MasterEntryActivity;->c(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/widget/Switch;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/powermo/SmartBar/bn;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-virtual {v1}, Lcom/powermo/SmartBar/MasterEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/powermo/SmartBar/bn;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-static {v2}, Lcom/powermo/SmartBar/MasterEntryActivity;->c(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
