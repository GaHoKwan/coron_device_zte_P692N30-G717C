.class Lcom/android/deskclock/DeskClock$1;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return v5

    .line 220
    :sswitch_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    const-class v4, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 224
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0

    .line 233
    .end local v0           #i:Landroid/content/Intent;
    :sswitch_2
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    const-class v4, Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00a8 -> :sswitch_0
        0x7f0e00a9 -> :sswitch_1
        0x7f0e00ae -> :sswitch_2
    .end sparse-switch
.end method
