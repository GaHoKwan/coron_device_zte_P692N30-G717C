.class Lcom/powermo/SmartBar/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/MasterEntryActivity;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/be;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/be;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/bv;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/be;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/powermo/SmartBar/dc;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/be;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/SmartBarService;->b(Landroid/content/Context;)V

    return-void
.end method
