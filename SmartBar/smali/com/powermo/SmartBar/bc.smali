.class Lcom/powermo/SmartBar/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/MasterEntryActivity;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/bc;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/bc;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
