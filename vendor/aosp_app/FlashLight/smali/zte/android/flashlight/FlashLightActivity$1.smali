.class Lzte/android/flashlight/FlashLightActivity$1;
.super Ljava/lang/Object;
.source "FlashLightActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/android/flashlight/FlashLightActivity;
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
    .line 89
    iput-object p1, p0, Lzte/android/flashlight/FlashLightActivity$1;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 91
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity$1;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-virtual {v0}, Lzte/android/flashlight/FlashLightActivity;->finish()V

    .line 92
    return-void
.end method
