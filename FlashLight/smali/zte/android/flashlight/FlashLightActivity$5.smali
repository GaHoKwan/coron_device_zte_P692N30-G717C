.class Lzte/android/flashlight/FlashLightActivity$5;
.super Ljava/lang/Object;
.source "FlashLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/android/flashlight/FlashLightActivity;->initFristTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashLightActivity;


# direct methods
.method constructor <init>(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lzte/android/flashlight/FlashLightActivity$5;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity$5;->this$0:Lzte/android/flashlight/FlashLightActivity;

    const-class v2, Lzte/android/flashlight/FlashSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lzte/android/flashlight/FlashLightActivity$5;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-virtual {v1, v0}, Lzte/android/flashlight/FlashLightActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method
