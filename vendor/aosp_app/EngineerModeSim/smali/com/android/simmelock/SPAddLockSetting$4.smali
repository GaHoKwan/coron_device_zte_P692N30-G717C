.class Lcom/android/simmelock/SPAddLockSetting$4;
.super Ljava/lang/Object;
.source "SPAddLockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/SPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/SPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/SPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/simmelock/SPAddLockSetting$4;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting$4;->this$0:Lcom/android/simmelock/SPAddLockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 219
    return-void
.end method
