.class Lcom/android/simmelock/UnlockSetting$5;
.super Ljava/lang/Object;
.source "UnlockSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/UnlockSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/UnlockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/UnlockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/simmelock/UnlockSetting$5;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 191
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 192
    const-string v1, "SIMMELOCK"

    const-string v2, "Success dialog UnlockSetting dismissed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/simmelock/UnlockSetting$5;->this$0:Lcom/android/simmelock/UnlockSetting;

    const/4 v2, 0x0

    #setter for: Lcom/android/simmelock/UnlockSetting;->clickFlag:Z
    invoke-static {v1, v2}, Lcom/android/simmelock/UnlockSetting;->access$002(Lcom/android/simmelock/UnlockSetting;Z)Z

    .line 195
    if-eqz p1, :cond_0

    .line 196
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/simmelock/UnlockSetting$5;->this$0:Lcom/android/simmelock/UnlockSetting;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 202
    const-string v1, "SIMMELOCK"

    const-string v2, "Success dialog dismissed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SIMMELOCK"

    const-string v2, "Catch IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
