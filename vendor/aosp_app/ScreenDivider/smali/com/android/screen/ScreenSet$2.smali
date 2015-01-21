.class Lcom/android/screen/ScreenSet$2;
.super Ljava/lang/Object;
.source "ScreenSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/screen/ScreenSet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screen/ScreenSet;


# direct methods
.method constructor <init>(Lcom/android/screen/ScreenSet;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/screen/ScreenSet$2;->this$0:Lcom/android/screen/ScreenSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/screen/ScreenSet$2;->this$0:Lcom/android/screen/ScreenSet;

    const-class v2, Lcom/android/screen/FaqInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/screen/ScreenSet$2;->this$0:Lcom/android/screen/ScreenSet;

    invoke-virtual {v1, v0}, Lcom/android/screen/ScreenSet;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
