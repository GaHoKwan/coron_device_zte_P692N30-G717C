.class Lcom/hf/utils/Util$1;
.super Landroid/os/AsyncTask;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/utils/Util;->setRootViewBackground(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/utils/Util$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/hf/utils/Util$1;->val$view:Landroid/view/View;

    .line 505
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 510
    iget-object v2, p0, Lcom/hf/utils/Util$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 511
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "preference_background_index"

    iget-object v3, p0, Lcom/hf/utils/Util$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/hf/utils/Util;->getDefaultBgIndex(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 512
    .local v1, selected:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 516
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 517
    .local v1, selected:I
    const/4 v0, 0x0

    .line 518
    .local v0, id:I
    packed-switch v1, :pswitch_data_0

    .line 535
    const v0, 0x7f02003c

    .line 539
    :goto_0
    iget-object v2, p0, Lcom/hf/utils/Util$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 540
    return-void

    .line 520
    :pswitch_0
    const v0, 0x7f02003c

    .line 521
    goto :goto_0

    .line 523
    :pswitch_1
    const v0, 0x7f02003d

    .line 524
    goto :goto_0

    .line 526
    :pswitch_2
    const v0, 0x7f02003e

    .line 527
    goto :goto_0

    .line 529
    :pswitch_3
    const v0, 0x7f02003f

    .line 530
    goto :goto_0

    .line 532
    :pswitch_4
    const v0, 0x7f020006

    .line 533
    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
