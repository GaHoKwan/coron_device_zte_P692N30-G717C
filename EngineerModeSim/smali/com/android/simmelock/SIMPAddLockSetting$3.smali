.class Lcom/android/simmelock/SIMPAddLockSetting$3;
.super Ljava/lang/Object;
.source "SIMPAddLockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/SIMPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/SIMPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/SIMPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/simmelock/SIMPAddLockSetting$3;->this$0:Lcom/android/simmelock/SIMPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/simmelock/SIMPAddLockSetting$3;->this$0:Lcom/android/simmelock/SIMPAddLockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 168
    return-void
.end method
