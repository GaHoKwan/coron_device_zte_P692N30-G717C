.class Lcom/zte/heartservice/ZteServiceCenter$1;
.super Ljava/lang/Object;
.source "ZteServiceCenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartservice/ZteServiceCenter;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/heartservice/ZteServiceCenter$1;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/zte/heartservice/ZteServiceCenter$1;->val$context:Landroid/content/Context;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCenter$1;->val$intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCenter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCenter$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
