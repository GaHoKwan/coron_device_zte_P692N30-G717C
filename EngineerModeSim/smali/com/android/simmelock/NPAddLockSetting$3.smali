.class Lcom/android/simmelock/NPAddLockSetting$3;
.super Ljava/lang/Object;
.source "NPAddLockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/NPAddLockSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/NPAddLockSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/NPAddLockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/simmelock/NPAddLockSetting$3;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/simmelock/NPAddLockSetting$3;->this$0:Lcom/android/simmelock/NPAddLockSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    return-void
.end method
